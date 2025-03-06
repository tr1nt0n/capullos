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
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.Markup(
    #             r"""\markup {
    #                 \hspace #-2 {
    #                     ( \note {2} #2 )
    #                 }
    #             }"""
    #         )
    #     ],
    #     selector=trinton.durational_selector(
    #         durations=[abjad.Duration((1, 2))],
    #         preselector=abjad.select.leaves,
    #     ),
    #     direction=abjad.UP,
    # ),
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
                r"- \tweak padding #9",
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
    library.attach_bowing_spanners(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 33)),
    evans.RhythmHandler(
        rhythm.card_rhythm(),
    ),
    trinton.rewrite_meter_command(),
    trinton.ottava_command(
        octave=-2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    voice=score["piano 1 voice"],
    beam_meter=True,
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.aftergrace_command(
        selector=trinton.select_leaves_by_index([0]), invisible=True
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index([0, -1]),
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
                padding=16,
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


# trinton.make_music(
#     lambda _: trinton.select_target(_, (9, 11)),
#     trinton.spanner_command(
#         strings=[
#             r"\markup \fontsize #5 { Rit. }",
#             library.return_metronome_markup(
#                 note_value="quarter",
#                 tempo=52,
#                 padding=0,
#                 # metric_modulation=abjad.MetricModulation(
#                 #     left_rhythm=abjad.Tuplet("5:4", r"c'16"),
#                 #     right_rhythm=abjad.Note("c'16"),
#                 # ),
#                 site="after",
#                 hspace=None,
#                 string_only=True,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#         style="solid-line-with-arrow",
#         padding=8.5,
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
