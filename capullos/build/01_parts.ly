    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 6/8
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/8
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/8
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/8
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/8
            s1 * 3/4
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 4/16
            s1 * 1/4
            \time 6/8
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/8
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/8
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/8
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/8
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/8
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/8
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/8
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/8
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/8
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
                        \ottava 2
                        \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Piano }
                        \clef "treble"
                        g''''4.
                        - \accent
                        \ffff
                        ^ \markup {
                          \raise #8 \with-dimensions-from \null
                          \override #'(font-size . 5.5)
                          \concat {
                              \abjad-metronome-mark-markup #2 #1 #2 #" 40 " 
                          }
                        }
                        g''''4.
                        - \accent
                        ~
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g''''8
                            [
                            \revert Staff.Stem.stemlet-length
                            g''''8.
                            - \accent
                            ]
                        }
                        g''''4.
                        - \accent
                        g''''4.
                        - \accent
                        ~
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g''''8.
                            [
                            \revert Staff.Stem.stemlet-length
                            g''''8
                            - \accent
                            ]
                            ~
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            g''''4
                            g''''16
                            - \accent
                            ~
                        }
                        g''''4.
                        ~
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g''''16
                            [
                            g''''8.
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            g''''16
                            - \accent
                            ]
                            ~
                        }
                        g''''4.
                        \ottava 0
                        <<
                            \context Voice = "piano 1 voice temp"
                            {
                                \once \override Staff.Accidental.stencil = ##f
                                \voiceTwo
                                a16
                                _ \natural-articulation
                                [
                                (
                                \once \override Staff.Accidental.stencil = ##f
                                f''16
                                _ \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                d''16
                                _ \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                c''16
                                _ \natural-articulation
                                )
                                ]
                            }
                            \context Voice = "primary voice"
                            {
                                \once \override Staff.Accidental.stencil = ##f
                                \voiceOne
                                ef'32
                                ^ \flat-articulation
                                _ \pp
                                [
                                (
                                _ \<
                                \once \override Staff.Accidental.stencil = ##f
                                d''32
                                ^ \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                b''32
                                ^ \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                af''32
                                ^ \flat-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                e''32
                                ^ \natural-articulation
                                _ \mf
                                _ \>
                                \once \override Staff.Accidental.stencil = ##f
                                bf'32
                                ^ \flat-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                fs''32
                                ^ \sharp-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                d'''32
                                ^ \natural-articulation
                                _ \pp
                                )
                                ]
                            }
                        >>
                        \oneVoice
                        \ottava 2
                        g''''4.
                        \ffff
                        ~
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            g''''4
                            g''''16
                            ~
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            g''''4
                            g''''16
                            ~
                        }
                        g''''4.
                        ~
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g''''16
                            [
                            g''''8.
                            \revert Staff.Stem.stemlet-length
                            g''''16
                            ]
                            ~
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            g''''4
                            g''''16
                            ~
                        }
                        g''''4.
                        ~
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g''''8
                            [
                            \revert Staff.Stem.stemlet-length
                            g''''8.
                            ]
                            ~
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g''''8.
                            [
                            \revert Staff.Stem.stemlet-length
                            g''''8
                            ]
                            ~
                        }
                        g''''4.
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g''''8.
                            [
                            \revert Staff.Stem.stemlet-length
                            g''''8
                            ]
                            ~
                        }
                        g''''4.
                        g''''4.
                        ~
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            g''''4
                            g''''16
                            ~
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            g''''4
                            g''''16
                            ~
                        }
                        g''''4.
                        ~
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g''''16
                            [
                            g''''8.
                            \revert Staff.Stem.stemlet-length
                            g''''16
                            ]
                            ~
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            g''''4
                            g''''16
                            ~
                        }
                        g''''4.
                        ~
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g''''8
                            [
                            \revert Staff.Stem.stemlet-length
                            g''''8.
                            ]
                            \ottava 0
                        }
                    }
                }
                \context timeSignatureStaff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                    }
                }
                \context leftHandStaff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        \ottava 2
                        \clef "treble"
                        g''''4
                        - \accent
                        ~
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        g''''16
                        [
                        \revert leftHandStaff.Stem.stemlet-length
                        g''''16
                        - \accent
                        ]
                        ~
                        g''''4.
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        g''''8.
                        - \accent
                        [
                        \revert leftHandStaff.Stem.stemlet-length
                        g''''8.
                        - \accent
                        ]
                        ~
                        g''''8
                        g''''4
                        - \accent
                        ~
                        g''''4
                        g''''8
                        - \accent
                        ~
                        g''''4
                        g''''8
                        - \accent
                        ~
                        g''''4
                        ~
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        g''''16
                        [
                        \revert leftHandStaff.Stem.stemlet-length
                        g''''16
                        - \accent
                        ]
                        ~
                        g''''8
                        g''''4
                        - \accent
                        ~
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        g''''8.
                        [
                        \revert leftHandStaff.Stem.stemlet-length
                        g''''8.
                        - \accent
                        ]
                        ~
                        g''''4.
                        \ottava 0
                        \times 2/3
                        {
                            \clef "bass"
                            af8
                            [
                            \sustainOn
                            e8
                            a8
                            \sustainOff
                            ]
                        }
                        \ottava 2
                        \clef "treble"
                        g''''4
                        ~
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        g''''16
                        [
                        \revert leftHandStaff.Stem.stemlet-length
                        g''''16
                        ]
                        ~
                        g''''4.
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        g''''8.
                        [
                        \revert leftHandStaff.Stem.stemlet-length
                        g''''8.
                        ]
                        ~
                        g''''8
                        g''''4
                        ~
                        g''''4
                        g''''8
                        ~
                        g''''4
                        g''''8
                        ~
                        g''''4
                        ~
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        g''''16
                        [
                        \revert leftHandStaff.Stem.stemlet-length
                        g''''16
                        ]
                        ~
                        g''''8
                        g''''4
                        ~
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        g''''8.
                        [
                        \revert leftHandStaff.Stem.stemlet-length
                        g''''8.
                        ]
                        ~
                        g''''4.
                        g''''4
                        ~
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        g''''16
                        [
                        \revert leftHandStaff.Stem.stemlet-length
                        g''''16
                        ]
                        ~
                        g''''4.
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        g''''8.
                        [
                        \revert leftHandStaff.Stem.stemlet-length
                        g''''8.
                        ]
                        ~
                        g''''8
                        g''''4
                        ~
                        g''''4
                        g''''8
                        ~
                        g''''4
                        g''''8
                        ~
                        g''''4
                        ~
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        g''''16
                        [
                        \revert leftHandStaff.Stem.stemlet-length
                        g''''16
                        ]
                        ~
                        g''''8
                        g''''4
                        ~
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        g''''8.
                        [
                        \revert leftHandStaff.Stem.stemlet-length
                        g''''8.
                        ]
                        ~
                        g''''4.
                        \ottava 0
                    }
                }
                \context thirdStaff = "piano 4 staff"
                {
                    \context Voice = "piano 4 voice"
                    {
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
