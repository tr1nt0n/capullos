import abjad
import baca
import evans
import trinton
import itertools
from abjadext import rmakers
from capullos import library
from capullos import rhythm
from capullos import pitch

score = library.capullos_score(
    [
        (6, 8),
        (6, 8),
        (6, 8),
        (6, 8),
        (6, 8),
        (4, 16),
        (6, 8),
        (6, 8),
        (6, 8),
        (6, 8),
        (6, 8),
        (6, 8),
        (6, 8),
        (6, 8),
        (6, 8),
        (6, 8),
    ]
)

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(rhythm.punctuation_rhythm(extra_counts=[-1])),
    # evans.RhythmHandler(evans.talea(rhythm.logistic_map_sequence(0), 16, extra_counts=[-1])),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(["g''''"]),
    trinton.ottava_command(octave=2, selector=trinton.select_leaves_by_index([0, -1])),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ffff"), abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3,)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.punctuation_rhythm()),
        direction=abjad.DOWN,
        voice_name=r"unprolated voice 1",
        temp_name=r"temp 1",
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(["g''''"]),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["unprolated voice 1"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.talea([1], 16)),
    evans.PitchHandler(["g'"]),
    pitch.sieve_transposition(index=3),
    trinton.octavation(selector=trinton.select_leaves_by_index([0, 1]), octave=-1),
    trinton.octavation(selector=trinton.select_leaves_by_index([-1]), octave=1),
    abjad.beam,
    abjad.slur,
    trinton.vertical_accidentals(selector=trinton.pleaves(), direction=abjad.DOWN),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(
                [
                    1,
                ],
                32,
            ),
        ),
        direction=abjad.UP,
        voice_name=r"primary voice",
        temp_name=r"temp",
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.PitchHandler(["g'"]),
    pitch.sieve_transposition(index=7),
    trinton.octavation(selector=trinton.select_leaves_by_index([4]), octave=1),
    abjad.beam,
    abjad.slur,
    trinton.vertical_accidentals(selector=trinton.pleaves(), direction=abjad.UP),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 4, 4, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["primary voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 16)),
    evans.RhythmHandler(rhythm.punctuation_rhythm(stage=2, index=9, extra_counts=[-1])),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(["g''''"]),
    trinton.ottava_command(octave=2, selector=trinton.select_leaves_by_index([0, -1])),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=2, right=1),
        ],
        selector=trinton.select_leaves_by_index(
            [
                13,
                15,
                17,
                30,
                49,
                51,
                53,
                62,
            ],
            pitched=True,
        ),
    ),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3,)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 16)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.punctuation_rhythm(index=10)),
        direction=abjad.DOWN,
        voice_name=r"unprolated voice 2",
        temp_name=r"temp 2",
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 16)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index([0, 1, 2, 3, 4, 5, 6])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\voiceTwo", site="before"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["unprolated voice 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 16)),
    evans.RhythmHandler(rhythm.punctuation_rhythm(index=1, stage=2)),
    voice=score["unprolated voice 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 16)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(["g''''"]),
    trinton.pitch_with_selector_command(
        pitch_list=[["g''''", "af'''"]],
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 16)), abjad.Duration((1, 32))],
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Rest.transparent = ##t",
                    r"\override Voice.Dots.transparent = ##t",
                ],
                site="before",
            ),
            abjad.LilyPondLiteral(
                [
                    r"\revert Rest.transparent",
                    r"\revert Voice.Dots.transparent",
                ],
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 2]),
    ),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True, pitched=True)),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartBeam(),
                abjad.StopBeam(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [
                3,
                4,
                7,
                8,
                10,
                12,
                14,
                19,
                20,
                24,
                26,
                29,
                31,
                32,
                34,
                35,
                37,
                -1,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=3),
        ],
        selector=trinton.select_leaves_by_index(
            [
                15,
                17,
                23,
                27,
            ],
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 16)), abjad.Duration((1, 32))],
            preselector=trinton.logical_ties(pitched=True),
            first=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.Dynamic("ffff"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("ffff"),
            abjad.Dynamic("ffff"),
            abjad.Dynamic("p"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                4,
                8,
                10,
                12,
                15,
                17,
                20,
            ],
            first=True,
            pitched=True,
        ),
        direction=abjad.DOWN,
    ),
    voice=score["unprolated voice 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 16)),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 16)), abjad.Duration((1, 32))],
            preselector=trinton.logical_ties(pitched=True),
            first=True,
        ),
    ),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True, pitched=True)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                6,
                13,
                13,
                15,
                19,
                35,
            ],
            first=True,
            pitched=True,
        ),
        direction=abjad.DOWN,
    ),
    voice=score["piano 1 voice temp 2"],
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(evans.talea([-3], 8, treat_tuplets=False)),
    trinton.invisible_rests(),
    rmakers.trivialize,
    rmakers.extract_trivial,
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string=[
                    "Press styrofoam as firmly",
                    "against the strings as possible.",
                    "Gradually lighten pressure.",
                ],
                tweaks=None,
                column="\hspace #0.5 \column",
                font_name="Bodoni72 Book",
                fontsize=2,
                string_only=True,
            ),
            trinton.boxed_markup(
                string=["Hand off styrofoam,", "leave styrofoam", "on strings."],
                tweaks=None,
                column="\column",
                font_name="Bodoni72 Book",
                fontsize=2,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=8,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        end_hook_right_padding=1.5,
        tag=None,
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.tuplet([(1, 1, 1)])),
    evans.PitchHandler(["g"]),
    pitch.sieve_transposition(index=0),
    abjad.beam,
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartPianoPedal(),
            abjad.StopPianoPedal(),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 16)),
    evans.RhythmHandler(rhythm.punctuation_rhythm(stage=3, index=9, extra_counts=[-1])),
    trinton.rewrite_meter_command(),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Rest.transparent = ##t",
                    r"\once \override Voice.Dots.transparent = ##t",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([9, 19, 20]),
    ),
    evans.PitchHandler(
        [
            ["a,,,,", "b,,,,", "c,,,", "d,,,", "e,,,", "f,,,", "g,,,", "a,,,"],
        ],
    ),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=trinton.pleaves(),
    ),
    library.connect_notes_to_upper_staff(
        selector=trinton.select_leaves_by_index([0, 1, 2, 3, 4, 5], pitched=True),
        stem_lengths=42,
    ),
    library.connect_notes_to_upper_staff(
        selector=trinton.select_leaves_by_index(
            [6, 7, 8, 9, 10, 11, 12, 13, 14], pitched=True
        ),
        stem_lengths=25,
    ),
    library.connect_notes_to_upper_staff(
        selector=trinton.select_leaves_by_index(
            [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32],
            pitched=True,
        ),
        stem_lengths=33,
    ),
    trinton.invisible_tuplet_brackets(),
    trinton.invisible_rests(),
    trinton.ottava_command(
        octave=-2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Staff.OttavaBracket.staff-padding = 7",
                    r"\once \override DynamicText.X-extent = #'(-0.5 . -0.5)",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ffff")],
        selector=trinton.patterned_tie_index_selector(
            [0], 3, first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    voice=score["piano 3 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3,)),
    # beam_meter=True
)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.InstrumentName(
                context="GrandStaff",
                markup=abjad.Markup(
                    '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Piano }'
                ),
            ),
            library.return_metronome_markup(
                note_value="dotted quarter",
                tempo=40,
                padding=14,
                metric_modulation=None,
                site="after",
                hspace=None,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["piano 1 voice"],
)

for measure in [
    1,
    2,
    3,
    5,
    6,
    7,
    9,
    10,
    11,
    13,
    14,
    15,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(r"\noBreak", site="absolute_after"),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measure in [
    4,
    8,
    12,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(r"\break", site="absolute_after"),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measure in [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(r"\noPageBreak", site="absolute_after"),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measure in [
    16,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(r"\pageBreak", site="absolute_after"),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

# beautification

# library.handle_accidentals(score=score, force_accidentals=False)

library.clean_time_signatures(score=score)

trinton.remove_redundant_time_signatures(score=score)

# library.reset_line_positions(score=score, voice_names=["piano 5 voice"])

# persist

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/capullos/capullos/sections/01",
    build_path="/Users/trintonprater/scores/capullos/capullos/build",
    segment_name="01",
    includes=[
        "/Users/trintonprater/scores/capullos/capullos/build/capullos-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
