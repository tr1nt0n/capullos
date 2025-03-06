import abjad
import baca
import evans
import trinton
import itertools
from abjadext import rmakers
from capullos import rhythm


vectors = rhythm.sieve.get_boolean_vector(total_length=100)

numerator_list = []

true_counter = 1

false_counter = 1

for i, vector in enumerate(vectors):
    cursor = i + 1
    cursor = cursor % len(vectors)
    next_vector = vectors[cursor]

    if vector == 1 and next_vector == 1:
        true_counter += 1

    if vector == 1 and next_vector == 0:
        true_counter += 1
        numerator = true_counter
        numerator_list.append(numerator)
        true_counter = 1

    if vector == 0 and next_vector == 0:
        false_counter += 1

    if vector == 0 and next_vector == 1:
        false_counter += 1
        numerator = false_counter
        numerator_list.append(numerator)
        false_counter = 1

sieve_time_signatures = []

for numerator in numerator_list:

    if numerator % 2 == 0 and numerator != 2 and numerator != 12:
        tup = (int(numerator / 2), 4)

    else:
        tup = (numerator, 8)

    sieve_time_signatures.append(tup)


def return_sieve_time_signatures(index=0):
    return trinton.rotated_sequence(
        sieve_time_signatures, index % len(sieve_time_signatures)
    )
