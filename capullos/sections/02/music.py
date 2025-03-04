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
        (6, 16),
        (6, 16),
        (6, 16),
        (6, 16),
        (6, 16),
        (6, 16),
        (6, 16),
        (5, 4),
    ]
)

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea([1], 16, extra_counts=[-1])),
    evans.PitchHandler([["g''''", "af'''"]]),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Staff.Stem.direction = #UP", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["piano 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 7)),
    evans.RhythmHandler(evans.talea([1], 16, extra_counts=[-1, 1, -1, 1, -1, -1])),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((2, 1, 3, 1, 2, 3)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.PitchHandler([["g''''", "af'''"]]),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.PitchHandler([["fs''''", "fs'''"]]),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 7)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\revert Staff.Stem.direction", site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    voice=score["piano 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=rhythm.punctuation_selector(first=True, pitched=True),
    ),
    trinton.ottava_command(octave=2, selector=trinton.select_leaves_by_index([0, -1])),
    voice=score["piano 1 voice"],
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea([1], 16)),
    evans.PitchHandler(
        [["a,,,,", "b,,,,", "c,,,", "d,,,", "e,,,", "f,,,", "g,,,", "a,,,"]]
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Staff.Stem.direction = #DOWN", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["piano 3 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 7)),
    evans.RhythmHandler(evans.talea([1, 1, 1, 1, 1, 1, 2, 2, 2], 16)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        [["a,,,,", "b,,,,", "c,,,", "d,,,", "e,,,", "f,,,", "g,,,", "a,,,"]]
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\revert Staff.Stem.direction", site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=trinton.pleaves(),
    ),
    voice=score["piano 3 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=rhythm.punctuation_selector(first=True, pitched=True),
    ),
    trinton.ottava_command(octave=-2, selector=trinton.select_leaves_by_index([0, -1])),
    voice=score["piano 3 voice"],
)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BarLine(".|:", site="before"),
            abjad.LilyPondLiteral(
                r'\tweak text "×3" \startMeasureSpanner', site="absolute_before"
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
            abjad.BarLine(":|.|:", site="after"),
            abjad.LilyPondLiteral(
                [
                    r"\revert Score.BarLine.color",
                    r"\revert Score.SpanBar.color",
                ],
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1, -1, -1]),
    ),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.LilyPondLiteral(
    #             r"\override Score.BarLine.X-extent = #'(2 . 2)", site="before"
    #         ),
    #         # abjad.LilyPondLiteral(
    #         #     r"\once \override TimeSignature.X-offset = -2.7", site="before"
    #         # ),
    #     ],
    #     selector=trinton.select_leaves_by_index([0]),
    # ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Score.BarLine.color = \二",
                    r"\override Score.SpanBar.color = \二",
                ],
                site="absolute_before",
            ),
            abjad.BarLine(".|:", site="before"),
            abjad.LilyPondLiteral(
                r'\tweak text "×3" \startMeasureSpanner', site="absolute_before"
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
            abjad.BarLine(":|.", site="after"),
            # abjad.LilyPondLiteral(
            #     r'\revert Score.BarLine.color', site="absolute_after"
            # ),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1, -1]),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    trinton.attachment_command(
        attachments=[abjad.BarLine(":|.", site="after")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 8)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"""\set Score.repeatCommands = #'((volta "1 - 2"))""",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"""\set Score.repeatCommands = #'((volta "3"))""",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"""\set Score.repeatCommands = #'((volta #f))""",
                site="after",
            ),
            abjad.LilyPondLiteral(
                r"""\set Score.repeatCommands = #'((volta "1"))""",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"""\set Score.repeatCommands = #'((volta "2"))""",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"""\set Score.repeatCommands = #'((volta #f))""",
                site="after",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
                4,
                5,
                5,
            ]
        ),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_markup(
                note_value="dotted eighth",
                tempo=100,
                padding=8,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("5:4", r"c'16"),
                    right_rhythm=abjad.Note("c'16"),
                ),
                site="after",
                hspace=None,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)
#
# for measure in [
#     1,
#     2,
#     3,
#     5,
#     6,
#     7,
#     9,
#     10,
#     11,
#     13,
#     14,
#     15,
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
#     4,
#     8,
#     12,
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
    segment_path="/Users/trintonprater/scores/capullos/capullos/sections/02",
    build_path="/Users/trintonprater/scores/capullos/capullos/build",
    segment_name="02",
    includes=[
        "/Users/trintonprater/scores/capullos/capullos/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
