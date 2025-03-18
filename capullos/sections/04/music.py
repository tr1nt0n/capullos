import abjad
import baca
import evans
import trinton
import itertools
from abjadext import rmakers
from capullos import library
from capullos import rhythm
from capullos import pitch
from capullos import ts

section_ts = ts.helianthated_ts[13:26]

section_ts.extend([(3, 4), (4, 4), (5, 4), (6, 4), (7, 4), (1, 4)])

score = library.capullos_score(section_ts)

# piano rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 13)),
    evans.RhythmHandler(
        rhythm.gesture_rhythms(
            stage=2,
            index=0,
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(["d'"]),
    pitch.sieve_transposition(index=26),
    trinton.respell_accidentals_command(selector=trinton.pleaves()),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True, pitched=True, grace=False)),
    trinton.octavation(
        octave=4,
        selector=trinton.select_logical_ties_by_index(
            [
                65,
            ],
            pitched=True,
        ),
    ),
    trinton.octavation(
        octave=3,
        selector=trinton.select_logical_ties_by_index(
            [
                25,
                60,
                64,
                66,
                67,
                69,
                70,
                85,
                89,
            ],
            pitched=True,
        ),
    ),
    trinton.octavation(
        octave=2,
        selector=trinton.select_logical_ties_by_index(
            [
                15,
                17,
                24,
                26,
                27,
                45,
                55,
                61,
                62,
                68,
                71,
                72,
                80,
                84,
                86,
                87,
                88,
            ],
            pitched=True,
        ),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                5,
                6,
                9,
                10,
                14,
                16,
                20,
                21,
                22,
                29,
                30,
                35,
                40,
                41,
                42,
                46,
                47,
                49,
                50,
                54,
                56,
                57,
                59,
                63,
                81,
                82,
            ],
            pitched=True,
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [
                3,
                4,
                18,
                32,
                33,
                38,
                78,
            ],
            pitched=True,
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["g''''", "g'''"],
        selector=trinton.select_logical_ties_by_index(
            [90, 91, 92, 93, 94, 95], pitched=True, grace=False
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            "g''''",
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                96,
                97,
                98,
                99,
                100,
                101,
                102,
                103,
                104,
                105,
                106,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    pitch.make_sieve_chords(
        index=0,
        selector=trinton.select_logical_ties_by_index(
            [
                7,
                15,
                16,
                17,
                60,
                70,
                75,
                86,
                96,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.octavation(
        octave=2,
        selector=trinton.notehead_selector(
            chord_indices=[
                6,
            ],
            head_indices_lists=[[0]],
        ),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.notehead_selector(
            chord_indices=[
                0,
                1,
                2,
                5,
            ],
            head_indices_lists=[
                [0, 1],
                [0],
                [0, 1],
                [0, 1, 2, 3],
            ],
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.notehead_selector(
            chord_indices=[
                3,
                6,
                7,
                8,
            ],
            head_indices_lists=[
                [
                    -2,
                    -3,
                ],
                [-1],
                [2, 3],
                [2, 3],
            ],
        ),
    ),
    trinton.octavation(
        octave=-2,
        selector=trinton.notehead_selector(
            chord_indices=[
                1,
                4,
                5,
                9,
            ],
            head_indices_lists=[
                [
                    3,
                ],
                [-1, -2],
                [
                    -1,
                ],
                [-2],
            ],
        ),
    ),
    trinton.octavation(
        octave=-3,
        selector=trinton.notehead_selector(
            chord_indices=[
                1,
                3,
                7,
                8,
            ],
            head_indices_lists=[
                [
                    4,
                ],
                [-1],
                [4],
                [4],
            ],
        ),
    ),
    trinton.octavation(
        octave=-4,
        selector=trinton.notehead_selector(
            chord_indices=[
                9,
            ],
            head_indices_lists=[
                [-1],
            ],
        ),
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                3,
                6,
                8,
                16,
                20,
                34,
                35,
                37,
                38,
                52,
                53,
                61,
                63,
                71,
                73,
                76,
                78,
                87,
                89,
                94,
                97,
                100,
                102,
                111,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(
                left=3,
                right=1,
            ),
            abjad.BeamCount(
                left=1,
                right=2,
            ),
            abjad.BeamCount(
                left=2,
                right=1,
            ),
            abjad.BeamCount(
                left=1,
                right=3,
            ),
            abjad.BeamCount(
                left=3,
                right=1,
            ),
            abjad.BeamCount(
                left=1,
                right=3,
            ),
            abjad.BeamCount(
                left=2,
                right=1,
            ),
            abjad.BeamCount(
                left=1,
                right=2,
            ),
            abjad.BeamCount(
                left=3,
                right=1,
            ),
            abjad.BeamCount(
                left=1,
                right=2,
            ),
            abjad.BeamCount(
                left=3,
                right=1,
            ),
            abjad.BeamCount(
                left=1,
                right=2,
            ),
            abjad.BeamCount(
                left=2,
                right=1,
            ),
            abjad.BeamCount(
                left=1,
                right=2,
            ),
            abjad.BeamCount(
                left=3,
                right=1,
            ),
            abjad.BeamCount(
                left=1,
                right=2,
            ),
            abjad.BeamCount(
                left=2,
                right=1,
            ),
            abjad.BeamCount(
                left=3,
                right=0,
            ),
            abjad.BeamCount(
                left=2,
                right=1,
            ),
            abjad.BeamCount(
                left=1,
                right=2,
            ),
            abjad.BeamCount(
                left=2,
                right=1,
            ),
            abjad.BeamCount(
                left=1,
                right=2,
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                12,
                13,
                14,
                15,
                30,
                31,
                41,
                42,
                49,
                50,
                57,
                58,
                66,
                67,
                91,
                92,
                93,
                94,
                107,
                108,
                98,
                99,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.force_accidentals_command(
        selector=abjad.select.chords,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [
                8,
                19,
                90,
                94,
            ],
            pitched=True,
            grace=False,
        ),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                7,
                20,
                34,
                35,
                37,
                38,
                52,
                53,
                62,
                63,
                72,
                73,
                77,
                78,
                89,
                95,
                101,
            ],
            pitched=True,
            grace=False,
        ),
        direction=abjad.DOWN,
    ),
    trinton.vertical_accidentals(
        selector=trinton.select_logical_ties_by_index(
            [
                20,
                22,
                26,
                29,
                30,
                31,
                32,
                42,
                48,
                50,
                51,
                53,
                54,
                55,
                63,
                65,
                67,
                68,
                69,
            ],
            first=True,
            pitched=True,
            grace=False,
        )
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index(
            [
                96,
                97,
                98,
                99,
                100,
                101,
                102,
                103,
                104,
                105,
                106,
            ],
            pitched=True,
            first=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #4", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #4", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #5", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #6", site="before"
            ),
        ],
        selector=trinton.select_tuplets_by_index([2, 4, 5, 7]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Accidental.X-extent = #'(-0.75 . 0.5)", site="before"
            ),
        ],
        selector=abjad.select.chords,
    ),
    trinton.ottava_command(
        octave=2,
        selector=trinton.select_logical_ties_by_index(
            [61, 73, 83, -1], pitched=True, first=True, grace=False
        ),
    ),
    trinton.tremolo_command(
        selector=trinton.select_logical_ties_by_index(
            [
                15,
                16,
                17,
                70,
                86,
            ],
            pitched=True,
            grace=False,
        )
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("f"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("fp"),
            abjad.StartHairpin("<"),
            trinton.make_custom_dynamic("fffp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            trinton.make_custom_dynamic("s. ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            trinton.make_custom_dynamic("sffz"),
            trinton.make_custom_dynamic("s. p"),
            trinton.make_custom_dynamic("s. mf"),
            abjad.StartHairpin("<"),
            abjad.StartHairpin(">"),
            abjad.StopHairpin(),
            abjad.StartHairpin("<"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                7,
                7,
                8,
                11,
                15,
                15,
                18,
                18,
                27,
                27,
                33,
                33,
                36,
                36,
                48,
                48,
                51,
                52,
                60,
                60,
                61,
                61,
                67,
                67,
                70,
                70,
                71,
                71,
                75,
                76,
                85,
                86,
                87,
                90,
                92,
                94,
                96,
                97,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio()],
        selector=abjad.select.chords,
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup {
                \hspace #1.25
                \override #'(font-size . 4.5)
                \override #'(font-name . "ekmelos")
                \override #'(whiteout-style . "outline")
                \override #'(whiteout . 1)
                \override #'(layer . 20)
                {
                    \char ##xe220
                }
            }""",
            r"""\markup {
                \hspace #0.6
                \override #'(font-size . 4.5)
                \override #'(font-name . "ekmelos")
                \override #'(whiteout-style . "outline")
                \override #'(whiteout . 1)
                \override #'(layer . 20)
                {
                    \char ##xe222
                }
            }""",
        ],
        selector=trinton.select_logical_ties_by_index([7, 8], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=0,
        right_padding=-5,
        direction=None,
        full_string=True,
        command="One",
        tag=None,
        tweaks=[
            abjad.Tweak(r"- \tweak Y-extent ##f"),
            abjad.Tweak(r"- \tweak Y-offset -6"),
        ],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup {
                \hspace #1.1
                \override #'(font-size . 4.5)
                \override #'(font-name . "ekmelos")
                \override #'(whiteout-style . "outline")
                \override #'(whiteout . 1)
                \override #'(layer . 20)
                {
                    \char ##xe222
                }
            }""",
            r"""\markup {
                \hspace #0.6
                \override #'(font-size . 4.5)
                \override #'(font-name . "ekmelos")
                \override #'(whiteout-style . "outline")
                \override #'(whiteout . 1)
                \override #'(layer . 20)
                {
                    \char ##xe220
                }
            }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [60, 61], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=0,
        right_padding=-6,
        direction=None,
        full_string=True,
        command="One",
        tag=None,
        tweaks=[
            abjad.Tweak(r"- \tweak Y-extent ##f"),
            abjad.Tweak(r"- \tweak Y-offset -1.5"),
        ],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup {
                \hspace #1.1
                \override #'(font-size . 4.5)
                \override #'(font-name . "ekmelos")
                \override #'(whiteout-style . "outline")
                \override #'(whiteout . 1)
                \override #'(layer . 20)
                {
                    \char ##xe221
                }
            }""",
            r"""\markup {
                \hspace #0.6
                \override #'(font-size . 4.5)
                \override #'(font-name . "ekmelos")
                \override #'(whiteout-style . "outline")
                \override #'(whiteout . 1)
                \override #'(layer . 20)
                {
                    \char ##xe220
                }
            }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [75, 76], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=0,
        right_padding=-5,
        direction=None,
        full_string=True,
        command="One",
        tag=None,
        tweaks=[
            abjad.Tweak(r"- \tweak Y-extent ##f"),
            abjad.Tweak(r"- \tweak Y-offset 5"),
        ],
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14,)),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ff")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["piano 1 voice"],
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.tuplet([(-6, 1, 1, 4)])),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.tuplet([(1, 1, 1)])),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 9)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (-1,),
                (1, 1, 1, 1, 1, 1),
                (
                    1,
                    1,
                    1,
                    1,
                ),
                (-1,),
                (1, 1, 1, 1),
                (1, 1, 1),
                (1, 1, 1, 1),
                (1, 1, 1, 1),
                (1, 1, 1),
                (1,),
                (1, 1, 1, 1),
                (1, 1, 1, 1, 1, 1, 1, 1),
                (1,),
                (
                    1,
                    1,
                    1,
                    1,
                    4,
                    4,
                ),
                (1, 1, 1, 1),
                (-1,),
            ]
        )
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.accelerando(
                [(1, 20), (1, 8), (1, 32)],
                treat_tuplets=False,
            )
        ),
        selector=trinton.select_leaves_by_index([47], pitched=True),
        preprolated=True,
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    voice=score["piano 3 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            2,
            1,
            1,
            2,
            2,
            1,
            1,
            1,
            1,
            1,
            1,
            2,
            2,
            4,
            4,
            100,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (1, 1, 1, 1),
                (1, 1, 1),
                (1, 1, 1, 1),
                (1,),
                (1, 1, 1),
                (-1, 1, 1, 1, 1, 2, 1),
            ]
        )
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["piano 3 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((2, 2, 2, 3, 3, 4)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 12)),
    evans.PitchHandler(["af"]),
    pitch.sieve_transposition(index=25),
    trinton.respell_accidentals_command(selector=trinton.pleaves()),
    trinton.pitch_with_selector_command(
        pitch_list=["g'", "g''"],
        selector=trinton.select_logical_ties_by_index(
            [76, 77, 78, 79, 80, 81], pitched=True
        ),
    ),
    trinton.octavation(
        octave=3,
        selector=trinton.select_logical_ties_by_index(
            [
                56,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.octavation(
        octave=2,
        selector=trinton.select_logical_ties_by_index(
            [
                6,
                51,
                57,
                58,
                68,
                71,
                73,
                75,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [
                3,
                7,
                11,
                12,
                16,
                36,
                48,
                50,
                52,
                55,
                66,
                70,
                72,
                74,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [
                2,
                4,
                9,
                14,
                17,
                18,
                20,
                22,
                24,
                25,
                30,
                34,
                38,
                39,
                42,
                43,
                46,
                47,
                63,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.octavation(
        octave=-2,
        selector=trinton.select_logical_ties_by_index(
            [
                19,
                29,
                44,
                45,
                64,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    pitch.make_sieve_chords(
        hand="lh",
        index=1,
        selector=trinton.select_logical_ties_by_index(
            [2, 3, 4, 5, 47, 52, 72, 80], pitched=True
        ),
    ),
    trinton.octavation(
        octave=-2,
        selector=trinton.notehead_selector(
            chord_indices=[
                1,
                3,
            ],
            head_indices_lists=[[-1, -2], [-1]],
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.notehead_selector(
            chord_indices=[
                1,
                3,
                6,
                7,
            ],
            head_indices_lists=[
                [0],
                [-2],
                [-1, -2],
                [-1, -2],
            ],
        ),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.notehead_selector(
            chord_indices=[
                4,
            ],
            head_indices_lists=[
                [
                    0,
                    1,
                ],
            ],
        ),
    ),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True, pitched=True, grace=False)),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                16,
                68,
                76,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_logical_ties_by_index(
            [
                3,
                65,
                73,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.ottava_command(
        octave=2,
        selector=trinton.select_logical_ties_by_index(
            [
                48,
                59,
                68,
                81,
            ],
            pitched=True,
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index([80], first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio()],
        selector=abjad.select.chords,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Accidental.X-extent = #'(-0.75 . 0.5)", site="before"
            ),
        ],
        selector=abjad.select.chords,
    ),
    trinton.force_accidentals_command(
        selector=abjad.select.chords,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                6,
                15,
                16,
                33,
                34,
                46,
                48,
                51,
                53,
                56,
                57,
                60,
                61,
                71,
                73,
                76,
                77,
                83,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index(
            [
                11,
                12,
                19,
                20,
                22,
                23,
                26,
                27,
                30,
                31,
                38,
                39,
                79,
                80,
            ],
            pitched=True,
        ),
    ),
    library.left_beam(selector=trinton.select_tuplets_by_index([5])),
    trinton.vertical_accidentals(
        selector=trinton.select_leaves_by_index(
            [
                7,
                8,
                9,
                11,
                12,
                13,
                14,
                15,
                21,
                24,
                25,
                28,
                29,
                37,
                38,
                40,
                42,
            ],
            pitched=True,
            grace=False,
        )
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
                6,
                15,
                48,
                56,
                57,
                60,
                61,
                73,
                77,
                83,
            ],
            pitched=True,
            grace=False,
        ),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [
                3,
                5,
                16,
                33,
                34,
                47,
                74,
                76,
            ],
            pitched=True,
            grace=False,
        ),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #4", site="before"
            ),
        ],
        selector=trinton.select_tuplets_by_index(
            [
                1,
            ]
        ),
    ),
    trinton.aftergrace_command(
        selector=trinton.select_leaves_by_index([19]), invisible=True
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves,),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartPianoPedal(), abjad.StopPianoPedal()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                3,
                4,
                7,
                8,
                18,
                19,
                20,
                21,
                38,
                39,
                52,
                53,
                61,
                62,
                66,
                67,
                79,
                80,
                82,
                83,
                87,
            ]
        ),
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup {
                \hspace #1.25
                \override #'(font-size . 4.5)
                \override #'(font-name . "ekmelos")
                \override #'(whiteout-style . "outline")
                \override #'(whiteout . 1)
                \override #'(layer . 20)
                {
                    \char ##xe222
                }
            }""",
            r"""\markup {
                \hspace #0.6
                \override #'(font-size . 4.5)
                \override #'(font-name . "ekmelos")
                \override #'(whiteout-style . "outline")
                \override #'(whiteout . 1)
                \override #'(layer . 20)
                {
                    \char ##xe220
                }
            }""",
        ],
        selector=trinton.select_leaves_by_index(
            [3, 4],
        ),
        style="solid-line-with-arrow",
        padding=0,
        right_padding=-5,
        direction=None,
        full_string=True,
        command="One",
        tag=None,
        tweaks=[
            abjad.Tweak(r"- \tweak Y-extent ##f"),
            abjad.Tweak(r"- \tweak Y-offset 4"),
        ],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup {
                \hspace #1.25
                \override #'(font-size . 4.5)
                \override #'(font-name . "ekmelos")
                \override #'(whiteout-style . "outline")
                \override #'(whiteout . 1)
                \override #'(layer . 20)
                {
                    \char ##xe220
                }
            }""",
            r"""\markup {
                \hspace #0.6
                \override #'(font-size . 4.5)
                \override #'(font-name . "ekmelos")
                \override #'(whiteout-style . "outline")
                \override #'(whiteout . 1)
                \override #'(layer . 20)
                {
                    \char ##xe222
                }
            }""",
        ],
        selector=trinton.select_leaves_by_index(
            [52, 53],
        ),
        style="solid-line-with-arrow",
        padding=0,
        right_padding=-5,
        direction=None,
        full_string=True,
        command="One",
        tag=None,
        tweaks=[
            abjad.Tweak(r"- \tweak Y-extent ##f"),
            abjad.Tweak(r"- \tweak Y-offset 5"),
        ],
    ),
    trinton.tremolo_command(
        selector=trinton.select_leaves_by_index(
            [
                5,
                6,
                7,
                57,
                78,
                79,
            ]
        )
    ),
    voice=score["piano 3 voice"],
)

for measure in [14, 15, 16, 17, 18]:
    for voice_name, pitch_list, direction in zip(
        ["piano 1 voice", "piano 3 voice"],
        [
            [
                ["g''''", "af'''"],
                ["af'''", "a''"],
                ["a''", "bf'"],
                ["bf'", "b"],
                ["b", "c"],
                ["c", "df,"],
                ["df,", "d,,"],
            ],
            [
                ["a''", "bf'"],
                ["bf'", "b"],
                ["b", "c"],
                ["c", "df,"],
                ["df,", "d,,"],
                ["d,,", "ef,,,"],
                ["ef,,,"],
            ],
        ],
        [abjad.UP, abjad.DOWN],
    ):
        trinton.make_music(
            lambda _: trinton.select_target(_, (measure,)),
            evans.RhythmHandler(evans.talea([1], 4)),
            evans.PitchHandler(pitch_list),
            abjad.slur,
            trinton.ottava_command(
                octave=2, selector=trinton.select_leaves_by_index([0, 0], pitched=True)
            ),
            trinton.ottava_command(
                octave=1, selector=trinton.select_leaves_by_index([1, 1], pitched=True)
            ),
            trinton.attachment_command(
                attachments=[
                    abjad.Articulation("tenuto"),
                    abjad.Arpeggio(direction=direction),
                ],
                selector=trinton.logical_ties(pitched=True, first=True, grace=False),
            ),
            trinton.force_accidentals_command(
                selector=trinton.logical_ties(pitched=True, first=True, grace=False)
            ),
            voice=score[voice_name],
        )

    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.linear_attachment_command(
            attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        ),
        voice=score["piano 3 voice"],
    )

for voice_name in ["piano 1 voice", "piano 3 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (16,)),
        trinton.ottava_command(
            octave=-1, selector=trinton.select_leaves_by_index([-1, -1])
        ),
        voice=score[voice_name],
    )

    for measure in [17, 18]:
        trinton.make_music(
            lambda _: trinton.select_target(_, (measure,)),
            trinton.ottava_command(
                octave=-1, selector=trinton.select_leaves_by_index([4, 4])
            ),
            trinton.ottava_command(
                octave=-2, selector=trinton.select_leaves_by_index([5, -1])
            ),
            voice=score[voice_name],
        )

# globals

trinton.fermata_measures(
    score=score,
    measures=[19],
    fermata="extremely-long-fermata",
    voice_names=None,
    font_size=10,
    clef_whitespace=True,
    blank=True,
    last_measure=True,
    padding=None,
    extra_offset=2.5,
    tag=abjad.Tag("+SCORE"),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BarLine(".|:", site="before"),
            abjad.LilyPondLiteral(
                r'\tweak text "×7" \startMeasureSpanner', site="absolute_before"
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
            abjad.BarLine(":|.", site="after"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -1,
                -1,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Score.BarLine.transparent = ##f",
                    r"\override Score.BarLine.X-extent = #'(4 . 4)",
                    r"\override Score.BarLine.bar-extent = #'(-2 . 2)",
                    # r"\once \override TimeSignature.X-offset = 2.7",
                ],
                site="before",
            ),
            abjad.LilyPondLiteral(
                [
                    r"\revert Score.BarLine.X-extent",
                ],
                site="after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (19,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BarLine("|.", site="after"),
            # abjad.LilyPondLiteral(
            #     r'\revert Score.BarLine.color', site="absolute_after"
            # ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Staff.TextScript.whiteout = ##f",
                site="before",
            ),
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \fontsize #4 { \hspace #13 \column \override #'(font-name . "Bodoni72 Book Italic") { \line { February - March 2025 } \line { Iowa City, IA } } }"""
                ),
                r"- \tweak X-extent ##f",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    voice=score["piano 3 voice"],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (7,)),
#     trinton.attachment_command(
#         attachments=[abjad.BarLine(":|.", site="after")],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["Global Context"],
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (3, 8)),
#     trinton.linear_attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"""\set Score.repeatCommands = #'((volta "1 - 2"))""",
#                 site="before",
#             ),
#             abjad.LilyPondLiteral(
#                 r"""\set Score.repeatCommands = #'((volta "3"))""",
#                 site="before",
#             ),
#             abjad.LilyPondLiteral(
#                 r"""\set Score.repeatCommands = #'((volta #f))""",
#                 site="after",
#             ),
#             abjad.LilyPondLiteral(
#                 r"""\set Score.repeatCommands = #'((volta "1"))""",
#                 site="before",
#             ),
#             abjad.LilyPondLiteral(
#                 r"""\set Score.repeatCommands = #'((volta "2"))""",
#                 site="before",
#             ),
#             abjad.LilyPondLiteral(
#                 r"""\set Score.repeatCommands = #'((volta #f))""",
#                 site="after",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index(
#             [
#                 0,
#                 1,
#                 1,
#                 4,
#                 5,
#                 5,
#             ]
#         ),
#     ),
#     voice=score["Global Context"],
# )
#
trinton.make_music(
    lambda _: trinton.select_target(_, (2, 4)),
    trinton.spanner_command(
        strings=[
            r"\markup \fontsize #5 { Rit. }",
            library.return_metronome_markup(
                note_value="eighth",
                tempo=72,
                padding=0,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Note("c'8."),
                    right_rhythm=abjad.Note("c'8"),
                ),
                site="after",
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
            ]
        ),
        style="solid-line-with-arrow",
        padding=14,
        tweaks=None,
        right_padding=-12,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        end_hook_right_padding=1.5,
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\markup \hspace #14 {}",
            library.return_metronome_markup(
                note_value="eighth",
                tempo=108,
                padding=0,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("3:2", "c'8"),
                    right_rhythm=abjad.Note("c'8"),
                ),
                site="after",
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([1, -1]),
        style="solid-line-with-arrow",
        padding=14,
        tweaks=None,
        right_padding=-8,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        end_hook_right_padding=1.5,
        tag=None,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 11)),
    trinton.spanner_command(
        strings=[
            r"\markup \fontsize #5 { Rit. }",
            library.return_metronome_markup(
                note_value="eighth",
                tempo=48,
                padding=0,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("8:9", "c'4"),
                    right_rhythm=abjad.Note("c'8"),
                ),
                site="after",
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
            ]
        ),
        style="solid-line-with-arrow",
        padding=12,
        tweaks=None,
        right_padding=-10,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        end_hook_right_padding=1.5,
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\markup \hspace #17 {}",
            library.return_metronome_markup(
                note_value="eighth",
                tempo=160,
                padding=0,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("5:6", "c'32"),
                    right_rhythm=abjad.Note("c'8"),
                ),
                site="after",
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([1, -1]),
        style="solid-line-with-arrow",
        padding=12,
        tweaks=None,
        right_padding=-14,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        end_hook_right_padding=1.5,
        tag=None,
    ),
    voice=score["Global Context"],
)

