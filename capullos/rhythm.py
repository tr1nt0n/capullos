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


def punctuation_rhythm(stage=1, denominator=16, index=0, extra_counts=[0]):
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

        rmakers.rewrite_dots(abjad.select.tuplets(container))
        rmakers.trivialize(abjad.select.tuplets(container))
        rmakers.rewrite_rest_filled(abjad.select.tuplets(container))
        rmakers.rewrite_sustained(abjad.select.tuplets(container))
        rmakers.extract_trivial(abjad.select.tuplets(container))
        trinton.respell_tuplets(abjad.select.tuplets(container), rewrite_brackets=False)
        components = abjad.mutate.eject_contents(container)

        return components

    return rhythm
