import abjad
import baca
import evans
import trinton
import itertools
from abjadext import rmakers
from capullos import library
from capullos import rhythm
from capullos import pitch

score = library.capullos_score([])

# rh music


# globals

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.InstrumentName(
#                 context="GrandStaff",
#                 markup=abjad.Markup(
#                     '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Piano }'
#                 ),
#             ),
#             library.return_metronome_markup(
#                 note_value="dotted quarter",
#                 tempo=40,
#                 padding=14,
#                 metric_modulation=None,
#                 site="after",
#                 hspace=None,
#                 string_only=False,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["piano 1 voice"],
# )
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
    segment_path="/Users/trintonprater/scores/capullos/capullos/sections/01",
    build_path="/Users/trintonprater/scores/capullos/capullos/build",
    segment_name="02",
    includes=[
        "/Users/trintonprater/scores/capullos/capullos/build/capullos-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