#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (21, 24)),
#     trinton.spanner_command(
#         strings=[
#             r"\markup \fontsize #5 { Rit. }",
#             library.return_metronome_markup(
#                 note_value="eighth",
#                 tempo=48,
#                 padding=0,
#                 metric_modulation=abjad.MetricModulation(
#                     left_rhythm=abjad.Note("c'8."),
#                     right_rhythm=abjad.Note("c'8"),
#                 ),
#                 site="after",
#                 hspace=None,
#                 string_only=True,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#         style="solid-line-with-arrow",
#         padding=19,
#         tweaks=None,
#         right_padding=None,
#         direction=None,
#         full_string=True,
#         command="",
#         end_hook=False,
#         end_hook_style="dashed-line-with-hook",
#         end_hook_right_padding=1.5,
#         tag=None,
#     ),
#     voice=score["Global Context"],
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (27, 30)),
#     trinton.spanner_command(
#         strings=[
#             r"\markup \fontsize #5 { Accel. }",
#             library.return_metronome_markup(
#                 note_value="eighth",
#                 tempo=108,
#                 padding=0,
#                 metric_modulation=abjad.MetricModulation(
#                     left_rhythm=abjad.Tuplet("9:8", "c'16"),
#                     right_rhythm=abjad.Note("c'8"),
#                 ),
#                 site="after",
#                 hspace=None,
#                 string_only=True,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#         style="solid-line-with-arrow",
#         padding=21,
#         tweaks=None,
#         right_padding=None,
#         direction=None,
#         full_string=True,
#         command="",
#         end_hook=False,
#         end_hook_style="dashed-line-with-hook",
#         end_hook_right_padding=1.5,
#         tag=None,
#     ),
#     voice=score["Global Context"],
# )
#
for measure in [
    1,
    2,
    3,
    5,
    6,
    7,
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

for measure in [4, 8]:
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
    15,
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
    segment_path="/Users/trintonprater/scores/capullos/capullos/sections/04",
    build_path="/Users/trintonprater/scores/capullos/capullos/build",
    segment_name="04",
    includes=[
        "/Users/trintonprater/scores/capullos/capullos/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
