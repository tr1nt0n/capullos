import abjad
import baca
import evans
import trinton
import itertools
from abjadext import rmakers
from capullos import rhythm

# sieve time signatures

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


# helianthated time signatures

partitioned_numerators = abjad.sequence.partition_by_counts(
    sequence=[3, 2, 2, 3, 4, 2, 3, 3, 2, 4],
    counts=[
        3,
        3,
        4,
    ],
    overhang=True,
)

helianthated_numerators = baca.sequence.helianthate(partitioned_numerators, n=-1, m=1)

numerator_sequence = evans.Sequence(helianthated_numerators).flatten()

helianthated_ts = []

for _ in numerator_sequence:
    helianthated_ts.append((_, 4))
