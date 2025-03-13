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

section_ts = ts.sieve_time_signatures[0:31]

section_ts.insert(0, (1, 4))

section_ts.insert(0, (9, 8))

section_ts.extend([(5, 4), (5, 4)])

score = library.capullos_score(section_ts)

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([8, 1], 8)),
    evans.PitchHandler(["g,,,"]),
    pitch.sieve_transposition(selector=trinton.logical_ties(exclude=[0], pitched=True)),
    library.make_cluster_chords(),
    trinton.change_notehead_command(notehead="cluster", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup {
                    \hspace #-2 {
                        ( \note {1} #2 )
                    }
                }"""
            )
        ],
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 1))],
            preselector=abjad.select.leaves,
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Staff.Clef.X-extent = ##f",
                    r"\once \override Staff.Clef.extra-offset = #'(-4 . 0)",
                ],
                site="absolute_before",
            ),
            abjad.bundle(
                trinton.boxed_markup(
                    string="Plastic Card:",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=7,
                    string_only=False,
                ),
                r"- \tweak padding #10.5",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.continuous_glissando(selector=trinton.pleaves(), zero_padding=True),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.ottava_command(
        octave=-2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"ffff"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.spanner_command(
        strings=library.return_bowing_spanner_markups()[0:2],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=9,
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
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 33)),
    evans.RhythmHandler(
        rhythm.card_rhythm(),
    ),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(["g,,,"]),
    pitch.sieve_transposition(selector=trinton.logical_ties(exclude=[0], pitched=True)),
    library.make_cluster_chords(),
    trinton.change_notehead_command(notehead="cluster", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup {
                    \hspace #-2 {
                        ( \note {2} #2 )
                    }
                }"""
            )
        ],
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 2))],
            preselector=abjad.select.leaves,
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup {
                    \hspace #-2 {
                        ( \note {2} #2 \override #'(font-size . 5) . )
                    }
                }"""
            )
        ],
        selector=trinton.durational_selector(
            durations=[abjad.Duration((3, 4))],
            preselector=abjad.select.leaves,
        ),
        direction=abjad.UP,
    ),
    trinton.ottava_command(
        octave=-2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    # trinton.linear_attachment_command(
    #     attachments=[
    #         abjad.Dynamic('"ffff"'),
    #         abjad.StartHairpin("--"),
    #         abjad.StopHairpin(),
    #     ],
    #     selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    # ),
    # trinton.annotate_leaves_locally(trinton.logical_ties(first=True, pitched=True)),
    trinton.spanner_command(
        strings=library.return_bowing_spanner_markups()[0:4],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 1, 2, 2, 3], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=9,
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
    trinton.spanner_command(
        strings=library.return_bowing_spanner_markups(index=3)[0:2],
        selector=trinton.select_logical_ties_by_index([4, 5], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=11,
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
    trinton.spanner_command(
        strings=library.return_bowing_spanner_markups(index=5)[0:3],
        selector=trinton.select_logical_ties_by_index(
            [6, 7, 7, 8], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=13.5,
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
    trinton.spanner_command(
        strings=library.return_bowing_spanner_markups(index=7)[0:4],
        selector=trinton.select_logical_ties_by_index(
            [9, 10, 10, 11, 11, 12], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=10,
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
    trinton.spanner_command(
        strings=library.return_bowing_spanner_markups(index=10)[0:2],
        selector=trinton.select_logical_ties_by_index(
            [13, 14], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=10.5,
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
    trinton.spanner_command(
        strings=library.return_bowing_spanner_markups(index=12)[0:2],
        selector=trinton.select_logical_ties_by_index(
            [15, 16], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=7,
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
    trinton.spanner_command(
        strings=library.return_bowing_spanner_markups(index=14)[0:6],
        selector=trinton.select_logical_ties_by_index(
            [17, 18, 18, 19, 19, 20, 20, 21, 21, 22], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=13,
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
    trinton.spanner_command(
        strings=library.return_bowing_spanner_markups(index=19)[0:2],
        selector=trinton.select_logical_ties_by_index(
            [23, 24], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=10.5,
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
    trinton.spanner_command(
        strings=library.return_bowing_spanner_markups(index=21)[0:4],
        selector=trinton.select_logical_ties_by_index(
            [25, 26, 26, 27, 27, 28], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=10.5,
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
    trinton.spanner_command(
        strings=library.return_bowing_spanner_markups(index=25)[0:2],
        selector=trinton.select_logical_ties_by_index(
            [29, 30], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=15.5,
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
    trinton.spanner_command(
        strings=library.return_bowing_spanner_markups(index=27)[0:3],
        selector=trinton.select_logical_ties_by_index(
            [31, 32, 32, 33], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=9.5,
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
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"ffff"'),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"mp"'),
            abjad.Dynamic('"f"'),
            abjad.Dynamic('"fp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mp"'),
            abjad.Dynamic('"pp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"ffff"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.Dynamic('"ffff"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"p"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"ffff"'),
            abjad.Dynamic('"f"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.Dynamic('"ff"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.StartHairpin("o<"),
            abjad.Dynamic('"p"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"fff"'),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.Dynamic('"mf"'),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin(">o"),
            # abjad.StopHairpin(),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("<|"),
            abjad.Dynamic('"ff"'),
            abjad.Dynamic('"fff"'),
            abjad.Dynamic('"fff"'),
            abjad.StartHairpin(">o"),
            # abjad.StopHairpin(),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin(">o"),
            # abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                1,
                2,
                3,
                4,
                4,
                5,
                6,
                6,
                7,
                7,
                8,
                9,
                9,
                10,
                10,
                12,
                13,
                13,
                14,
                15,
                15,
                16,
                17,
                18,
                18,
                20,
                20,
                21,
                22,
                23,
                23,
                # 24,
                25,
                25,
                26,
                26,
                27,
                28,
                29,
                29,
                # 30,
                31,
                31,
                # 33,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([-1, -5, -13]),
    ),
    trinton.continuous_glissando(
        selector=trinton.pleaves(), zero_padding=True, no_ties=True
    ),
    voice=score["piano 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (35,)),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Staff.Stem.direction = #DOWN", site="before"
            ),
            # abjad.LilyPondLiteral(
            #     r"\revert Staff.Stem.direction",
            #     site="absolute_after"
            # ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["piano 1 voice"],
)

# lh music

for measure in [1, 4, 6, 9, 12, 15, 17]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.aftergrace_command(
            selector=trinton.select_leaves_by_index([0]), invisible=True
        ),
        trinton.linear_attachment_command(
            attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
            selector=trinton.select_leaves_by_index([0, -1]),
        ),
        voice=score["piano 3 voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (18, 21)),
    evans.RhythmHandler(rhythm.gesture_rhythms(stage=1)),
    trinton.rewrite_meter_command(),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (23,)),
    evans.RhythmHandler(rhythm.gesture_rhythms(stage=1, index=4)),
    trinton.rewrite_meter_command(),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (25,)),
    evans.RhythmHandler(
        rhythm.gesture_rhythms(
            stage=1,
            index=5,
        )
    ),
    trinton.rewrite_meter_command(),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.tuplet([(1, 1, 1, 1, 1, 1)])),
        selector=trinton.select_leaves_by_index(
            [
                1,
            ],
            pitched=True,
        ),
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.tuplet([(1, 1, 1, 1)])),
        selector=trinton.select_leaves_by_index(
            [
                -1,
            ],
            pitched=True,
        ),
    ),
    voice=score["piano 3 voice"],
)

relevant_tuplet = abjad.select.tuplet(score["piano 3 voice"], 3)
relevant_tuplet.multiplier = (4, 6)

trinton.make_music(
    lambda _: trinton.select_target(_, (28, 31)),
    evans.RhythmHandler(
        rhythm.gesture_rhythms(
            stage=2,
            index=5,
            nested_selector=trinton.select_logical_ties_by_index(
                [7, 9, 12], pitched=True
            ),
        )
    ),
    trinton.rewrite_meter_command(),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18, 31)),
    evans.PitchHandler(["c,,,"]),
    pitch.sieve_transposition(),
    trinton.octavation(
        octave=2,
        selector=trinton.select_logical_ties_by_index(
            [26, 31, 36, 37, 38, 41, 45, 46, 47, 48, 49, 50], pitched=True
        ),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [1, 6, 11, 16, 22, 30, 32, 33, 35, 39, 40, 42, 43, 44], pitched=True
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [4, 10, 14, 20, 24], pitched=True
        ),
    ),
    trinton.octavation(
        octave=-2, selector=trinton.select_logical_ties_by_index([9, 19], pitched=True)
    ),
    pitch.make_sieve_chords(
        index=0,
        selector=trinton.select_logical_ties_by_index(
            [
                3,
                11,
                13,
                22,
                27,
                34,
                47,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.respell_accidentals_command(selector=trinton.pleaves()),
    trinton.octavation(
        octave=4,
        selector=trinton.notehead_selector(
            chord_indices=[
                0,
                2,
                4,
            ],
            head_indices_lists=[
                [0],
                [0],
                [0],
            ],
        ),
    ),
    trinton.octavation(
        octave=3,
        selector=trinton.notehead_selector(
            chord_indices=[
                1,
                3,
            ],
            head_indices_lists=[
                [0],
                [0],
            ],
        ),
    ),
    trinton.octavation(
        octave=2,
        selector=trinton.notehead_selector(
            chord_indices=[
                2,
                5,
            ],
            head_indices_lists=[
                [2],
                [0],
            ],
        ),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.notehead_selector(
            chord_indices=[
                0,
                1,
                2,
                4,
                6,
                # 6,
            ],
            head_indices_lists=[
                [1, 2],
                [1, 2],
                [1],
                [0, 1],
                [0, 1, 2],
                # [0, 1, 2],
            ],
        ),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.notehead_selector(
            chord_indices=[
                6,
            ],
            head_indices_lists=[
                [0, 1, 3],
            ],
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.notehead_selector(
            chord_indices=[
                1,
                2,
                4,
            ],
            head_indices_lists=[
                [-1],
                [2, 3, 4],
                [
                    -1,
                ],
            ],
        ),
    ),
    trinton.octavation(
        octave=-2,
        selector=trinton.notehead_selector(
            chord_indices=[
                3,
            ],
            head_indices_lists=[
                [-1, -2],
            ],
        ),
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_logical_ties_by_index([4], first=True, pitched=True)
    ),
    trinton.force_accidentals_command(
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
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartBeam(),
                abjad.StopBeam(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [0, 2, 5, 11, 12, 13, 14, 27, 28, 40, 42, 45, 47, -1], pitched=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([-8, -7], pitched=True),
    ),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True, pitched=True, grace=False)),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.vertical_accidentals(
        selector=trinton.select_leaves_by_index(
            [16, 17, 20, 38, 40, 45, 46], pitched=True
        )
    ),
    trinton.vertical_accidentals(
        selector=trinton.select_leaves_by_index([49], pitched=True), direction=abjad.UP
    ),
    trinton.ottava_command(
        octave=-2, selector=trinton.select_leaves_by_index([0, 43], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.Articulation(">"),
                abjad.Articulation("staccato"),
                abjad.Articulation(">"),
                abjad.Articulation("tenuto"),
                abjad.Articulation("marcato"),
            ],
        ),
        selector=rhythm.punctuation_selector(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [0, 2, 5, 11, 12, 13, 15, 21, 22, 27, 48, 50],
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
                4,
                28,
                34,
                35,
                41,
                42,
                47,
            ],
            pitched=True,
            grace=False,
        ),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.direction = #UP", site="before"
            )
        ],
        selector=trinton.select_tuplets_by_index([3, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #4", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #2.5", site="before"
            ),
        ],
        selector=trinton.select_tuplets_by_index([2, -2]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            trinton.make_custom_dynamic("s. ff"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.LilyPondLiteral(
                r"\once \override DynamicText.X-extent = #'(-0.05 . -0.05)",
                site="before",
            ),
            abjad.Dynamic("f"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("p"),
            abjad.Dynamic("f"),
            abjad.Dynamic("p"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.Dynamic("p"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
                3,
                4,
                5,
                10,
                12,
                14,
                15,
                15,
                19,
                19,
                21,
                21,
                22,
                24,
                28,
                29,
                30,
                31,
                31,
                34,
                35,
                42,
                42,
                45,
                46,
                47,
                48,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index(
            [
                15,
            ],
        ),
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartPianoPedal(),
                abjad.StopPianoPedal(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [
                2,
                10,
                14,
                15,
                16,
                18,
                21,
                26,
                29,
                31,
                32,
                35,
                41,
                43,
                46,
                54,
            ]
        ),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (33, 35)),
    evans.RhythmHandler(
        rhythm.gesture_rhythms(
            stage=2,
            index=0,
        )
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.talea([-100], 4)),
        selector=trinton.select_tuplets_by_index([0]),
    ),
    evans.PitchHandler(["c,"]),
    pitch.sieve_transposition(index=17),
    trinton.octavation(
        octave=2,
        selector=trinton.select_leaves_by_index(
            [
                19,
                24,
                34,
                35,
                39,
                40,
                44,
                45,
                46,
            ],
            pitched=True,
        ),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index(
            [14, 15, 16, 18, 20, 21, 29, 30, 31, 33, 36, 37, 38, 41, 43, 47],
            pitched=True,
        ),
    ),
    trinton.octavation(
        octave=-1, selector=trinton.select_leaves_by_index([12], pitched=True)
    ),
    pitch.make_sieve_chords(
        index=7,
        selector=trinton.select_logical_ties_by_index(
            [
                3,
                7,
                8,
                9,
                14,
                28,
                35,
                43,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.octavation(
        octave=2,
        selector=trinton.notehead_selector(
            chord_indices=[
                2,
                3,
                4,
            ],
            head_indices_lists=[
                [0, 1],
                [0, 1, 2],
                [0, 1, 2, 3],
            ],
        ),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.notehead_selector(
            chord_indices=[
                0,
                5,
                -1,
            ],
            head_indices_lists=[[0], [0, 1, 2], [0, 1, 2, 3]],
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.notehead_selector(
            chord_indices=[
                0,
                1,
                2,
            ],
            head_indices_lists=[
                [-2, -1],
                [-1],
                [-1],
            ],
        ),
    ),
    trinton.vertical_accidentals(
        selector=trinton.select_leaves_by_index(
            [
                4,
                11,
                12,
                13,
                16,
                17,
                19,
                21,
                22,
                24,
                32,
                33,
                37,
                42,
                45,
                46,
                47,
            ],
            pitched=True,
            grace=False,
        )
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartBeam(),
                abjad.StopBeam(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [
                0,
                6,
                10,
                -1,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index(
            [
                20,
                21,
                24,
                31,
                32,
                39,
                40,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Staff.Stem.direction = #DOWN", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\revert Staff.Stem.direction", site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index([25, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.direction = #UP", site="before"
            )
        ],
        selector=trinton.select_tuplets_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.direction = #DOWN", site="before"
            )
        ],
        selector=trinton.select_tuplets_by_index(list(range(1, 5))),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                library.change_to_rh,
                library.revert_to_lh,
            ]
        ),
        selector=trinton.select_leaves_by_index([35, 37, 40, 40, 43, -1], pitched=True),
    ),
    trinton.force_accidentals_command(
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
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.Articulation(">"),
                abjad.Articulation("staccato"),
                abjad.Articulation(">"),
                abjad.Articulation("tenuto"),
                abjad.Articulation("marcato"),
            ],
        ),
        selector=rhythm.punctuation_selector(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [abjad.StartSlur(), abjad.StopSlur()],
        ),
        selector=trinton.select_leaves_by_index(
            [
                0,
                3,
                4,
                6,
                7,
                9,
                10,
                14,
                15,
                27,
                29,
                35,
                36,
                37,
                38,
                39,
                41,
                42,
                44,
                47,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("|>"),
            abjad.Dynamic("ppp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("f"),
            abjad.Dynamic("p"),
            abjad.Dynamic("f"),
            abjad.Dynamic("p"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("|>"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                4,
                7,
                7,
                10,
                10,
                14,
                15,
                15,
                21,
                35,
                36,
                37,
                39,
                41,
                42,
                43,
                44,
                44,
                -1,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.padding = #2", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.padding = #3.5", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.padding = #2", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.padding = #3.5", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.padding = #3", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.padding = #5.5", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.padding = #4", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [4, 15, 36, 37, 39, 41, 42], pitched=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Score.SustainPedalLineSpanner.padding = #5", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\override Score.SustainPedalLineSpanner.padding = #7", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\override Score.SustainPedalLineSpanner.padding = #14", site="before"
            ),
            # abjad.LilyPondLiteral(
            #     [
            #         r"\override Score.SustainPedalLineSpanner.X-extent = #'(0 . 0)",
            #         r"\override Score.SustainPedalLineSpanner.Y-extent = #'(0 . 0)",
            #         r"\override Score.SustainPedalLineSpanner.padding = #24",
            #     ],
            #     site="before"
            # ),
        ],
        selector=trinton.select_leaves_by_index([0, 9, 15, 43], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartPianoPedal(),
                abjad.StopPianoPedal(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                8,
                9,
                14,
                15,
                34,
                # 43, 47,
            ],
            pitched=True,
        ),
        # direction=abjad.DOWN
    ),
    library.manual_beam_positions(
        positions=(
            -7.5,
            -3,
        ),
        selector=trinton.select_leaves_by_index([10, -1], pitched=True),
    ),
    voice=score["piano 3 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1, 2, 3, 2, 2, 3)),
)

# globals

trinton.fermata_measures(
    score=score,
    measures=[2],
    fermata="long-fermata",
    voice_names=None,
    font_size=10,
    clef_whitespace=True,
    blank=True,
    last_measure=False,
    padding=None,
    extra_offset=2.5,
    tag=abjad.Tag("+SCORE"),
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 3)),
#     trinton.linear_attachment_command(
#         attachments=[
#             abjad.BarLine(".|:", site="before"),
#             abjad.LilyPondLiteral(
#                 r'\tweak text "×3" \startMeasureSpanner', site="absolute_before"
#             ),
#             abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
#             abjad.BarLine(":|.|:", site="after"),
#             abjad.LilyPondLiteral(
#                 [
#                     r"\revert Score.BarLine.color",
#                     r"\revert Score.SpanBar.color",
#                 ],
#                 site="absolute_after",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, 0, -1, -1, -1]),
#     ),
#     # trinton.attachment_command(
#     #     attachments=[
#     #         abjad.LilyPondLiteral(
#     #             r"\override Score.BarLine.X-extent = #'(2 . 2)", site="before"
#     #         ),
#     #         # abjad.LilyPondLiteral(
#     #         #     r"\once \override TimeSignature.X-offset = -2.7", site="before"
#     #         # ),
#     #     ],
#     #     selector=trinton.select_leaves_by_index([0]),
#     # ),
#     voice=score["Global Context"],
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (2,)),
#     trinton.linear_attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 [
#                     r"\override Score.BarLine.color = \二",
#                     r"\override Score.SpanBar.color = \二",
#                 ],
#                 site="absolute_before",
#             ),
#             abjad.BarLine(".|:", site="before"),
#             abjad.LilyPondLiteral(
#                 r'\tweak text "×3" \startMeasureSpanner', site="absolute_before"
#             ),
#             abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
#             abjad.BarLine(":|.", site="after"),
#             # abjad.LilyPondLiteral(
#             #     r'\revert Score.BarLine.color', site="absolute_after"
#             # ),
#         ],
#         selector=trinton.select_leaves_by_index([0, 0, 0, -1, -1]),
#     ),
#     voice=score["piano 1 voice"],
# )
#
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
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_markup(
                note_value="eighth",
                tempo=72,
                padding=17.5,
                # metric_modulation=abjad.MetricModulation(
                #     left_rhythm=abjad.Tuplet("5:4", r"c'16"),
                #     right_rhythm=abjad.Note("c'16"),
                # ),
                site="after",
                hspace=None,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)


trinton.make_music(
    lambda _: trinton.select_target(_, (21, 24)),
    trinton.spanner_command(
        strings=[
            r"\markup \fontsize #5 { Rit. }",
            library.return_metronome_markup(
                note_value="eighth",
                tempo=48,
                padding=0,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Note("c'8."),
                    right_rhythm=abjad.Note("c'8"),
                ),
                site="after",
                hspace=None,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=19,
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
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (27, 30)),
    trinton.spanner_command(
        strings=[
            r"\markup \fontsize #5 { Accel. }",
            library.return_metronome_markup(
                note_value="eighth",
                tempo=108,
                padding=0,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("9:8", "c'16"),
                    right_rhythm=abjad.Note("c'8"),
                ),
                site="after",
                hspace=None,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=21,
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
    voice=score["Global Context"],
)

for measure in [34]:
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
#
# for measure in [
#     7,
# ]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[
#                 abjad.LilyPondLiteral(r"\break", site="absolute_after"),
#             ],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )
#
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
    16,
    17,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    31,
    32,
    33,
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
    18,
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

# for measure in [
#     16,
# ]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[
#                 abjad.LilyPondLiteral(r"\pageBreak", site="absolute_after"),
#             ],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )

# beautification

# library.handle_accidentals(score=score, force_accidentals=False)

library.clean_time_signatures(score=score)

trinton.remove_redundant_time_signatures(score=score)

# library.reset_line_positions(score=score, voice_names=["piano 5 voice"])

# persist

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/capullos/capullos/sections/03",
    build_path="/Users/trintonprater/scores/capullos/capullos/build",
    segment_name="03",
    includes=[
        "/Users/trintonprater/scores/capullos/capullos/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
