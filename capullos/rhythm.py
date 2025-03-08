import abjad
import baca
import evans
import trinton
import itertools
from abjadext import rmakers

# logistic map talea

logistic_map = [_ for _ in trinton.logistic_map(x=4, r=3.57, n=9) if _ > 2]

logistic_map = trinton.remove_adjacent(logistic_map)


def logistic_map_sequence(index):
    return trinton.rotated_sequence(logistic_map, index % len(logistic_map))


# sieves

sieve_1a = abjad.index([0, 1, 7], 8)
sieve_1b = abjad.index([1, 3], 5)
sieve_1 = sieve_1a & sieve_1b

sieve_2a = abjad.index([0, 1, 2], 8)
sieve_2b = abjad.index([0], 5)
sieve_2 = sieve_2a & sieve_2b

sieve_3 = abjad.index([3], 8)

sieve_4 = abjad.index([4], 8)

sieve_5a = abjad.index([5, 6], 8)
sieve_5b = abjad.index([2, 3, 4], 5)
sieve_5 = sieve_5a & sieve_5b

sieve_6a = abjad.index([1], 8)
sieve_6b = abjad.index([2], 5)
sieve_6 = sieve_6a & sieve_6b

sieve_7a = abjad.index([1], 8)
sieve_7b = abjad.index([2], 5)
sieve_7 = sieve_7a & sieve_7b

sieve = sieve_1 | sieve_2 | sieve_3 | sieve_4 | sieve_5 | sieve_6 | sieve_7


def punctuation_selector(
    first=False, last=False, pitched=None, grace=None, exclude=None
):
    def selector(argument):
        out = []
        index = []
        pattern = sieve
        ties = abjad.select.logical_ties(argument, pitched=pitched, grace=grace)
        if exclude is not None:
            ties = abjad.select.exclude(ties, exclude)
        for i in range(len(ties)):
            if pattern.matches_index(i, len(ties)):
                index.append(i)
        if first is True or last is True:
            if first is True:
                for i in index:
                    out.append(ties[i][0])
            if last is True:
                for i in index:
                    out.append(ties[i][-1])
        else:
            for i in index:
                out.append(ties[i])
        return out

    return selector


def punctuation_rhythm(
    stage=1, denominator=16, index=0, extra_counts=[0], treat_tuplets=True
):
    def rhythm(durations):
        container = abjad.Container()
        initial_talea = rmakers.talea(
            durations,
            logistic_map_sequence(index),
            denominator,
            extra_counts=extra_counts,
        )
        container.extend(initial_talea)
        selector = punctuation_selector()
        relevant_ties = selector(container)

        if stage > 1:
            for tie in relevant_ties:
                first_leaf = abjad.select.leaf(tie, 0)
                leaf_duration = abjad.get.duration(first_leaf, preprolated=True)

                new_components = []

                if leaf_duration <= abjad.Duration((1, 8)):
                    tuplet = rmakers.tuplet([leaf_duration], [(1, 1, 1)])
                    rmakers.rewrite_dots(tuplet)
                    rmakers.trivialize(tuplet)
                    rmakers.rewrite_rest_filled(tuplet)
                    rmakers.rewrite_sustained(tuplet)
                    rmakers.extract_trivial(tuplet)
                    trinton.respell_tuplets(tuplet, rewrite_brackets=False)
                    last_tuplet_leaf = abjad.select.leaf(tuplet, -1)
                    abjad.attach(abjad.Tie(), last_tuplet_leaf)
                    new_components.extend(tuplet)

                else:
                    tuplet = rmakers.tuplet([abjad.Duration(1, 8)], [(1, 1, 1)])
                    rmakers.rewrite_dots(tuplet)
                    rmakers.trivialize(tuplet)
                    rmakers.rewrite_rest_filled(tuplet)
                    rmakers.rewrite_sustained(tuplet)
                    rmakers.extract_trivial(tuplet)
                    trinton.respell_tuplets(tuplet, rewrite_brackets=False)
                    last_tuplet_leaf = abjad.select.leaf(tuplet, -1)
                    abjad.attach(abjad.Tie(), last_tuplet_leaf)
                    new_components.extend(tuplet)
                    remainder = leaf_duration - abjad.Duration((1, 8))
                    new_note = rmakers.note([remainder])
                    new_leaves = abjad.select.leaves(new_note)
                    new_components.extend(new_leaves)

                    if abjad.get.has_indicator(first_leaf, abjad.Tie):
                        last_leaf = abjad.select.leaf(new_note, -1)
                        abjad.attach(abjad.Tie(), last_leaf)

                abjad.mutate.replace(first_leaf, new_components)

        if stage == 3:
            tuplets = abjad.select.tuplets(container)

            for tuplet in tuplets:
                if not isinstance(abjad.get.parentage(tuplet).parent, abjad.Tuplet):
                    leaves = abjad.select.leaves(tuplet)
                    for leaf in leaves:
                        abjad.detach(abjad.Tie, leaf)
                    rmakers.force_rest(leaves)
                else:
                    leaves = abjad.select.leaves(tuplet)
                    for leaf in leaves:
                        abjad.detach(abjad.Tie, leaf)
                    rmakers.force_note(leaves)

        if treat_tuplets is True:
            rmakers.rewrite_dots(abjad.select.tuplets(container))
            rmakers.trivialize(abjad.select.tuplets(container))
            rmakers.rewrite_rest_filled(abjad.select.tuplets(container))
            rmakers.rewrite_sustained(abjad.select.tuplets(container))
            rmakers.extract_trivial(abjad.select.tuplets(container))
            trinton.respell_tuplets(
                abjad.select.tuplets(container), rewrite_brackets=False
            )

        components = abjad.mutate.eject_contents(container)

        return components

    return rhythm


