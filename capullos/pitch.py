import abjad
import baca
import evans
import trinton
import itertools
from abjadext import rmakers
from capullos import rhythm

vectors = rhythm.sieve.get_boolean_vector(total_length=100)

interval_list_1 = []

interval_counter = 1

for vector in vectors:
    if vector == 1:
        interval_list_1.append(interval_counter)
        interval_counter = 1
    else:
        interval_counter += 1
        interval_list_1.append(interval_counter)

interval_list = []

interval_counter = 0

for interval in interval_list_1:
    if interval_counter % 5 == 0 or interval_counter % 5 == 3:
        interval_list.append(interval)
    if interval_counter % 5 == 1:
        new_interval = interval - 12
        interval_list.append(new_interval)
    if interval_counter % 5 == 2:
        new_interval = interval * -1
        interval_list.append(new_interval)
    if interval_counter % 5 == 4:
        new_interval = interval + 12
        interval_list.append(new_interval)

    interval_counter += 1


def sieve_transposition(
    selector=trinton.logical_ties(pitched=True, grace=False), index=0
):
    def transposition(argument):
        selections = selector(argument)
        intervals = trinton.rotated_sequence(interval_list, index % len(interval_list))

        previous_pitch = 0

        for selection, interval in zip(selections, intervals):
            first_leaf = abjad.select.leaf(selection, 0)

            if previous_pitch == 0:
                abjad.mutate.transpose(selection, interval)

            else:
                previous_pitch_class = previous_pitch.pitch_class

                previous_pitch_class = previous_pitch_class.number

                new_interval = previous_pitch_class + interval

                abjad.mutate.transpose(selection, new_interval)

            previous_pitch = first_leaf.written_pitch

    return transposition


def make_sieve_chords(hand="rh", index=0, selector=rhythm.punctuation_selector()):
    def make_chords(argument):
        selections = selector(argument)

        if hand == "rh":
            note_amount = 4

        if hand == "lh":
            note_amount = 2

        interval_sets = abjad.sequence.partition_by_counts(
            sequence=interval_list,
            counts=[note_amount for _ in range(0, 100)],
            overhang=True,
        )

        interval_sets = trinton.rotated_sequence(interval_sets, index)

        for selection, interval_set in zip(selections, interval_sets):
            selection_pitch = abjad.select.leaf(selection, 0).written_pitch.number

            chord_list = [selection_pitch]

            for i, interval in enumerate(interval_set):
                if i != 0:
                    previous_interval = interval_set[i - 1]
                    new_interval = interval + previous_interval

                else:
                    new_interval = selection_pitch + interval

                new_note = selection_pitch + new_interval

                chord_list.append(new_note)

            handler = evans.PitchHandler(pitch_list=[chord_list])

            handler(selection)

    return make_chords
