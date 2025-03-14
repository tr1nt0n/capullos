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
        # ritardando + removal of clusters + transpose to G
        (5, 4),
        (5, 4),
        (5, 4),
        # range expansion
        (5, 4),
        (5, 4),
        # talea switches to 8ths
        (5, 4),
        # hang out in space + an interruption
        (5, 4),
        (5, 4),
        # remove LH voice
        (5, 4),
        (5, 4),
        (5, 4),
        (1, 4),
    ]
)

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(evans.talea(rhythm.sieve_talea, 16, extra_counts=[-1])),
    # trinton.respell_tuplets_command(rewrite_brackets=False),
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
    # preprocessor=trinton.fuse_eighths_preprocessor((3, 3, 3, 2, 1, 3, 1, 2, 3)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.PitchHandler([["g''''", "af'''"]]),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.PitchHandler([["fs''''", "fs'''"]]),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\revert Staff.Stem.direction", site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                4,
                9,
                10,
                12,
                16,
                -1,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.ottava_command(octave=2, selector=trinton.select_leaves_by_index([0, -1])),
    voice=score["piano 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 12)),
    evans.RhythmHandler(evans.talea(rhythm.return_sieve_talea(21), 16)),
    trinton.rewrite_meter_command(),
    voice=score["piano 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 15)),
    evans.RhythmHandler(
        evans.talea(rhythm.return_sieve_talea(87), 8, extra_counts=[0, 1, 1, 0])
    ),
    trinton.rewrite_meter_command(),
    voice=score["piano 1 voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_quarters_preprocessor(
        (
            1,
            2,
            1,
            1,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 18)),
    evans.RhythmHandler(
        evans.talea(rhythm.return_sieve_talea(107), 4, extra_counts=[0, 1, 1, 0])
    ),
    trinton.rewrite_meter_command(),
    voice=score["piano 1 voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_quarters_preprocessor((3, 2)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 9)),
    evans.PitchHandler([["fs''''", "fs'''"]]),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override VoltaBracketSpanner.padding = 15", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 18)),
    evans.PitchHandler(["gs''''"]),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 13)),
    pitch.sieve_transposition(selector=rhythm.punctuation_selector()),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 18)),
    pitch.sieve_transposition(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 18)),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True, pitched=True)),
    trinton.ottava_command(
        octave=2,
        selector=trinton.select_logical_ties_by_index(
            [0, 64, 94, 94, 97, 97], pitched=True, last=True
        ),
    ),
    trinton.ottava_command(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [65, 83, 85, 87], pitched=True, first=True
        ),
    ),
    trinton.octavation(selector=trinton.select_logical_ties_by_index([94]), octave=2),
    trinton.octavation(
        selector=trinton.select_logical_ties_by_index([72, 85]), octave=1
    ),
    trinton.octavation(
        selector=trinton.select_logical_ties_by_index(
            [
                42,
                43,
                49,
                52,
                64,
                67,
                68,
                70,
                73,
                79,
                87,
                89,
                91,
            ]
        ),
        octave=-1,
    ),
    trinton.octavation(
        selector=trinton.select_logical_ties_by_index(
            [47, 53, 55, 59, 61, 62, 75, 77, 78, 82, 84, 86, 88, 98]
        ),
        octave=-2,
    ),
    trinton.octavation(
        selector=trinton.select_logical_ties_by_index([92, 95, 99]), octave=-3
    ),
    trinton.attachment_command(
        attachments=[library.change_to_lh, library.revert_to_rh],
        selector=trinton.select_logical_ties_by_index(
            [95, 99], pitched=True, first=True
        ),
    ),
    library.connect_notes_to_upper_staff(
        selector=trinton.select_logical_ties_by_index(
            [95, 99], pitched=True, first=True
        ),
        stem_lengths=[25, 29],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override TupletBracket.direction = #UP",
                    r"""\once \override TupletBracket.stencil =
                    #(lambda (grob)
                        (let* ((pos (ly:grob-property grob 'positions))
                            (dir (ly:grob-property grob 'direction))
                            (new-pos (if (= dir 1)
                            (max (car pos)(cdr pos))
                            (min (car pos)(cdr pos)))))
                            (ly:grob-set-property! grob 'positions (cons new-pos new-pos))
                            (ly:tuplet-bracket::print grob)))""",
                    r"\once \override TupletBracket.padding = #-17",
                ],
                site="before",
            )
        ],
        selector=trinton.select_logical_ties_by_index([99], pitched=True, first=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index(
            list(range(0, 33)), first=True, pitched=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \fontsize #4.5 \override #'(font-name . "Bodoni72 Book Italic") {
                        \column {
                            \line {
                                "No phrases:"
                            }
                            \line {
                                "Every note a creature on its own."
                            }
                        }
                    }"""
                ),
                r"- \tweak padding #5",
            ),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pppp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                1,
                1,
                3,
                39,
                52,
                63,
                85,
                94,
            ],
            first=True,
            pitched=True,
        ),
        direction=abjad.DOWN,
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 15)),
    trinton.octavation(selector=trinton.pleaves(), octave=-1),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 18)),
    trinton.octavation(selector=trinton.pleaves(), octave=-2),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 18)),
    trinton.respell_accidentals_command(selector=trinton.pleaves()),
    voice=score["piano 1 voice"],
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(evans.talea(rhythm.sieve_talea, 16)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        [["a,,,,", "b,,,,", "c,,,", "d,,,", "e,,,", "f,,,", "g,,,", "a,,,"]]
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
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.ottava_command(octave=-2, selector=trinton.select_leaves_by_index([0, -1])),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartPianoPedal(), abjad.StopPianoPedal()]),
        selector=trinton.select_logical_ties_by_index(
            [4, 7, 15, 19, 22, -1], first=True, pitched=True
        ),
    ),
    voice=score["piano 3 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 10)),
    evans.RhythmHandler(evans.talea(rhythm.return_sieve_talea(27), 16)),
    trinton.force_rest(
        selector=trinton.select_leaves_by_index([-9, -8, -7, -6, -5, -4, -3, -2, -1])
    ),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        [["a,,,,", "b,,,,", "c,,,", "d,,,", "e,,,", "f,,,", "g,,,", "a,,,"]]
    ),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=trinton.pleaves(),
    ),
    trinton.ottava_command(
        octave=-2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    voice=score["piano 3 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    trinton.aftergrace_command(
        selector=trinton.select_leaves_by_index([0]), invisible=True
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18,)),
    trinton.aftergrace_command(
        selector=trinton.select_leaves_by_index([0]), invisible=True
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 18)),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartPianoPedal(), abjad.StopPianoPedal()]),
        selector=trinton.select_leaves_by_index([2, 40, 41, -1]),
    ),
    voice=score["piano 3 voice"],
    # beam_meter=True,
)

# globals

trinton.fermata_measures(
    score=score,
    measures=[19],
    fermata="middle-fermata",
    voice_names=None,
    font_size=10,
    clef_whitespace=True,
    blank=True,
    last_measure=False,
    padding=None,
    extra_offset=2.5,
    tag=abjad.Tag("+SCORE"),
)

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


trinton.make_music(
    lambda _: trinton.select_target(_, (9, 11)),
    trinton.spanner_command(
        strings=[
            r"\markup \fontsize #5 { Rit. }",
            library.return_metronome_markup(
                note_value="quarter",
                tempo=52,
                padding=0,
                # metric_modulation=abjad.MetricModulation(
                #     left_rhythm=abjad.Tuplet("5:4", r"c'16"),
                #     right_rhythm=abjad.Note("c'16"),
                # ),
                site="after",
                hspace=None,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=8.5,
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

for measure in [1, 2, 3, 4, 5, 6, 19]:
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
    7,
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
