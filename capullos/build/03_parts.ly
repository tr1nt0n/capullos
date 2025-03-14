    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 9/8
            s1 * 9/8
            ^ \markup {
              \raise #17.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #2 #" 72 " 
              }
            }
            \noBreak
            \noPageBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'10
            _ \long-fermata
            \break
            \noPageBreak
            \once \override Score.BarLine.transparent = ##f
            \time 3/8
            s1 * 3/8
            \noBreak
            \noPageBreak
            \time 2/8
            s1 * 1/4
            \noBreak
            \noPageBreak
            \time 3/8
            s1 * 3/8
            \noBreak
            \noPageBreak
            \time 2/4
            s1 * 1/2
            \noBreak
            \noPageBreak
            \time 2/8
            s1 * 1/4
            \noBreak
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \noBreak
            \noPageBreak
            \time 3/4
            s1 * 3/4
            \noBreak
            \noPageBreak
            \time 2/8
            s1 * 1/4
            \break
            \noPageBreak
            \time 3/8
            s1 * 3/8
            \noBreak
            \noPageBreak
            \time 2/8
            s1 * 1/4
            \noBreak
            \noPageBreak
            \time 3/8
            s1 * 3/8
            \noBreak
            \noPageBreak
            \time 2/8
            s1 * 1/4
            \noBreak
            \noPageBreak
            \time 3/8
            s1 * 3/8
            \noBreak
            \noPageBreak
            \time 2/8
            s1 * 1/4
            \noBreak
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \noBreak
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \break
            \pageBreak
            \time 2/4
            s1 * 1/2
            \noBreak
            \noPageBreak
            \time 2/8
            s1 * 1/4
            \noBreak
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            - \tweak padding #19
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \fontsize #5 { Rit. } \hspace #0.5 }
            - \tweak bound-details.right.text \markup {
              \raise #0 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
              [\abjad-metric-modulation #3 #1 #3 #0 #'(1 . 1)]
                  \hspace #1
                  \abjad-metronome-mark-markup #3 #0 #2 #" 48 " 
              }
            }
            \startTextSpan
            \noBreak
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \noBreak
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \noBreak
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \stopTextSpan
            \break
            \noPageBreak
            \time 5/8
            s1 * 5/8
            \noBreak
            \noPageBreak
            \time 2/8
            s1 * 1/4
            \noBreak
            \noPageBreak
            \time 3/8
            s1 * 3/8
            - \tweak padding #21
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \fontsize #5 { Accel. } \hspace #0.5 }
            - \tweak bound-details.right.text \markup {
              \raise #0 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
              [\abjad-metric-modulation-tuplet-lhs #4 #0 #8 #9 #3 #0 #'(1 . 1)]
                  \hspace #1
                  \abjad-metronome-mark-markup #3 #0 #2 #" 108 " 
              }
            }
            \startTextSpan
            \noBreak
            \noPageBreak
            \time 2/8
            s1 * 1/4
            \noBreak
            \noPageBreak
            \time 3/8
            s1 * 3/8
            \noBreak
            \noPageBreak
            \time 2/4
            s1 * 1/2
            \stopTextSpan
            \noBreak
            \noPageBreak
            \time 2/8
            s1 * 1/4
            \break
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \noBreak
            \noPageBreak
            \time 3/4
            s1 * 3/4
            \break
            \noPageBreak
            \time 5/4
            s1 * 5/4
            \noBreak
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \pageBreak
        }
        \context StaffGroup = "Staff Group"
        <<
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \once \override Staff.Clef.X-extent = ##f
                        \once \override Staff.Clef.extra-offset = #'(-4 . 0)
                        \override Dots.staff-position = #2
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \ottava -2
                        \clef "bass"
                        <
                            \tweak style #'la
                            c,,,
                            \tweak style #'la
                            d,,,
                            \tweak style #'la
                            e,,,
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                        >1
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "ffff"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        - \tweak padding #10.5
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #7 \box \line { Plastic Card: }
                        ^ \markup {
                                            \hspace #-2 {
                                                ( \note {1} #2 )
                                            }
                                        }
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #9
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 3 6 } } } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 2 6 } } }
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert Dots.staff-position
                        <
                            \tweak style #'la
                            d,,,
                            \tweak style #'la
                            e,,,
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >8
                        \!
                        \stopTextSpan
                        \ottava 0
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        \override Dots.staff-position = #2
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \ottava -2
                        <
                            \tweak style #'la
                            c,,,
                            \tweak style #'la
                            d,,,
                            \tweak style #'la
                            e,,,
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                        >4.
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "ffff"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #9
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 3 6 } } } \hspace #0.5 }
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            d,,,
                            \tweak style #'la
                            e,,,
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >4
                        \stopTextSpan
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #9
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 2 6 } } } \hspace #0.5 }
                        \startTextSpan
                        \>
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override Staff.Stem.stemlet-length = 0.75
                        <
                            \tweak style #'la
                            a,,,,
                            \tweak style #'la
                            b,,,,
                            \tweak style #'la
                            c,,,
                            \tweak style #'la
                            d,,,
                            \tweak style #'la
                            e,,,
                        >8
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.1
                                    #:dynamic "mp"
                                    #:hspace -0.25
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        \stopTextSpan
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #9
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 3 6 } } } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 4 6 } } }
                        \startTextSpan
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert Dots.staff-position
                        \revert Staff.Stem.stemlet-length
                        <
                            \tweak style #'la
                            d,,,
                            \tweak style #'la
                            e,,,
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >8
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "f"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        \stopTextSpan
                        ]
                        r8
                        \override Dots.staff-position = #2
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            b,,,
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                            \tweak style #'la
                            e,,
                            \tweak style #'la
                            f,,
                        >2
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "fp"
                                    #:hspace -0.25
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        ^ \markup {
                                            \hspace #-2 {
                                                ( \note {2} #2 )
                                            }
                                        }
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #11
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 4 6 } } } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 2 6 } } }
                        \startTextSpan
                        \<
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert Dots.staff-position
                        <
                            \tweak style #'la
                            g,,
                            \tweak style #'la
                            a,,
                            \tweak style #'la
                            b,,
                            \tweak style #'la
                            c,
                            \tweak style #'la
                            d,
                        >8
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.1
                                    #:dynamic "mp"
                                    #:hspace -0.25
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        \stopTextSpan
                        r8
                        \override Dots.staff-position = #2
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            e,,,
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                        >4
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.1
                                    #:dynamic "pp"
                                    #:hspace -0.25
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #13.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 6 6 } } } \hspace #0.5 }
                        \startTextSpan
                        \<
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            d,,,
                            \tweak style #'la
                            e,,,
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >2.
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "ffff"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        ^ \markup {
                                            \hspace #-2 {
                                                ( \note {2} #2 \override #'(font-size . 5) . )
                                            }
                                        }
                        \stopTextSpan
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #13.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 2 6 } } } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 3 6 } } }
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert Dots.staff-position
                        <
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                            \tweak style #'la
                            c,,
                        >8
                        \!
                        \stopTextSpan
                        r8
                        \override Dots.staff-position = #2
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            e,,,
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                        >4.
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "ffff"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #10
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 3 6 } } } \hspace #0.5 }
                        \startTextSpan
                        \>
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            d,
                            \tweak style #'la
                            e,
                            \tweak style #'la
                            f,
                            \tweak style #'la
                            g,
                            \tweak style #'la
                            a,
                        >4
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.1
                                    #:dynamic "p"
                                    #:hspace -0.25
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        \stopTextSpan
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #10
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 2 6 } } } \hspace #0.5 }
                        \startTextSpan
                        \<
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            b,,,
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                            \tweak style #'la
                            e,,
                            \tweak style #'la
                            f,,
                        >4.
                        \stopTextSpan
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #10
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 3 6 } } } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 2 6 } } }
                        \startTextSpan
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert Dots.staff-position
                        <
                            \tweak style #'la
                            f,,,,
                            \tweak style #'la
                            g,,,,
                            \tweak style #'la
                            a,,,,
                            \tweak style #'la
                            b,,,,
                            \tweak style #'la
                            c,,,
                        >8
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "ffff"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        \stopTextSpan
                        r8
                        \override Dots.staff-position = #2
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            c,,,
                            \tweak style #'la
                            d,,,
                            \tweak style #'la
                            e,,,
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                        >4.
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "f"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #10.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 2 6 } } } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 3 6 } } }
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert Dots.staff-position
                        <
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                            \tweak style #'la
                            e,,
                        >8
                        \!
                        \stopTextSpan
                        r8
                        \override Dots.staff-position = #2
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            e,,
                            \tweak style #'la
                            f,,
                            \tweak style #'la
                            g,,
                            \tweak style #'la
                            a,,
                            \tweak style #'la
                            b,,
                        >4
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "ff"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #7
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 2 6 } } } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 4 6 } } }
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert Dots.staff-position
                        <
                            \tweak style #'la
                            d,,
                            \tweak style #'la
                            e,,
                            \tweak style #'la
                            f,,
                            \tweak style #'la
                            g,,
                            \tweak style #'la
                            a,,
                        >8
                        \!
                        \stopTextSpan
                        r8
                        \override Dots.staff-position = #2
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            b,,,,
                            \tweak style #'la
                            c,,,
                            \tweak style #'la
                            d,,,
                            \tweak style #'la
                            e,,,
                            \tweak style #'la
                            f,,,
                        >2
                        ^ \markup {
                                            \hspace #-2 {
                                                ( \note {2} #2 )
                                            }
                                        }
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak circled-tip ##t
                        \<
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 2 6 } } } \hspace #0.5 }
                        \startTextSpan
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            e,,,
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                        >4
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.1
                                    #:dynamic "p"
                                    #:hspace -0.25
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        \stopTextSpan
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 5 6 } } } \hspace #0.5 }
                        \startTextSpan
                        \<
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            d,,
                            \tweak style #'la
                            e,,
                            \tweak style #'la
                            f,,
                            \tweak style #'la
                            g,,
                            \tweak style #'la
                            a,,
                        >4
                        \stopTextSpan
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 2 6 } } } \hspace #0.5 }
                        \startTextSpan
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            b,,
                            \tweak style #'la
                            c,
                            \tweak style #'la
                            d,
                            \tweak style #'la
                            e,
                            \tweak style #'la
                            f,
                        >4
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "fff"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        \stopTextSpan
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 3 6 } } } \hspace #0.5 }
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                        >4
                        \stopTextSpan
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 2 6 } } } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 3 6 } } }
                        \startTextSpan
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert Dots.staff-position
                        <
                            \tweak style #'la
                            e,,,,
                            \tweak style #'la
                            f,,,,
                            \tweak style #'la
                            g,,,,
                            \tweak style #'la
                            a,,,,
                            \tweak style #'la
                            b,,,,
                        >8
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.1
                                    #:dynamic "mf"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        \stopTextSpan
                        r8
                        \override Dots.staff-position = #2
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                            \tweak style #'la
                            e,,
                        >4.
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.1
                                    #:dynamic "mf"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        - \tweak padding #10.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 3 6 } } } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 4 6 } } }
                        \startTextSpan
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        <
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                            \tweak style #'la
                            e,,
                        >4
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert Dots.staff-position
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        <
                            \tweak style #'la
                            e,,,
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                        >8
                        \stopTextSpan
                        r8
                        \!
                        \override Dots.staff-position = #2
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            d,
                            \tweak style #'la
                            e,
                            \tweak style #'la
                            f,
                            \tweak style #'la
                            g,
                            \tweak style #'la
                            a,
                        >4.
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.1
                                    #:dynamic "mf"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #10.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 2 6 } } } \hspace #0.5 }
                        \startTextSpan
                        \>
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            b,,,
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                            \tweak style #'la
                            e,,
                            \tweak style #'la
                            f,,
                        >4
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.1
                                    #:dynamic "ppp"
                                    #:hspace -0.25
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        \stopTextSpan
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #10.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 6 6 } } } \hspace #0.5 }
                        \startTextSpan
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override Staff.Stem.stemlet-length = 0.75
                        <
                            \tweak style #'la
                            g,,,,
                            \tweak style #'la
                            a,,,,
                            \tweak style #'la
                            b,,,,
                            \tweak style #'la
                            c,,,
                            \tweak style #'la
                            d,,,
                        >8
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "ff"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        \stopTextSpan
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #10.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 2 6 } } } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 3 6 } } }
                        \startTextSpan
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert Dots.staff-position
                        \revert Staff.Stem.stemlet-length
                        <
                            \tweak style #'la
                            c,,,
                            \tweak style #'la
                            d,,,
                            \tweak style #'la
                            e,,,
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                        >8
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "fff"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        \stopTextSpan
                        ]
                        r8
                        \override Dots.staff-position = #2
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                            \tweak style #'la
                            e,,
                        >2
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "fff"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        ^ \markup {
                                            \hspace #-2 {
                                                ( \note {2} #2 )
                                            }
                                        }
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        - \tweak padding #15.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 2 6 } } } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 3 6 } } }
                        \startTextSpan
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert Dots.staff-position
                        <
                            \tweak style #'la
                            e,,
                            \tweak style #'la
                            f,,
                            \tweak style #'la
                            g,,
                            \tweak style #'la
                            a,,
                            \tweak style #'la
                            b,,
                        >8
                        \stopTextSpan
                        r8
                        \!
                        \override Dots.staff-position = #2
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            d,,
                            \tweak style #'la
                            e,,
                            \tweak style #'la
                            f,,
                            \tweak style #'la
                            g,,
                            \tweak style #'la
                            a,,
                        >4
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.1
                                    #:dynamic "mf"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        - \tweak padding #9.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 2 6 } } } \hspace #0.5 }
                        \startTextSpan
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            b,,,,
                            \tweak style #'la
                            c,,,
                            \tweak style #'la
                            d,,,
                            \tweak style #'la
                            e,,,
                            \tweak style #'la
                            f,,,
                        >4
                        \stopTextSpan
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #9.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 3 6 } } } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 2 6 } } }
                        \startTextSpan
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert Dots.staff-position
                        <
                            \tweak style #'la
                            e,,,
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                        >4
                        \stopTextSpan
                        \ottava 0
                        r4
                        \!
                        s1 * 5/4
                        \clef "treble"
                        s1 * 5/4
                    }
                }
                \context timeSignatureStaff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 9/8
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 5/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 5/4
                        s1 * 5/4
                    }
                }
                \context leftHandStaff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        \afterGrace
                        s1 * 9/8
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
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        s1 * 3/8
                        \afterGrace
                        s1 * 1/4
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
                        s1 * 3/8
                        \afterGrace
                        s1 * 1/2
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
                        s1 * 1/4
                        s1 * 1/4
                        \afterGrace
                        s1 * 3/4
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
                        s1 * 1/4
                        s1 * 3/8
                        \afterGrace
                        s1 * 1/4
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
                        s1 * 3/8
                        s1 * 1/4
                        \afterGrace
                        s1 * 3/8
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
                        s1 * 1/4
                        \afterGrace
                        s1 * 1/4
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
                        \times 2/3
                        {
                            \ottava -2
                            \clef "bass"
                            df,,,8
                            - \accent
                            \ff
                            [
                            ^ (
                            d,,,8
                            - \staccato
                            \mf
                            - \tweak circled-tip ##t
                            \>
                            c,,,8
                            )
                            ]
                            \sustainOn
                        }
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <f,,,! cs,,,! e,,,! d,,,!>4
                            _ #(make-dynamic-script (markup #:whiteout #:italic "s. ff"))
                        - \accent
                        _ (
                        ef,,,!4
                        - \tenuto
                        \mp
                        )
                        \times 2/3
                        {
                            f,,,8
                            [
                            \<
                            ^ (
                            af,,,8
                            e,,,8
                        }
                        af,,,16
                        - \marcato
                        bf,,,,16
                        c,,,16
                        - \accent
                        \f
                        \sustainOff
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <ef,,,! c,,,! fs,,,! cs,,,! e,,,!>16
                        - \staccato
                        )
                        ]
                        s1 * 1/4
                        c,,,8
                        - \accent
                        [
                        - \tweak circled-tip ##t
                        \>
                        ^ (
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <fs,,,! e,,,! cs,,! f,,,! g,,,!>8
                        - \tenuto
                        )
                        ]
                        \sustainOn
                        s1 * 1/4
                        \!
                        \sustainOff
                        \once \override TupletBracket.padding = #4
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/6
                        {
                            d,,,8
                            - \marcato
                            \mf
                            [
                            \sustainOn
                            \once \override TupletBracket.direction = #UP
                            \times 4/6
                            {
                                e,,,32
                                \pp
                                \<
                                ^ (
                                \once \override Staff.Accidental.stencil = ##f
                                fs,,,32
                                - \accent
                                - \sharp-articulation
                                \sustainOff
                                \once \override Staff.Accidental.stencil = ##f
                                f,,,32
                                - \natural-articulation
                                - \staccato
                                g,,,32
                                a,,,,32
                                - \accent
                                \mf
                                \>
                                \sustainOn
                                \once \override Staff.Accidental.stencil = ##f
                                bf,,,,32
                                - \flat-articulation
                                - \tenuto
                            }
                            \once \override DynamicText.X-extent = #'(-0.05 . -0.05)
                            c,,,8
                            \p
                            )
                            \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                            <g,,,! bf,,,! c,,,! cs,,,!>8
                            - \marcato
                            \f
                            ^ (
                            b,,,8
                            - \accent
                            df,,32
                            \ff
                            \sustainOff
                            ef,,,32
                            - \staccato
                            f,,32
                            \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                            <af,,,! e,,,! ef,,,! e,,,! g,,,!>32
                            - \accent
                            )
                            ]
                            \sustainOn
                        }
                        s1 * 1/4
                        s1 * 3/8
                        \sustainOff
                        \times 4/6
                        {
                            e,,,16
                            - \tenuto
                            \p
                            [
                            \sustainOn
                            _ (
                            f,,16
                            - \marcato
                            \f
                            g,,16
                            \p
                            a,,16
                            - \accent
                            \f
                            \sustainOff
                            \>
                            g,,16
                            a,,16
                            - \staccato
                        }
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <b,,! b,,,! d,,! bf,,! b,,!>8.
                        \pp
                        )
                        df,32
                        - \accent
                        \ff
                        _ (
                        d,,32
                        - \tenuto
                        df,32
                        - \marcato
                        \sustainOn
                        \once \override Staff.Accidental.stencil = ##f
                        d,32
                        - \accent
                        - \natural-articulation
                        e,32
                        \sustainOff
                        \once \override Staff.Accidental.stencil = ##f
                        gf,,32
                        - \flat-articulation
                        - \staccato
                        ]
                        \once \override TupletBracket.padding = #2.5
                        \times 4/6
                        {
                            g,,4
                            - \accent
                            )
                            f,,16
                            \pp
                            [
                            \<
                            \sustainOn
                            _ (
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            g,,16
                            - \tenuto
                            \ottava 0
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            af,16
                            - \marcato
                            \once \override Staff.Accidental.stencil = ##f
                            bf,16
                            - \flat-articulation
                            \f
                            ]
                            \once \override Staff.Accidental.stencil = ##f
                            df,4
                            - \flat-articulation
                            \p
                        }
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <af,! a,! cs,! a,! cs!>8
                        \pp
                        )
                        [
                        \once \override TupletBracket.direction = #UP
                        \times 2/3
                        {
                            df16
                            - \accent
                            \f
                            ^ (
                            \once \override Staff.Accidental.stencil = ##f
                            ef16
                            ^ \flat-articulation
                            f,16
                            - \staccato
                            )
                            \sustainOff
                            ]
                        }
                        s1 * 1/4
                        r4
                        \once \override TupletBracket.direction = #UP
                        \times 2/3
                        {
                            \override Score.SustainPedalLineSpanner.padding = #5
                            b,,8
                            - \accent
                            \mp
                            [
                            \sustainOn
                            ^ (
                            df8
                            - \staccato
                            ef8
                        }
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <a,,! af,,! e,! fs,! g,!>16
                        - \accent
                        )
                        \once \override DynamicLineSpanner.padding = #2
                        \once \override Staff.Accidental.stencil = ##f
                        fs,,16
                        - \sharp-articulation
                        - \tenuto
                        \<
                        ^ (
                        e,16
                        f,16
                        )
                        ]
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <c! g! b!>4
                        \f
                        \>
                        ^ (
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <g,! a! a,! c!>4
                        - \marcato
                        \sustainOff
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        \override Score.SustainPedalLineSpanner.padding = #7
                        <c,! bf,! d! b,,!>4
                        )
                        \sustainOn
                        a,32
                        - \accent
                        \p
                        [
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        ^ (
                        \once \override Staff.Accidental.stencil = ##f
                        bf,32
                        - \flat-articulation
                        - \staccato
                        \once \override Staff.Accidental.stencil = ##f
                        b,32
                        - \accent
                        - \natural-articulation
                        \once \override Staff.Accidental.stencil = ##f
                        df32
                        - \flat-articulation
                        - \tenuto
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <d! g! af! ef'! fs!>8
                        - \marcato
                        \mf
                        )
                        \sustainOff
                        \once \override TupletBracket.direction = #UP
                        \times 4/6
                        {
                            \once \override DynamicLineSpanner.padding = #3.5
                            \override Score.SustainPedalLineSpanner.padding = #8
                            df32
                            \fff
                            - \tweak stencil #constante-hairpin
                            \<
                            \sustainOn
                            ^ (
                            \once \override Staff.Accidental.stencil = ##f
                            ef32
                            - \accent
                            - \flat-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            f32
                            - \natural-articulation
                            - \staccato
                            g32
                            \once \override Staff.Accidental.stencil = ##f
                            af32
                            - \accent
                            - \flat-articulation
                            \set stemLeftBeamCount = 3
                            \set stemRightBeamCount = 1
                            g32
                            - \tenuto
                        }
                        \once \override Staff.Accidental.stencil = ##f
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
                        af32
                        - \flat-articulation
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        \once \override Staff.Accidental.stencil = ##f
                        bf32
                        - \flat-articulation
                        - \marcato
                        c32
                        - \accent
                        \once \override Staff.Accidental.stencil = ##f
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        df32
                        - \flat-articulation
                        \once \override TupletBracket.direction = #UP
                        \times 2/3
                        {
                            b,,8
                            - \staccato
                            df8
                            d8
                            - \accent
                            )
                        }
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <c,! g,! e! af! bf!>16
                        - \tenuto
                        g,16
                        - \marcato
                        ^ (
                        ef16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        g16
                        - \accent
                        \once \override TupletBracket.direction = #UP
                        \times 2/3
                        {
                            \once \override Staff.Accidental.stencil = ##f
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            a16
                            - \natural-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            b16
                            - \natural-articulation
                            - \staccato
                            c'16
                            \sustainOff
                        }
                        \change Staff = "piano 1 staff"
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <a! b! cs''! d''!>8
                        - \accent
                        \ppp
                        )
                        \once \override DynamicLineSpanner.padding = #3
                        c'32
                        - \tenuto
                        \p
                        _ (
                        \once \override DynamicLineSpanner.padding = #6
                        \once \override Staff.Accidental.stencil = ##f
                        df'32
                        - \flat-articulation
                        - \marcato
                        \f
                        )
                        \change Staff = "piano 3 staff"
                        ef32
                        - \accent
                        _ (
                        \once \override DynamicLineSpanner.padding = #3
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        f32
                        \p
                        )
                        \once \override TupletBracket.direction = #UP
                        \times 2/3
                        {
                            \change Staff = "piano 1 staff"
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            e'16
                            - \staccato
                            \change Staff = "piano 3 staff"
                            gf16
                            - \accent
                            \f
                            _ (
                            \once \override DynamicLineSpanner.padding = #5
                            \once \override Staff.Accidental.stencil = ##f
                            af16
                            - \flat-articulation
                            \p
                            )
                        }
                        \change Staff = "piano 1 staff"
                        \once \override Accidental.X-extent = #'(-0.75 . 0.5)
                        <af! bf! a'! bf'! cs''!>8
                        - \tenuto
                        \mp
                        \once \override DynamicLineSpanner.padding = #2
                        \override Score.SustainPedalLineSpanner.padding = #5.5
                        b32
                        - \marcato
                        \fff
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        \sustainOn
                        ^ (
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        - \natural-articulation
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        - \flat-articulation
                        \once \override Staff.Accidental.stencil = ##f
                        c''32
                        - \natural-articulation
                        \p
                        )
                        \sustainOff
                        ]
                        \change Staff = "piano 3 staff"
                        \revert Score.SustainPedalLineSpanner.padding
                    }
                }
                \context thirdStaff = "piano 4 staff"
                {
                    \context Voice = "piano 4 voice"
                    {
                        s1 * 9/8
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 5/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 5/4
                        s1 * 5/4
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
