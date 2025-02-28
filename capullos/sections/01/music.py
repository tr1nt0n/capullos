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
    evans.RhythmHandler(evans.talea(rhythm.logistic_map_sequence(0), 16, extra_counts=[-1])),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(["g''''"]),
    trinton.ottava_command(
        octave=2,
        selector=trinton.select_leaves_by_index([0, -1])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">")
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ffff"), abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3,)),
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
            evans.talea([1,], 32),
        ),
        direction=abjad.UP,
        voice_name=r"primary voice",
        temp_name=r"temp",
    ),
    voice=score["piano 1 voice"]
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
            abjad.Dynamic("pp")
        ],
        selector=trinton.select_leaves_by_index([0, 0, 4, 4, -1], pitched=True),
        direction=abjad.DOWN
    ),
    voice=score["primary voice"]
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 16)),
    # evans.RhythmHandler(evans.talea(rhythm.logistic_map_sequence(9), 16, extra_counts=[-1])),
    evans.RhythmHandler(rhythm.punctuation_rhythm(index=9, extra_counts=[-1])),
    # trinton.respell_tuplets_command(),
    # trinton.rewrite_meter_command(),
    # evans.PitchHandler(["g''''"]),
    # trinton.ottava_command(
    #     octave=2,
    #     selector=trinton.select_leaves_by_index([0, -1])
    # ),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.Articulation(">")
    #     ],
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    # ),
    # trinton.attachment_command(
    #     attachments=[abjad.Dynamic("ffff")],
    #     selector=trinton.select_leaves_by_index([0], pitched=True)
    # ),
    voice=score["piano 1 voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_eighths_preprocessor((3,))
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(evans.talea(rhythm.logistic_map_sequence(0), 16)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(["g''''"]),
    trinton.ottava_command(
        octave=2,
        selector=trinton.select_leaves_by_index([0, -1])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">")
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    voice=score["piano 3 voice"],
    beam_meter=True
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.tuplet([(1, 1, 1)])),
    evans.PitchHandler(["g"]),
    pitch.sieve_transposition(index=0),
    abjad.beam,
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass")
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartPianoPedal(),
            abjad.StopPianoPedal(),
        ],
        selector=trinton.select_leaves_by_index([0, -1])
    ),
    voice=score["piano 3 voice"]
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 16)),
    evans.RhythmHandler(evans.talea(rhythm.logistic_map_sequence(10), 16)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(["g''''"]),
    trinton.ottava_command(
        octave=2,
        selector=trinton.select_leaves_by_index([0, -1])
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble"),],
        selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    voice=score["piano 3 voice"],
    beam_meter=True
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
                padding=8,
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

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.InstrumentName(
#                 context="Staff",
#                 markup=abjad.Markup(
#                     '\markup \\with-color \\一 \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Tiefpassfilter }'
#                 ),
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["piano 5 voice"],
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 [
#                     r"^ \markup {",
#                     r"  \raise #13.5 \with-dimensions-from \null",
#                     r"  \override #'(font-size . 5.5)",
#                     r"  \concat {",
#                     r"""\abjad-metronome-mark-markup #2 #0 #2 #"77" """,
#                     r"  }",
#                     r"}",
#                 ],
#                 site="after",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["Global Context"],
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 5)),
#     trinton.hooked_spanner_command(
#         string=r"""\markup \with-color \四 \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line {{ ( ZUSPIEL ) }}""",
#         selector=trinton.select_leaves_by_index([0, -1]),
#         padding=10,
#         right_padding=45,
#         full_string=True,
#         style="solid-line-with-hook",
#         tweaks=[r"- \tweak color \四"],
#         tag=abjad.Tag("+SCORE"),
#     ),
#     trinton.hooked_spanner_command(
#         string=r"""\markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line {{ ( ZUSPIEL ) }}""",
#         selector=trinton.select_leaves_by_index([0, -1]),
#         padding=10,
#         right_padding=45,
#         full_string=True,
#         style="solid-line-with-hook",
#         # tweaks=[r"- \tweak color \四"],
#         tag=abjad.Tag("+PARTS"),
#     ),
#     voice=score["Global Context"],
# )
#
# for voice_name in ["piano 1 voice", "piano 3 voice"]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (1,)),
#         trinton.attachment_command(
#             attachments=[
#                 abjad.KeySignature(abjad.NamedPitchClass("cs"), abjad.Mode("minor")),
#             ],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score[voice_name],
#     )
#
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (5,)),
#         trinton.attachment_command(
#             attachments=[
#                 abjad.KeySignature(abjad.NamedPitchClass("fs"), abjad.Mode("major")),
#             ],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score[voice_name],
#     )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (3, 4)),
#     trinton.linear_attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r'\tweak text "×3" \startMeasureSpanner', site="absolute_before"
#             ),
#             abjad.BarLine(".|:", site="before"),
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.BarLine.transparent = ##f",
#                 site="absolute_before",
#             ),
#             abjad.BarLine(":|.", site="after"),
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.BarLine.transparent = ##f", site="after"
#             ),
#             abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
#         ],
#         selector=trinton.select_leaves_by_index([0, 0, 0, -1, -1, -1]),
#     ),
#     voice=score["Global Context"],
# )

# beautification

# library.handle_accidentals(score=score, force_accidentals=False)

library.clean_time_signatures(score=score)

trinton.remove_redundant_time_signatures(score=score)

# library.reset_line_positions(score=score, voice_names=["piano 5 voice"])

# trinton.whiteout_empty_staves(
#     score=score,
#     voice_names=["piano 4 voice", "piano 5 voice"],
#     cutaway="blank",
#     tag=None,
# )

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
