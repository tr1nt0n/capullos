    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 9/8
            s1 * 9/8
            ^ \markup {
              \raise #16 \with-dimensions-from \null
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
                        - \tweak padding #9
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #7 \box \line { Plastic Card: }
                        ^ \markup {
                                            \hspace #-2 {
                                                ( \note {1} #2 )
                                            }
                                        }
                        - \abjad-zero-padding-glissando
                        \glissando
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
                        \ottava 0
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                        \stopStaff \startStaff
                        \ottava -2
                        c'4.
                        c'4
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        [
                        \revert Staff.Stem.stemlet-length
                        c'8
                        ]
                        r8
                        c'2
                        c'8
                        r8
                        c'4
                        c'2.
                        c'8
                        r8
                        c'4.
                        c'4
                        c'4.
                        c'8
                        r8
                        c'4.
                        c'8
                        r8
                        c'4
                        c'8
                        r8
                        c'2
                        c'4
                        c'4
                        c'4
                        c'4
                        c'8
                        r8
                        c'4.
                        ~
                        c'4
                        c'8
                        r8
                        c'4.
                        c'4
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        [
                        \revert Staff.Stem.stemlet-length
                        c'8
                        ]
                        r8
                        c'2
                        c'8
                        r8
                        c'4
                        c'4
                        c'4
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
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                        \stopStaff \startStaff
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
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                        \stopStaff \startStaff
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
                \context thirdStaff = "piano 4 staff"
                {
                    \context Voice = "piano 4 voice"
                    {
                        s1 * 9/8
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                        \stopStaff \startStaff
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
