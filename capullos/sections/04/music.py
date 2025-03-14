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
# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             library.return_metronome_markup(
#                 note_value="eighth",
#                 tempo=72,
#                 padding=17.5,
#                 # metric_modulation=abjad.MetricModulation(
#                 #     left_rhythm=abjad.Tuplet("5:4", r"c'16"),
#                 #     right_rhythm=abjad.Note("c'16"),
#                 # ),
#                 site="after",
#                 hspace=None,
#                 string_only=False,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["Global Context"],
# )
#
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
# for measure in [
#     1,
#     3,
#     4,
#     5,
#     6,
#     7,
#     8,
#     9,
#     11,
#     12,
#     13,
#     14,
#     15,
#     16,
#     17,
#     19,
#     20,
#     21,
#     22,
#     23,
#     25,
#     26,
#     27,
#     28,
#     29,
#     30,
#     32,
#     34,
# ]:
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
#     2,
#     10,
#     18,
#     24,
#     31,
#     33,
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
#     15,
#     16,
#     17,
#     19,
#     20,
#     21,
#     22,
#     23,
#     24,
#     25,
#     26,
#     27,
#     28,
#     29,
#     30,
#     31,
#     32,
#     33,
#     34,
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
#     18,
#     35,
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
    segment_path="/Users/trintonprater/scores/capullos/capullos/sections/04",
    build_path="/Users/trintonprater/scores/capullos/capullos/build",
    segment_name="04",
    includes=[
        "/Users/trintonprater/scores/capullos/capullos/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
