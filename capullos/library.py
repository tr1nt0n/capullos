import abjad
import baca
import evans
import fractions
import itertools
import trinton
import random
import quicktions
from itertools import cycle
from capullos import pitch
from capullos import rhythm
from abjadext import rmakers

# score


def capullos_score(time_signatures):
    score = trinton.make_empty_score(
        instruments=[
            abjad.Piano(),
            abjad.Piano(),
            abjad.Piano(),
            abjad.Piano(),
        ],
        groups=[
            4,
        ],
        staff_types=[
            [
                "Staff",
                "timeSignatureStaff",
                "leftHandStaff",
                "thirdStaff",
            ],
        ],
        time_signatures=time_signatures,
        filler=abjad.Skip,
    )

    return score


# immutables

change_to_rh = eval(
    """abjad.LilyPondLiteral(
        r'\change Staff = "piano 1 staff"', site="before"
    )"""
)

change_to_lh = eval(
    """abjad.LilyPondLiteral(
        r'\change Staff = "piano 3 staff"', site="before"
    )"""
)

revert_to_rh = eval(
    """abjad.LilyPondLiteral(
        r'\change Staff = "piano 1 staff"', site="absolute_after"
    )"""
)

revert_to_lh = eval(
    """abjad.LilyPondLiteral(
        r'\change Staff = "piano 3 staff"', site="absolute_after"
    )"""
)

# notation tools


def connect_notes_to_upper_staff(selector=trinton.pleaves(), stem_lengths=28):
    def connect_notes(argument):
        selections = selector(argument)

        opening_list = [
            r"\override Flag.stencil = ##f",
            r"\override Staff.Stem.direction = #UP",
        ]

        closing_list = [
            r"\revert Staff.Flag.stencil",
            r"\revert Staff.Stem.direction",
        ]

        if not isinstance(stem_lengths, list):
            for leaf in abjad.select.leaves(selections, pitched=True):
                abjad.attach(
                    abjad.LilyPondLiteral(
                        [
                            r"\once \override Stem.cross-staff = ##t",
                            r"\once \override Stem.Y-extent = #'(0 . 0)",
                            rf"\once \override Stem.details.lengths = #'({stem_lengths})",
                            r"\once \override Flag.cross-staff = ##t",
                            r"\once \override Flag.Y-extent = #'(0 . 0)",
                        ],
                        site="before",
                    ),
                    leaf,
                )

        else:
            for leaf, stem_length in zip(
                abjad.select.leaves(selections, pitched=True),
                stem_lengths,
            ):
                literal = abjad.LilyPondLiteral(
                    [
                        r"\once \override Stem.cross-staff = ##t",
                        r"\once \override Stem.Y-extent = #'(0 . 0)",
                        rf"\once \override Stem.details.lengths = #'({stem_length})",
                        r"\once \override Flag.cross-staff = ##t",
                        r"\once \override Flag.Y-extent = #'(0 . 0)",
                    ],
                    site="before",
                )
                abjad.attach(literal, leaf)

        opening_literal = abjad.LilyPondLiteral(opening_list, site="before")

        closing_literal = abjad.LilyPondLiteral(closing_list, site="absolute_after")

        abjad.attach(opening_literal, abjad.select.leaf(selections, 0))
        abjad.attach(closing_literal, abjad.select.leaf(selections, -1))

    return connect_notes


def clean_time_signatures(score):
    for leaf in abjad.select.leaves(score["Global Context"]):
        if abjad.get.has_indicator(leaf, abjad.TimeSignature):
            time_signature = abjad.get.indicator(leaf, abjad.TimeSignature)
            numerator = time_signature.numerator
            denominator = time_signature.denominator

            if numerator > 9 or denominator > 9:
                abjad.attach(
                    abjad.LilyPondLiteral(
                        [
                            r"\once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)"
                        ],
                        site="before",
                    ),
                    leaf,
                )


