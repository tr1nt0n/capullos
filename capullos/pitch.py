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

def sieve_transposition(selector=trinton.logical_ties(pitched=True, grace=False), index=0):
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
