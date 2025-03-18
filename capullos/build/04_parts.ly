    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 4/4
            s1 * 1
            \noBreak
            \noPageBreak
            \time 3/4
            s1 * 3/4
            - \tweak padding #14
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \fontsize #5 { Rit. } \hspace #0.5 }
            - \tweak bound-details.right.text \markup {
              \raise #0 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
              [\abjad-metric-modulation #3 #1 #3 #0 #'(1 . 1)]
                  \hspace #1
                  \abjad-metronome-mark-markup #3 #0 #2 #" 72 " 
              }
            }
            - \tweak bound-details.right.padding 12
            \startTextSpan
            \noBreak
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \stopTextSpan
            - \tweak padding #14
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \hspace #14 {} \hspace #0.5 }
            - \tweak bound-details.right.text \markup {
              \raise #0 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
              [\abjad-metric-modulation-tuplet-lhs #3 #0 #2 #3 #3 #0 #'(1 . 1)]
                  \hspace #1
                  \abjad-metronome-mark-markup #3 #0 #2 #" 108 " 
              }
            }
            - \tweak bound-details.right.padding 8
            \startTextSpan
            \noBreak
            \noPageBreak
            \time 2/4
            s1 * 1/2
            \stopTextSpan
            \break
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/4
            s1 * 1/2
            \noBreak
            \noPageBreak
            \time 3/4
            s1 * 3/4
            \noBreak
            \noPageBreak
            \time 2/4
            s1 * 1/2
            \noBreak
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/4
            s1 * 1/2
            \break
            \noPageBreak
            \time 4/4
            s1 * 1
            - \tweak padding #12
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \fontsize #5 { Rit. } \hspace #0.5 }
            - \tweak bound-details.right.text \markup {
              \raise #0 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
              [\abjad-metric-modulation-tuplet-lhs #2 #0 #9 #8 #3 #0 #'(1 . 1)]
                  \hspace #1
                  \abjad-metronome-mark-markup #3 #0 #2 #" 48 " 
              }
            }
            - \tweak bound-details.right.padding 10
            \startTextSpan
            \noPageBreak
            \time 3/4
            s1 * 3/4
            \stopTextSpan
            - \tweak padding #12
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \hspace #17 {} \hspace #0.5 }
            - \tweak bound-details.right.text \markup {
              \raise #0 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
              [\abjad-metric-modulation-tuplet-lhs #5 #0 #6 #5 #3 #0 #'(1 . 1)]
                  \hspace #1
                  \abjad-metronome-mark-markup #3 #0 #2 #" 160 " 
              }
            }
            - \tweak bound-details.right.padding 14
            \startTextSpan
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \stopTextSpan
            \noPageBreak
            \time 2/4
            s1 * 1/2
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/4
            s1 * 1/2
            \noPageBreak
            \time 3/4
            s1 * 3/4
            \noPageBreak
            \time 4/4
            s1 * 1
            \pageBreak
            \time 5/4
            s1 * 5/4
            \time 6/4
            s1 * 3/2
            \tweak text "×7" \startMeasureSpanner
            \bar ".|:"
            \override Score.BarLine.transparent = ##f
            \override Score.BarLine.X-extent = #'(4 . 4)
            \override Score.BarLine.bar-extent = #'(-2 . 2)
            \time 7/4
            s1 * 7/4
            \bar ":|."
            \revert Score.BarLine.X-extent
            \stopMeasureSpanner
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'10
            _ \extremely-long-fermata
            \once \override Score.BarLine.transparent = ##f
        }
        \context StaffGroup = "Staff Group"
        <<
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \times 4/6
                        {
                            \times 2/3
                            {
                                e'4
                                \>
                                _ (
                                e''4
                                g'4
                            }
                            bf'8
                            [
                            d'8
                            fs'8
                            fs''8
                            ]
                            \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                            <a'! c''! bf'! a''!>2
                            \arpeggio
                            \ppp
                            )
                            - \tweak Y-extent ##f
                            - \tweak Y-offset -6
                            - \tweak padding #0
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { {
                                            \hspace #1.25
                                            \override #'(font-size . 4.5)
                                            \override #'(font-name . "ekmelos")
                                            \override #'(whiteout-style . "outline")
                                            \override #'(whiteout . 1)
                                            \override #'(layer . 20)
                                            {
                                                \char ##xe220
                                            }
                                        } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup {
                                            \hspace #0.6
                                            \override #'(font-size . 4.5)
                                            \override #'(font-name . "ekmelos")
                                            \override #'(whiteout-style . "outline")
                                            \override #'(whiteout . 1)
                                            \override #'(layer . 20)
                                            {
                                                \char ##xe222
                                            }
                                        }
                            - \tweak bound-details.right.padding 5
                            \startTextSpanOne
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                        }
                        d'''8
                        \f
                        \stopTextSpanOne
                        [
                        ^ (
                        fs''8
                        a'8
                        bf'16.
                        \mp
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        cs''32
                        ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        cs''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        f''16
                        ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
                        f''32
                        a''16.
                        ]
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <b''! f''! c'''! ef''! cs'''!>4
                        :32
                        \arpeggio
                        \fp
                        \<
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <ef''! c'''! e'''! fs'''!>4
                        :32
                        \arpeggio
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <e'''! fs'''! g'''! g''!>4
                        :32
                        \arpeggio
                        )
                        g'32
                            _ #(make-dynamic-script (markup #:whiteout #:italic "fffp"))
                        [
                        \<
                        _ (
                        b'32
                        \once \override Staff.Accidental.stencil = ##f
                        e''32
                        - \natural-articulation
                        d''32
                        \once \override Staff.Accidental.stencil = ##f
                        af''8
                        - \flat-articulation
                        \once \override TupletBracket.padding = #4
                        \times 4/6
                        {
                            c'''32
                            e'''32
                            g'''32
                            \once \override Staff.Accidental.stencil = ##f
                            af'''32
                            - \flat-articulation
                            b'''32
                            \mf
                            \>
                            \set stemLeftBeamCount = 3
                            \set stemRightBeamCount = 1
                            d'''32
                        }
                        \once \override Staff.Accidental.stencil = ##f
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
                        fs''32
                        - \sharp-articulation
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        - \flat-articulation
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        - \natural-articulation
                        \once \override Staff.Accidental.stencil = ##f
                        ef'32
                        - \flat-articulation
                        )
                        ]
                        \times 2/3
                        {
                            g'8
                            \p
                            [
                            \>
                            _ (
                            bf'8
                            d''8
                            )
                            ]
                        }
                        d'16
                        \ppp
                        [
                        \<
                        _ (
                        f'16
                        a'16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        cs''16
                        \once \override TupletBracket.padding = #4
                        \times 2/3
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            f'16
                            f''16
                            \once \override Staff.Accidental.stencil = ##f
                            af''16
                            - \flat-articulation
                        }
                        b''8
                        ef''32
                        g''32
                        g''32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        b''32
                        \once \override TupletBracket.padding = #5
                        \times 2/3
                        {
                            \once \override Staff.Accidental.stencil = ##f
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            ef'''16
                            - \flat-articulation
                            \mf
                            \>
                            g''16
                            \once \override Staff.Accidental.stencil = ##f
                            bf'16
                            - \flat-articulation
                            )
                            ]
                        }
                        \once \override Staff.Accidental.stencil = ##f
                        b'8
                        - \natural-articulation
                        \p
                        [
                        _ (
                        d''32
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \once \override Staff.Accidental.stencil = ##f
                        fs''32
                        - \sharp-articulation
                        \once \override Staff.Accidental.stencil = ##f
                        bf''32
                        - \flat-articulation
                        \once \override Staff.Accidental.stencil = ##f
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        cs'''32
                        - \sharp-articulation
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        cs''16
                        f''16
                        af''16
                        c'''16
                        ]
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <fs''! f'''! fs'''! a''! c'''!>4
                        \arpeggio
                        \ff
                        )
                        - \tweak Y-extent ##f
                        - \tweak Y-offset -1.5
                        - \tweak padding #0
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { {
                                        \hspace #1.1
                                        \override #'(font-size . 4.5)
                                        \override #'(font-name . "ekmelos")
                                        \override #'(whiteout-style . "outline")
                                        \override #'(whiteout . 1)
                                        \override #'(layer . 20)
                                        {
                                            \char ##xe222
                                        }
                                    } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup {
                                        \hspace #0.6
                                        \override #'(font-size . 4.5)
                                        \override #'(font-name . "ekmelos")
                                        \override #'(whiteout-style . "outline")
                                        \override #'(whiteout . 1)
                                        \override #'(layer . 20)
                                        {
                                            \char ##xe220
                                        }
                                    }
                        - \tweak bound-details.right.padding 6
                        \startTextSpanOne
                        - \tweak stencil #constante-hairpin
                        \<
                        \times 2/3
                        {
                            \ottava 2
                            ef'''16
                            \pp
                            \stopTextSpanOne
                            [
                            \<
                            _ (
                            a'''16
                            \once \override Staff.Accidental.stencil = ##f
                            cs''''16
                            - \sharp-articulation
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            f''''16
                            \once \override TupletBracket.padding = #6
                            \times 4/5
                            {
                                \once \override Staff.Accidental.stencil = ##f
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 2
                                gs''''16
                                - \sharp-articulation
                                a''''16
                                \once \override Staff.Accidental.stencil = ##f
                                c'''''16
                                - \natural-articulation
                                \mf
                                \>
                                \once \override Staff.Accidental.stencil = ##f
                                ef''''16
                                - \flat-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                g''''16
                                - \natural-articulation
                                ]
                            }
                            \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                            <b'''! d''''! bf''''! b''''! b''''!>4
                            :32
                            \arpeggio
                            \pp
                            )
                            \<
                        }
                        c''''8
                        \f
                        [
                        - \tweak stencil #constante-hairpin
                        \<
                        _ (
                        e'''8
                        af''8
                        \ottava 0
                        b'8
                        ]
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <d''! fs! d'! fs'!>2
                            _ #(make-dynamic-script (markup #:whiteout #:italic "s. ppp"))
                        \arpeggio
                        )
                        - \tweak Y-extent ##f
                        - \tweak Y-offset 5
                        - \tweak padding #0
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { {
                                        \hspace #1.1
                                        \override #'(font-size . 4.5)
                                        \override #'(font-name . "ekmelos")
                                        \override #'(whiteout-style . "outline")
                                        \override #'(whiteout . 1)
                                        \override #'(layer . 20)
                                        {
                                            \char ##xe221
                                        }
                                    } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup {
                                        \hspace #0.6
                                        \override #'(font-size . 4.5)
                                        \override #'(font-name . "ekmelos")
                                        \override #'(whiteout-style . "outline")
                                        \override #'(whiteout . 1)
                                        \override #'(layer . 20)
                                        {
                                            \char ##xe220
                                        }
                                    }
                        - \tweak bound-details.right.padding 5
                        \startTextSpanOne
                        \times 2/3
                        {
                            d'8
                            \stopTextSpanOne
                            [
                            \<
                            _ (
                            fs'8
                            a'8
                        }
                        cs''16
                        fs''16
                        e''16
                        bf''16
                        \times 2/3
                        {
                            \ottava 2
                            d'''8
                            fs'''8
                            a'''8
                            \mf
                            ]
                        }
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <d'''! bf'''! c''''! cs''''! a'''!>4
                            _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                        :32
                        \arpeggio
                        ~
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <d''' bf''' c'''' cs'''' a'''>8
                        :64
                        \arpeggio
                        )
                        [
                        cs''''16.
                            _ #(make-dynamic-script (markup #:whiteout #:italic "s. p"))
                        ^ (
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        e''''32
                        ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        e''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        af''''16
                        ~
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 0
                        af''''32
                        )
                        ]
                        g''''16.
                            _ #(make-dynamic-script (markup #:whiteout #:italic "s. mf"))
                        _ (
                        \times 4/6
                        {
                            g'''4
                            g''''16
                            [
                            \<
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            g'''16
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            g''''16
                            \>
                            g'''16
                            ]
                            \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                            <g''''! b'''! c''''!>4
                            - \accent
                            \!
                            \arpeggio
                            )
                        }
                        \times 4/6
                        {
                            g''''16
                            - \accent
                            [
                            \<
                            g''''16
                            - \accent
                            g''''16
                            - \accent
                            g''''16
                            - \accent
                            g''''16
                            - \accent
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            g''''16
                            - \accent
                        }
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        g''''16
                        - \accent
                        g''''16
                        - \accent
                        g''''16
                        - \accent
                        g''''16
                        - \accent
                        ]
                        \ottava 0
                        \arpeggioArrowUp
                        \ottava 2
                        <af'''! g''''!>4
                        - \tenuto
                        \arpeggio
                        \ff
                        (
                        \ottava 0
                        \arpeggioArrowUp
                        \ottava 1
                        <a''! af'''!>4
                        - \tenuto
                        \arpeggio
                        \ottava 0
                        \arpeggioArrowUp
                        <bf'! a''!>4
                        - \tenuto
                        \arpeggio
                        )
                        \arpeggioArrowUp
                        \ottava 2
                        <af'''! g''''!>4
                        - \tenuto
                        \arpeggio
                        (
                        \ottava 0
                        \arpeggioArrowUp
                        \ottava 1
                        <a''! af'''!>4
                        - \tenuto
                        \arpeggio
                        \ottava 0
                        \arpeggioArrowUp
                        <bf'! a''!>4
                        - \tenuto
                        \arpeggio
                        \arpeggioArrowUp
                        <b! bf'!>4
                        - \tenuto
                        \arpeggio
                        )
                        \arpeggioArrowUp
                        \ottava 2
                        <af'''! g''''!>4
                        - \tenuto
                        \arpeggio
                        (
                        \ottava 0
                        \arpeggioArrowUp
                        \ottava 1
                        <a''! af'''!>4
                        - \tenuto
                        \arpeggio
                        \ottava 0
                        \arpeggioArrowUp
                        <bf'! a''!>4
                        - \tenuto
                        \arpeggio
                        \arpeggioArrowUp
                        <b! bf'!>4
                        - \tenuto
                        \arpeggio
                        \arpeggioArrowUp
                        \ottava -1
                        <c! b!>4
                        - \tenuto
                        \arpeggio
                        )
                        \ottava 0
                        \arpeggioArrowUp
                        \ottava 2
                        <af'''! g''''!>4
                        - \tenuto
                        \arpeggio
                        (
                        \ottava 0
                        \arpeggioArrowUp
                        \ottava 1
                        <a''! af'''!>4
                        - \tenuto
                        \arpeggio
                        \ottava 0
                        \arpeggioArrowUp
                        <bf'! a''!>4
                        - \tenuto
                        \arpeggio
                        \arpeggioArrowUp
                        <b! bf'!>4
                        - \tenuto
                        \arpeggio
                        \arpeggioArrowUp
                        \ottava -1
                        <c! b!>4
                        - \tenuto
                        \arpeggio
                        \ottava 0
                        \arpeggioArrowUp
                        \ottava -2
                        <df,! c!>4
                        - \tenuto
                        \arpeggio
                        )
                        \ottava 0
                        \arpeggioArrowUp
                        \ottava 2
                        <af'''! g''''!>4
                        - \tenuto
                        \arpeggio
                        (
                        \ottava 0
                        \arpeggioArrowUp
                        \ottava 1
                        <a''! af'''!>4
                        - \tenuto
                        \arpeggio
                        \ottava 0
                        \arpeggioArrowUp
                        <bf'! a''!>4
                        - \tenuto
                        \arpeggio
                        \arpeggioArrowUp
                        <b! bf'!>4
                        - \tenuto
                        \arpeggio
                        \arpeggioArrowUp
                        \ottava -1
                        <c! b!>4
                        - \tenuto
                        \arpeggio
                        \ottava 0
                        \arpeggioArrowUp
                        \ottava -2
                        <df,! c!>4
                        - \tenuto
                        \arpeggio
                        \arpeggioArrowUp
                        <d,,! df,!>4
                        - \tenuto
                        \arpeggio
                        )
                        \ottava 0
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                    }
                }
                \context timeSignatureStaff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 1
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 3/4
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 3/4
                        s1 * 1
                        s1 * 5/4
                        s1 * 3/2
                        s1 * 7/4
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                    }
                }
                \context leftHandStaff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        \times 4/6
                        {
                            r2.
                            \sustainOn
                            \clef "bass"
                            bf8
                            [
                            ^ (
                            af8
                            ]
                            \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                            <d,! d!>2
                            \arpeggio
                            )
                            \sustainOff
                            - \tweak Y-extent ##f
                            - \tweak Y-offset 4
                            - \tweak padding #0
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { {
                                            \hspace #1.25
                                            \override #'(font-size . 4.5)
                                            \override #'(font-name . "ekmelos")
                                            \override #'(whiteout-style . "outline")
                                            \override #'(whiteout . 1)
                                            \override #'(layer . 20)
                                            {
                                                \char ##xe222
                                            }
                                        } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup {
                                            \hspace #0.6
                                            \override #'(font-size . 4.5)
                                            \override #'(font-name . "ekmelos")
                                            \override #'(whiteout-style . "outline")
                                            \override #'(whiteout . 1)
                                            \override #'(layer . 20)
                                            {
                                                \char ##xe220
                                            }
                                        }
                            - \tweak bound-details.right.padding 5
                            \startTextSpanOne
                        }
                        s1 * 3/4
                        \stopTextSpanOne
                        \sustainOn
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        \clef "treble"
                        <b! d'! b'!>4
                        :32
                        \arpeggio
                        _ (
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <g! g'! af'!>4
                        :32
                        \arpeggio
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <fs'! e'! c'!>4
                        :32
                        \arpeggio
                        )
                        \sustainOff
                        r4
                        \sustainOn
                        \once \override TupletBracket.padding = #4
                        \times 4/6
                        {
                            e''32
                            [
                            ^ (
                            \once \override Staff.Accidental.stencil = ##f
                            bf'32
                            - \flat-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            af'32
                            - \flat-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            gf'32
                            - \flat-articulation
                            e'32
                            \once \override Staff.Accidental.stencil = ##f
                            \set stemLeftBeamCount = 3
                            \set stemRightBeamCount = 1
                            df'32
                            - \flat-articulation
                        }
                        \once \override Staff.Accidental.stencil = ##f
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
                        af'32
                        - \flat-articulation
                        \once \override Staff.Accidental.stencil = ##f
                        f'32
                        - \natural-articulation
                        \once \override Staff.Accidental.stencil = ##f
                        ef'32
                        - \flat-articulation
                        \once \override Staff.Accidental.stencil = ##f
                        df'32
                        - \flat-articulation
                        )
                        \sustainOff
                        ]
                        \afterGrace
                        r4
                        \sustainOn
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                            \sustainOff
                        }
                        \clef "bass"
                        bf16
                        [
                        \sustainOn
                        _ (
                        e16
                        d16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        b,16
                        \times 2/3
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            a16
                            \once \override Staff.Accidental.stencil = ##f
                            af16
                            - \flat-articulation
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            c16
                        }
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
                        c'32
                        \once \override Staff.Accidental.stencil = ##f
                        bf32
                        - \flat-articulation
                        \once \override Staff.Accidental.stencil = ##f
                        af32
                        - \flat-articulation
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        f32
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
                        c'32
                        \once \override Staff.Accidental.stencil = ##f
                        a32
                        - \natural-articulation
                        \once \override Staff.Accidental.stencil = ##f
                        gf32
                        - \flat-articulation
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        e32
                        \times 2/3
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            d16
                            a16
                            g'16
                            )
                            \sustainOff
                            ]
                        }
                        f'8
                        [
                        \sustainOn
                        _ (
                        d'32
                        c'32
                        \once \override Staff.Accidental.stencil = ##f
                        gf32
                        - \flat-articulation
                        \once \override Staff.Accidental.stencil = ##f
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        ef32
                        - \flat-articulation
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
                        df'32
                        \once \override Staff.Accidental.stencil = ##f
                        b32
                        - \natural-articulation
                        a32
                        \once \override Staff.Accidental.stencil = ##f
                        ef32
                        - \flat-articulation
                        c32
                        a,32
                        g,32
                        f,32
                        ]
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <c! d! b,!>4
                        \arpeggio
                        )
                        \sustainOff
                        - \tweak Y-extent ##f
                        - \tweak Y-offset 5
                        - \tweak padding #0
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { {
                                        \hspace #1.25
                                        \override #'(font-size . 4.5)
                                        \override #'(font-name . "ekmelos")
                                        \override #'(whiteout-style . "outline")
                                        \override #'(whiteout . 1)
                                        \override #'(layer . 20)
                                        {
                                            \char ##xe220
                                        }
                                    } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup {
                                        \hspace #0.6
                                        \override #'(font-size . 4.5)
                                        \override #'(font-name . "ekmelos")
                                        \override #'(whiteout-style . "outline")
                                        \override #'(whiteout . 1)
                                        \override #'(layer . 20)
                                        {
                                            \char ##xe222
                                        }
                                    }
                        - \tweak bound-details.right.padding 5
                        \startTextSpanOne
                        \times 2/3
                        {
                            \ottava 2
                            a''16
                            \stopTextSpanOne
                            [
                            \sustainOn
                            ^ (
                            g''16
                            f''16
                            d''16
                            ]
                            \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                            <a'! f''!>4
                            :32
                            \arpeggio
                            \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                {
                                    \context Score = "Score"
                                    \with
                                    {
                                        \override SpacingSpanner.spacing-increment = 0.5
                                        proportionalNotationDuration = ##f
                                    }
                                    <<
                                        \context RhythmicStaff = "Rhythmic_Staff"
                                        \with
                                        {
                                            \remove Time_signature_engraver
                                            \remove Staff_symbol_engraver
                                            \override Stem.direction = #up
                                            \override Stem.length = 5
                                            \override TupletBracket.bracket-visibility = ##t
                                            \override TupletBracket.direction = #up
                                            \override TupletBracket.minimum-length = 4
                                            \override TupletBracket.padding = 1.25
                                            \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                            \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                            \override TupletNumber.font-size = 0
                                            \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                            tupletFullLength = ##t
                                        }
                                        {
                                            c'4
                                        }
                                    >>
                                    \layout
                                    {
                                        indent = 0
                                        ragged-right = ##t
                                    }
                                }
                            \times 1/1
                            {
                                \once \override Beam.grow-direction = #left
                                gf'32 * 43/32
                                [
                                e''32 * 49/32
                                d''32 * 17/8
                                b''32 * 3
                                )
                                \sustainOff
                                ]
                            }
                            \revert TupletNumber.text
                        }
                        f'''8
                        [
                        \sustainOn
                        ^ (
                        ef'''8
                        c''8
                        \ottava 0
                        bf8
                        )
                        ]
                        r2
                        \sustainOff
                        a16
                        [
                        \sustainOn
                        ^ (
                        df'16
                        df16
                        b,16
                        \times 2/3
                        {
                            \clef "treble"
                            a'8
                            gf'8
                            df'8
                        }
                        \ottava 2
                        \clef "bass"
                        bf''16
                        g''16
                        f''16
                        ef''16
                        ]
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <bf'! cs''! a''!>4
                        :32
                        \arpeggio
                        ~
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <bf' cs'' a''>8
                        :64
                        \arpeggio
                        )
                        \sustainOff
                        [
                        \clef "treble"
                        af'''8
                        \sustainOn
                        _ (
                        gf'''8
                        ef'''8
                        )
                        \sustainOff
                        ]
                        r16
                        \sustainOn
                        \clef "bass"
                        g'16
                        [
                        ^ (
                        g''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        g'16
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        g''16
                        \sustainOff
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <af! e'! g'!>16
                        - \accent
                        \arpeggio
                        ~
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <af e' g'>16
                        \arpeggio
                        g''16
                        )
                        ]
                        \ottava 0
                        s1 * 1/2
                        \arpeggioArrowDown
                        \ottava 2
                        <bf'! a''!>4
                        - \tenuto
                        \arpeggio
                        (
                        \sustainOn
                        \ottava 0
                        \arpeggioArrowDown
                        \ottava 1
                        <b! bf'!>4
                        - \tenuto
                        \arpeggio
                        \ottava 0
                        \arpeggioArrowDown
                        <c! b!>4
                        - \tenuto
                        \arpeggio
                        )
                        \sustainOff
                        \arpeggioArrowDown
                        \ottava 2
                        <bf'! a''!>4
                        - \tenuto
                        \arpeggio
                        (
                        \sustainOn
                        \ottava 0
                        \arpeggioArrowDown
                        \ottava 1
                        <b! bf'!>4
                        - \tenuto
                        \arpeggio
                        \ottava 0
                        \arpeggioArrowDown
                        <c! b!>4
                        - \tenuto
                        \arpeggio
                        \arpeggioArrowDown
                        <df,! c!>4
                        - \tenuto
                        \arpeggio
                        )
                        \sustainOff
                        \arpeggioArrowDown
                        \ottava 2
                        <bf'! a''!>4
                        - \tenuto
                        \arpeggio
                        (
                        \sustainOn
                        \ottava 0
                        \arpeggioArrowDown
                        \ottava 1
                        <b! bf'!>4
                        - \tenuto
                        \arpeggio
                        \ottava 0
                        \arpeggioArrowDown
                        <c! b!>4
                        - \tenuto
                        \arpeggio
                        \arpeggioArrowDown
                        <df,! c!>4
                        - \tenuto
                        \arpeggio
                        \arpeggioArrowDown
                        \ottava -1
                        <d,,! df,!>4
                        - \tenuto
                        \arpeggio
                        )
                        \sustainOff
                        \ottava 0
                        \arpeggioArrowDown
                        \ottava 2
                        <bf'! a''!>4
                        - \tenuto
                        \arpeggio
                        (
                        \sustainOn
                        \ottava 0
                        \arpeggioArrowDown
                        \ottava 1
                        <b! bf'!>4
                        - \tenuto
                        \arpeggio
                        \ottava 0
                        \arpeggioArrowDown
                        <c! b!>4
                        - \tenuto
                        \arpeggio
                        \arpeggioArrowDown
                        <df,! c!>4
                        - \tenuto
                        \arpeggio
                        \arpeggioArrowDown
                        \ottava -1
                        <d,,! df,!>4
                        - \tenuto
                        \arpeggio
                        \ottava 0
                        \arpeggioArrowDown
                        \ottava -2
                        <ef,,,! d,,!>4
                        - \tenuto
                        \arpeggio
                        )
                        \sustainOff
                        \ottava 0
                        \arpeggioArrowDown
                        \ottava 2
                        <bf'! a''!>4
                        - \tenuto
                        \arpeggio
                        (
                        \sustainOn
                        \ottava 0
                        \arpeggioArrowDown
                        \ottava 1
                        <b! bf'!>4
                        - \tenuto
                        \arpeggio
                        \ottava 0
                        \arpeggioArrowDown
                        <c! b!>4
                        - \tenuto
                        \arpeggio
                        \arpeggioArrowDown
                        <df,! c!>4
                        - \tenuto
                        \arpeggio
                        \arpeggioArrowDown
                        \ottava -1
                        <d,,! df,!>4
                        - \tenuto
                        \arpeggio
                        \ottava 0
                        \arpeggioArrowDown
                        \ottava -2
                        <ef,,,! d,,!>4
                        - \tenuto
                        \arpeggio
                        \arpeggioArrowDown
                        <ef,,,!>4
                        - \tenuto
                        \arpeggio
                        )
                        \sustainOff
                        \ottava 0
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                        \override Staff.TextScript.whiteout = ##f
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        - \tweak X-extent ##f
                        _ \markup \fontsize #4 { \hspace #13 \column \override #'(font-name . "Bodoni72 Book Italic") { \line { February - March 2025 } \line { Iowa City, IA } } }
                        \bar "|."
                    }
                }
                \context thirdStaff = "piano 4 staff"
                {
                    \context Voice = "piano 4 voice"
                    {
                        s1 * 1
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 3/4
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 3/4
                        s1 * 1
                        s1 * 5/4
                        s1 * 3/2
                        s1 * 7/4
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