def handle_accidentals(score, force_accidentals=True):
    pties = abjad.select.logical_ties(score, pitched=True)

    ficta_ties = []
    chords = []
    post_graces = []

    for tie in pties:
        previous_leaf = abjad.select.with_previous_leaf(tie)[0]
        tie_duration = abjad.get.duration(tie)
        previous_duration = abjad.get.duration(previous_leaf)
        if isinstance(tie[0], abjad.Chord):
            chords.append(tie)
            pass
        if previous_duration < abjad.Duration(1, 16):
            if isinstance(tie[0], abjad.Chord):
                pass
            else:
                ficta_ties.append(tie)
                pass
        previous_parentage = abjad.get.parentage(previous_leaf).parent
        if (
            isinstance(previous_parentage, abjad.BeforeGraceContainer)
            or isinstance(previous_parentage, abjad.OnBeatGraceContainer)
            or isinstance(previous_parentage, abjad.AfterGraceContainer)
        ):
            tie_parentage = abjad.get.parentage(tie[0]).parent
            if (
                isinstance(tie_parentage, abjad.BeforeGraceContainer)
                or isinstance(tie_parentage, abjad.OnBeatGraceContainer)
                or isinstance(tie_parentage, abjad.AfterGraceContainer)
            ):
                pass
            else:
                if isinstance(tie[0], abjad.Chord):
                    pass
                else:
                    post_graces.append(tie)

    for tie in post_graces:
        abjad.attach(
            abjad.LilyPondLiteral(r"\revert Voice.Accidental.X-extent", site="before"),
            tie[0],
        )
        abjad.attach(
            abjad.LilyPondLiteral(
                r"\override Voice.Accidental.X-extent = ##f", site="absolute_after"
            ),
            tie[-1],
        )

    for chord in chords:
        abjad.attach(
            abjad.LilyPondLiteral(r"\revert Voice.Accidental.X-extent", site="before"),
            chord[0],
        )
        abjad.attach(
            abjad.LilyPondLiteral(
                r"\override Voice.Accidental.X-extent = ##f", site="absolute_after"
            ),
            chord[-1],
        )

        if force_accidentals is True:
            for head in chord[0].note_heads:
                head.is_forced = True

    ficta_ties = abjad.select.group_by_contiguity(ficta_ties)

    for group in ficta_ties:
        first_tie = group[0]
        last_tie = group[-1]

        abjad.attach(
            abjad.LilyPondLiteral(
                r"\override Voice.Accidental.stencil = ##f", site="before"
            ),
            first_tie[0],
        )

        abjad.attach(
            abjad.LilyPondLiteral(
                r"\revert Voice.Accidental.stencil", site="absolute_after"
            ),
            last_tie[-1],
        )

        for tie in group:
            previous_leaf = abjad.select.with_previous_leaf(tie)[0]
            if (
                isinstance(previous_leaf, abjad.Rest)
                or isinstance(
                    previous_leaf,
                    abjad.Chord,
                )
                or isinstance(previous_leaf, abjad.Skip)
            ):
                previous_leaf_pitch = abjad.NamedPitch("bs,,,,,,,,,,,,,,,,")
            else:
                previous_leaf_pitch = previous_leaf.written_pitch
            first_leaf = tie[0]
            first_leaf_pitch = first_leaf.written_pitch
            accidental = first_leaf_pitch.accidental
            accidental_name = accidental.name
            clef = abjad.get.effective(first_leaf, abjad.Clef)

            if (
                clef == None
                or clef.name == "percussion"
                or first_leaf_pitch.name == previous_leaf_pitch.name
            ):
                pass

            else:
                abjad.attach(
                    abjad.Articulation(f"{accidental_name}-articulation"), first_leaf
                )


# markups


def return_metronome_markup(
    note_value,
    tempo,
    padding,
    metric_modulation=None,
    site="after",
    hspace=None,
    string_only=False,
):
    _note_value_to_number_pair = {
        "sixteenth": (4, 0),
        "eighth": (3, 0),
        "dotted eighth": (3, 1),
        "quarter": (2, 0),
        "dotted quarter": (2, 1),
        "half": (1, 0),
        "dotted half": (1, 1),
        "whole": (0, 0),
    }

    if isinstance(tempo, tuple):
        tempo_markup = f"""\\abjad-metronome-mark-mixed-number-markup #{_note_value_to_number_pair[note_value][0]} #{_note_value_to_number_pair[note_value][-1]} #2 #" {tempo[0]} " #" {tempo[1]} " #" {tempo[2]} " """

    else:
        tempo_markup = f"""\\abjad-metronome-mark-markup #{_note_value_to_number_pair[note_value][0]} #{_note_value_to_number_pair[note_value][-1]} #2 #" {tempo} " """

    if metric_modulation is None:
        literal_strings = [
            r"^ \markup {",
            rf"  \raise #{padding} \with-dimensions-from \null",
            r"  \override #'(font-size . 5.5)",
            r"  \concat {",
            f"      {tempo_markup}",
            r"  }",
            r"}",
        ]

        if hspace is not None:
            literal_strings.insert(1, rf"\hspace #{hspace}")

        mark = abjad.LilyPondLiteral(
            literal_strings,
            site=site,
        )

    else:
        literal_strings = [
            r"^ \markup {",
            r"  \hspace #-9",
            rf"  \raise #{padding} \with-dimensions-from \null",
            r"  \override #'(font-size . 5.5)",
            r"  \concat {",
            f"  [{abjad.lilypond(metric_modulation)[8:]}]",
            r"      \hspace #1",
            f"      {tempo_markup}",
            r"  }",
            r"}",
        ]

        mark = abjad.LilyPondLiteral(
            literal_strings,
            site=site,
        )

    if string_only is True:
        mark = """\markup {"""

        for single_string in literal_strings:
            if single_string != r"^ \markup {" and single_string != r"  \hspace #-9":
                mark += "\n"
                mark += single_string

    return mark