vectors = sieve.get_boolean_vector(total_length=100)

sieve_talea = []

false_counter = 1

for i, vector in enumerate(vectors):
    cursor = i + 1
    cursor = cursor % len(vectors)
    next_vector = vectors[cursor]

    if next_vector == 0:
        false_counter += 1

    if vector == 0 and next_vector == 1:
        note_value = false_counter
        sieve_talea.append(note_value)
        false_counter = 1

    if vector == 1 and next_vector == 1:
        false_counter = 1
        note_value = false_counter
        sieve_talea.append(note_value)


def return_sieve_talea(index=0):
    return trinton.rotated_sequence(sieve_talea, index % len(sieve_talea))


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


def card_rhythm():
    def make_rhythms(durations):
        phrases = abjad.sequence.partition_by_counts(
            sequence=durations,
            counts=numerator_list,
            overhang=True,
        )

        container = abjad.Container()

        for phrase in phrases:
            last_module = phrase[-1]
            all_except_last_module = abjad.select.exclude(phrase, [-1])

            rhythm_selections = rmakers.note(all_except_last_module)
            container.extend(abjad.select.components(rhythm_selections))

            last_numerator = int(last_module.numerator)
            last_denominator = int(last_module.denominator)
            meter = abjad.Meter(last_module)

            beat_regions = []

            if last_numerator % 3 == 0 and last_numerator != 15:
                regions = []
                if meter.is_compound is True:
                    range_limit = int(last_numerator / 3)
                    for _ in range(0, range_limit):
                        regions.append(abjad.Duration((3, last_denominator)))

                else:
                    for _ in range(0, last_numerator):
                        regions.append(abjad.Duration((1, last_denominator)))

                beat_regions.append(regions)

            if last_numerator % 2 == 0 and last_numerator % 3 != 0:
                regions = []
                for _ in range(0, last_numerator):
                    regions.append(abjad.Duration((1, last_denominator)))

                beat_regions.append(regions)

            def is_prime(n):
                for i in range(2, n):
                    if (n % i) == 0:
                        return False
                    else:
                        return True

            if (
                is_prime(last_numerator) is True
                and last_numerator > 3
                and last_numerator % 9 != 0
            ):
                regions = []
                regions.append(abjad.Duration((3, last_denominator)))

                for _ in range(0, last_numerator):
                    if sum(regions) == last_numerator / last_denominator:
                        pass
                    else:
                        regions.append(abjad.Duration((2, last_denominator)))

                regions = trinton.rotated_sequence(regions, 1)

                beat_regions.append(regions)

            rhythm_selections = rmakers.note(beat_regions[0][0:-1])
            notes = abjad.select.components(rhythm_selections)
            container.extend(notes)

            container.append(abjad.Rest(written_duration=beat_regions[0][-1]))

        components = abjad.mutate.eject_contents(container)
        return components

    return make_rhythms


def gesture_rhythms(
    stage=1, index=0, nested_selector=punctuation_selector(), treat_tuplets=True
):
    new_numerator_list = trinton.remove_adjacent(numerator_list)
    new_numerator_list = trinton.rotated_sequence(
        new_numerator_list, index % len(new_numerator_list)
    )

    def make_rhythms(durations):
        tuplets = []

        for item in new_numerator_list:
            tuplet = []
            for _ in range(0, item):
                tuplet.append(1)
            tuplet = tuple(tuplet)
            tuplets.append(tuplet)

        container = abjad.Container()

        rhythm_selections = rmakers.tuplet(durations, tuplets)
        container.extend(rhythm_selections)

        if stage > 1:
            nested_tuplets = []
            for item in new_numerator_list:
                nested_tuplet = []
                if item < 3:
                    item = item * 2
                for _ in range(0, item):
                    nested_tuplet.append(1)
                nested_tuplet = tuple(nested_tuplet)
                nested_tuplets.append(nested_tuplet)

            tupleted_ties = nested_selector(container)

            for tie, tuplet in zip(tupleted_ties, itertools.cycle(nested_tuplets)):
                tie_duration = abjad.get.duration(tie, preprolated=True)
                rhythm_selections = rmakers.tuplet([tie_duration], [tuplet])

                abjad.mutate.replace(tie, rhythm_selections)

        if treat_tuplets is True:
            rmakers.rewrite_dots(abjad.select.tuplets(container))
            rmakers.trivialize(abjad.select.tuplets(container))
            rmakers.rewrite_rest_filled(abjad.select.tuplets(container))
            rmakers.rewrite_sustained(abjad.select.tuplets(container))
            rmakers.extract_trivial(abjad.select.tuplets(container))
            trinton.respell_tuplets(
                abjad.select.tuplets(container), rewrite_brackets=False
            )

        components = abjad.mutate.eject_contents(container)

        return components

    return make_rhythms
