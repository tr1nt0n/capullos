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
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'10
            _ \long-fermata
            \once \override Score.BarLine.transparent = ##f
            \time 3/8
            s1 * 3/8
            \time 2/8
            s1 * 1/4
            \time 3/8
            s1 * 3/8
            \time 2/4
            s1 * 1/2
            \time 2/8
            s1 * 1/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \time 3/4
            s1 * 3/4
            \time 2/8
            s1 * 1/4
            \time 3/8
            s1 * 3/8
            \time 2/8
            s1 * 1/4
            \time 3/8
            s1 * 3/8
            \time 2/8
            s1 * 1/4
            \time 3/8
            s1 * 3/8
            \time 2/8
            s1 * 1/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \time 2/4
            s1 * 1/2
            \time 2/8
            s1 * 1/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \time 5/8
            s1 * 5/8
            \time 2/8
            s1 * 1/4
            \time 3/8
            s1 * 3/8
            \time 2/8
            s1 * 1/4
            \time 3/8
            s1 * 3/8
            \time 2/4
            s1 * 1/2
            \time 2/8
            s1 * 1/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \time 3/4
            s1 * 3/4
        }
        \context StaffGroup = "Staff Group"
        <<
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
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
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #9
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 3 6 } } } \hspace #0.5 }
                        \startTextSpan
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
                        \stopTextSpan
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #9
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 3 6 } } } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 2 6 } } }
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
                        ^ \markup {
                                            \hspace #-2 {
                                                ( \note {2} #2 )
                                            }
                                        }
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #11
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
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #13.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 6 6 } } } \hspace #0.5 }
                        \startTextSpan
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
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 4 6 } } } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 2 6 } } }
                        \startTextSpan
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
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #10
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 3 6 } } } \hspace #0.5 }
                        \startTextSpan
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
                        \stopTextSpan
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #10
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 2 6 } } } \hspace #0.5 }
                        \startTextSpan
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
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 6 6 } } } \hspace #0.5 }
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
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #7
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
                        \stopTextSpan
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 5 6 } } } \hspace #0.5 }
                        \startTextSpan
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
                        \stopTextSpan
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 3 6 } } } \hspace #0.5 }
                        \startTextSpan
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
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 2 6 } } } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 4 6 } } }
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
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak padding #10.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 3 6 } } } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 2 6 } } }
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
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #10.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \override #'(font-size . 1) \upright \fraction 2 6 } } } \hspace #0.5 }
                        \startTextSpan
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
                        \stopTextSpan
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #10.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \override #'(font-size . 1) \upright \fraction 6 6 } } } \hspace #0.5 }
                        \startTextSpan
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
                        \stopTextSpan
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #10.5
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
                        ^ \markup {
                                            \hspace #-2 {
                                                ( \note {2} #2 )
                                            }
                                        }
                        - \abjad-zero-padding-glissando
                        \glissando
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
                        - \abjad-zero-padding-glissando
                        \glissando
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
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
