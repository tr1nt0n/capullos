  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "/Users/trintonprater/scores/capullos/capullos/build/capullos-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
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
                        <<
                            \context Voice = "piano 1 voice temp 1"
                            {
                                \ottava 2
                                \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Piano }
                                \clef "treble"
                                \voiceOne
                                g''''4.
                                - \accent
                                \ffff
                                ^ \markup {
                                  \raise #14 \with-dimensions-from \null
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
                            }
                            \context Voice = "unprolated voice 1"
                            {
                                \voiceTwo
                                g''''4
                                - \accent
                                ~
                                \override Staff.Stem.stemlet-length = 0.75
                                g''''16
                                [
                                \revert Staff.Stem.stemlet-length
                                g''''16
                                - \accent
                                ]
                                ~
                                g''''4.
                                \override Staff.Stem.stemlet-length = 0.75
                                g''''8.
                                - \accent
                                [
                                \revert Staff.Stem.stemlet-length
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
                                \override Staff.Stem.stemlet-length = 0.75
                                g''''16
                                [
                                \revert Staff.Stem.stemlet-length
                                g''''16
                                - \accent
                                ]
                                ~
                                g''''8
                                g''''4
                                - \accent
                                ~
                                \override Staff.Stem.stemlet-length = 0.75
                                g''''8.
                                [
                                \revert Staff.Stem.stemlet-length
                                g''''8.
                                - \accent
                                ]
                                ~
                                g''''4.
                            }
                        >>
                        \oneVoice
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
                        <<
                            \context Voice = "piano 1 voice temp 2"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 6/5
                                {
                                    \times 2/3
                                    {
                                        \ottava 2
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \voiceOne
                                        g''''16
                                        [
                                        g''''16
                                        g''''16
                                        ~
                                    }
                                    g''''8
                                    ~
                                    \revert Staff.Stem.stemlet-length
                                    g''''16
                                    ]
                                    ~
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 6/5
                                {
                                    g''''4
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g''''32
                                        [
                                        g''''32
                                        \revert Staff.Stem.stemlet-length
                                        g''''32
                                        ]
                                        ~
                                    }
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
                                    \times 2/3
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        g''''16
                                        g''''16
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        g''''16
                                        ~
                                    }
                                    g''''16
                                    \times 2/3
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        g''''32
                                        g''''32
                                        \revert Staff.Stem.stemlet-length
                                        g''''32
                                        ]
                                        ~
                                    }
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
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g''''16
                                        [
                                        g''''16
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        g''''16
                                        ~
                                    }
                                    g''''16
                                    \revert Staff.Stem.stemlet-length
                                    g''''8
                                    ]
                                    ~
                                }
                                g''''4.
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 6/5
                                {
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g''''16
                                        [
                                        g''''16
                                        g''''16
                                        ~
                                    }
                                    g''''8
                                    ~
                                    \revert Staff.Stem.stemlet-length
                                    g''''16
                                    ]
                                    ~
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 6/5
                                {
                                    g''''4
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g''''32
                                        [
                                        g''''32
                                        \revert Staff.Stem.stemlet-length
                                        g''''32
                                        ]
                                        ~
                                    }
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 6/5
                                {
                                    g''''4
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g''''32
                                        [
                                        g''''32
                                        \revert Staff.Stem.stemlet-length
                                        g''''32
                                        ]
                                        ~
                                    }
                                }
                                g''''4.
                                ~
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 6/5
                                {
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''''16
                                    [
                                    \times 2/3
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        g''''16
                                        g''''16
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        g''''16
                                        ~
                                    }
                                    g''''16
                                    \times 2/3
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        g''''32
                                        g''''32
                                        \revert Staff.Stem.stemlet-length
                                        g''''32
                                        ]
                                        ~
                                    }
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
                                    \times 2/3
                                    {
                                        g''''16
                                        g''''16
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        g''''16
                                        ~
                                    }
                                    \revert Staff.Stem.stemlet-length
                                    g''''16
                                    ]
                                    \ottava 0
                                }
                            }
                            \context Voice = "unprolated voice 2"
                            {
                                \override Rest.transparent = ##t
                                \override Voice.Dots.transparent = ##t
                                \voiceTwo
                                r2.
                                r2.
                                r2.
                                \revert Rest.transparent
                                \revert Voice.Dots.transparent
                                r4
                                r16
                                g''''16
                                ~
                                g''''8
                                g''''4
                                ~
                                g''''8.
                                [
                                g''''8.
                                ]
                                ~
                                g''''4.
                                g''''4
                                ~
                                g''''16
                                [
                                g''''16
                                ]
                                ~
                                g''''4.
                                \times 2/3
                                {
                                    g''''16
                                    [
                                    g''''16
                                    g''''16
                                    ]
                                    ~
                                }
                                g''''4
                                ~
                                g''''16
                                [
                                \times 2/3
                                {
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    g''''16
                                    g''''16
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    g''''16
                                    ~
                                }
                                g''''16
                                g''''8
                                ]
                                ~
                                g''''8.
                                [
                                \times 2/3
                                {
                                    g''''16
                                    g''''16
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    g''''16
                                    ~
                                }
                                g''''16
                                ]
                                ~
                                g''''4
                                ~
                                g''''16
                                [
                                \times 2/3
                                {
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 3
                                    g''''32
                                    g''''32
                                    g''''32
                                    ]
                                    ~
                                }
                                g''''4
                                ~
                                g''''16
                                [
                                g''''16
                                ]
                                ~
                                g''''4.
                                g''''8.
                                [
                                g''''8.
                                ]
                                ~
                                g''''4
                                \times 2/3
                                {
                                    g''''16
                                    [
                                    g''''16
                                    g''''16
                                    ]
                                    ~
                                }
                            }
                        >>
                        \oneVoice
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
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r4.
                        - \tweak padding #8
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \hspace #0.5 \column { \line { Press styrofoam as firmly } \line { against the strings as possible. } \line { Gradually lighten pressure. }  } } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \column { \line { Hand off styrofoam, } \line { leave styrofoam } \line { on strings. }  } }
                        \startTextSpan
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r4.
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r4.
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r4.
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r4.
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r4.
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r4.
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r4.
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r4.
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r4.
                        \stopTextSpan
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
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \times 2/3
                            {
                                c'16
                                c'16
                                c'16
                            }
                            r8
                            r16
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            r4
                            \times 2/3
                            {
                                c'32
                                c'32
                                c'32
                            }
                        }
                        \once \override Rest.transparent = ##t
                        \once \override Voice.Dots.transparent = ##t
                        r2.
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            r16
                            \times 2/3
                            {
                                c'16
                                c'16
                                c'16
                            }
                            r16
                            \times 2/3
                            {
                                c'32
                                c'32
                                c'32
                            }
                        }
                        r4.
                        \once \override Rest.transparent = ##t
                        \once \override Voice.Dots.transparent = ##t
                        r2.
                        \once \override Rest.transparent = ##t
                        \once \override Voice.Dots.transparent = ##t
                        r2.
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \times 2/3
                            {
                                c'16
                                c'16
                                c'16
                            }
                            r16
                            r8
                        }
                        r4.
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \times 2/3
                            {
                                c'16
                                c'16
                                c'16
                            }
                            r8
                            r16
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            r4
                            \times 2/3
                            {
                                c'32
                                c'32
                                c'32
                            }
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            r4
                            \times 2/3
                            {
                                c'32
                                c'32
                                c'32
                            }
                        }
                        r4.
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            r16
                            \times 2/3
                            {
                                c'16
                                c'16
                                c'16
                            }
                            r16
                            \times 2/3
                            {
                                c'32
                                c'32
                                c'32
                            }
                        }
                        r4.
                        r4.
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            r8
                            \times 2/3
                            {
                                c'16
                                c'16
                                c'16
                            }
                            r16
                        }
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
}
