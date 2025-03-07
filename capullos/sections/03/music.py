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
        strings=library.return_bowing_spanner_markups(),
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
        strings=library.return_bowing_spanner_markups(),
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
        strings=library.return_bowing_spanner_markups(index=3),
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
        strings=library.return_bowing_spanner_markups(index=5),
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
        strings=library.return_bowing_spanner_markups(index=7),
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
        strings=library.return_bowing_spanner_markups(index=10),
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
        strings=library.return_bowing_spanner_markups(index=12),
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
        strings=library.return_bowing_spanner_markups(index=14),
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
        strings=library.return_bowing_spanner_markups(index=19),
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
        strings=library.return_bowing_spanner_markups(index=21),
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
        strings=library.return_bowing_spanner_markups(index=25),
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
        strings=library.return_bowing_spanner_markups(index=27),
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
    trinton.continuous_glissando(
        selector=trinton.pleaves(), zero_padding=True, no_ties=True
    ),
    voice=score["piano 1 voice"],
    beam_meter=True,
)

# lh music

for measure in [1, 4, 6, 9, 12, 15]:
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
            stage=2,
            index=5,
            nested_selector=trinton.select_logical_ties_by_index([2, 4], pitched=True),
        )
    ),
    trinton.rewrite_meter_command(),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    voice=score["piano 3 voice"],
)

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
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
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
            abjad.BeamCount(left=1, right=1),
            abjad.BeamCount(left=1, right=1),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=1),
            abjad.BeamCount(left=1, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=4),
            abjad.BeamCount(left=4, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=4, right=1),
            abjad.BeamCount(left=1, right=4),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=1),
        ],
        selector=trinton.select_leaves_by_index(
            [
                2,
                5,
                11,
                12,
                13,
                14,
                15,
                16,
                21,
                22,
                24,
                25,
                27,
                28,
                40,
                42,
                45,
                47,
            ],
            pitched=True,
        ),
    ),
    voice=score["piano 3 voice"],
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

# for measure in [1, 2, 3, 4, 5, 6]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[
#                 abjad.LilyPondLiteral(r"\noBreak", site="absolute_after"),
#             ],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )
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
# for measure in [
#     1,
#     2,
#     3,
#     4,
#     5,
#     6,
#     7,
#     8,
#     9,
#     10,
#     11,
#     12,
#     13,
#     14,
# ]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[
#                 abjad.LilyPondLiteral(r"\noPageBreak", site="absolute_after"),
#             ],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )
#
# for measure in [
#     15,
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
