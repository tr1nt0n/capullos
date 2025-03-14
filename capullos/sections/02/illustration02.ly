  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "/Users/trintonprater/scores/capullos/capullos/build/section-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tweak text "×3" \startMeasureSpanner
            \bar ".|:"
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 6/16
            s1 * 3/8
            ^ \markup {
              \hspace #-9
              \raise #8 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
              [\abjad-metric-modulation-tuplet-lhs #4 #0 #4 #5 #4 #0 #'(1 . 1)]
                  \hspace #1
                  \abjad-metronome-mark-markup #3 #1 #2 #" 100 " 
              }
            }
            \noBreak
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 6/16
            s1 * 3/8
            \noBreak
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \set Score.repeatCommands = #'((volta "1 - 2"))
            \time 6/16
            s1 * 3/8
            \bar ":|.|:"
            \noBreak
            \noPageBreak
            \revert Score.BarLine.color
            \revert Score.SpanBar.color
            \stopMeasureSpanner
            \once \override Score.TimeSignature.stencil = ##f
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \set Score.repeatCommands = #'((volta "3"))
            \time 6/16
            s1 * 3/8
            \set Score.repeatCommands = #'((volta #f))
            \noBreak
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 6/16
            s1 * 3/8
            \noBreak
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 6/16
            s1 * 3/8
            \noBreak
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \set Score.repeatCommands = #'((volta "1"))
            \time 6/16
            s1 * 3/8
            \bar ":|."
            \break
            \noPageBreak
            \set Score.repeatCommands = #'((volta "2"))
            \time 5/4
            s1 * 5/4
            \set Score.repeatCommands = #'((volta #f))
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            - \tweak padding #8.5
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \fontsize #5 { Rit. } \hspace #0.5 }
            - \tweak bound-details.right.text \markup {
              \raise #0 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #" 52 " 
              }
            }
            \startTextSpan
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \stopTextSpan
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \pageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'10
            _ \middle-fermata
            \noBreak
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
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \ottava 2
                            \override Staff.Stem.direction = #UP
                            \override Staff.Stem.stemlet-length = 0.75
                            <af''' g''''>16
                            - \accent
                            [
                            <af''' g''''>8
                            - \accent
                            <af''' g''''>16
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            <af''' g''''>16
                            - \accent
                            ]
                            ~
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Score.BarLine.color = \二
                            \override Score.SpanBar.color = \二
                            \tweak text "×3" \startMeasureSpanner
                            \bar ".|:"
                            \override Staff.Stem.stemlet-length = 0.75
                            <af''' g''''>8.
                            [
                            \revert Staff.Stem.stemlet-length
                            <af''' g''''>8
                            - \accent
                            ]
                            \>
                            \bar ":|."
                            \stopMeasureSpanner
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            <af''' g''''>16
                            - \accent
                            [
                            <af''' g''''>16
                            - \accent
                            <af''' g''''>16
                            - \accent
                            <af''' g''''>16
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            <af''' g''''>16
                            - \accent
                            \pp
                            ]
                            ~
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            <af''' g''''>16
                            [
                            <af''' g''''>16
                            - \accent
                            \<
                            <af''' g''''>8
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            <af''' g''''>16
                            - \accent
                            \ffff
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            <af''' g''''>8
                            - \accent
                            [
                            <af''' g''''>16
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            <af''' g''''>8
                            - \accent
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            <fs''' fs''''>8
                            - \accent
                            [
                            \>
                            <fs''' fs''''>16
                            - \accent
                            <fs''' fs''''>16
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            <fs''' fs''''>16
                            - \accent
                            ]
                            ~
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            <fs''' fs''''>16
                            [
                            <fs''' fs''''>8
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            <fs''' fs''''>8
                            - \accent
                            \pp
                            ]
                            \ottava 0
                            \revert Staff.Stem.direction
                        }
                        \once \override VoltaBracketSpanner.padding = 15
                        \ottava 2
                        \override Staff.Stem.stemlet-length = 0.75
                        <fs''' fs''''>8
                        - \accent
                        _ \pp
                        [
                        _ \<
                        <fs''' fs''''>16
                        - \accent
                        _ \ff
                        _ \>
                        \revert Staff.Stem.stemlet-length
                        <fs''' fs''''>16
                        - \accent
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        <fs''' fs''''>16
                        - \accent
                        _ \pp
                        [
                        <fs''' fs''''>16
                        - \accent
                        ~
                        <fs''' fs''''>16
                        \revert Staff.Stem.stemlet-length
                        <fs''' fs''''>16
                        - \accent
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        <fs''' fs''''>8
                        - \accent
                        [
                        <fs''' fs''''>16
                        - \accent
                        \revert Staff.Stem.stemlet-length
                        <fs''' fs''''>16
                        - \accent
                        ]
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        <fs''' fs''''>8.
                        [
                        \revert Staff.Stem.stemlet-length
                        <fs''' fs''''>16
                        - \accent
                        ]
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        <fs''' fs''''>16
                        [
                        <fs''' fs''''>16
                        - \accent
                        <fs''' fs''''>16
                        - \accent
                        \revert Staff.Stem.stemlet-length
                        <fs''' fs''''>16
                        - \accent
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        <fs''' fs''''>16
                        - \accent
                        [
                        <fs''' fs''''>16
                        - \accent
                        ~
                        <fs''' fs''''>16
                        \revert Staff.Stem.stemlet-length
                        <fs''' fs''''>16
                        - \accent
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        <fs''' fs''''>8
                        - \accent
                        [
                        <fs''' fs''''>16
                        - \accent
                        \revert Staff.Stem.stemlet-length
                        <fs''' fs''''>16
                        - \accent
                        ]
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        <fs''' fs''''>16
                        [
                        <fs''' fs''''>16
                        - \accent
                        \revert Staff.Stem.stemlet-length
                        <fs''' fs''''>8
                        - \accent
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        <fs''' fs''''>8
                        - \accent
                        [
                        <fs''' fs''''>16
                        - \accent
                        \revert Staff.Stem.stemlet-length
                        <fs''' fs''''>16
                        - \accent
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        <fs''' fs''''>8
                        - \accent
                        [
                        \revert Staff.Stem.stemlet-length
                        <fs''' fs''''>8
                        - \accent
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        gs''''8
                        - \accent
                        [
                        gs''''16
                        - \accent
                        \revert Staff.Stem.stemlet-length
                        gs''''16
                        - \accent
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        gs''''16
                        - \accent
                        [
                        gs''''16
                        - \accent
                        ~
                        gs''''16
                        \revert Staff.Stem.stemlet-length
                        gs''''16
                        - \accent
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        gs''''8
                        - \accent
                        [
                        gs''''16
                        \revert Staff.Stem.stemlet-length
                        gs''''16
                        ]
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        gs''''8.
                        [
                        \revert Staff.Stem.stemlet-length
                        gs''''16
                        ]
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        gs''''16
                        [
                        gs''''16
                        gs''''16
                        \revert Staff.Stem.stemlet-length
                        gs''''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        a''''16
                        - \tweak padding #5
                        _ \markup \fontsize #4.5 \override #'(font-name . "Bodoni72 Book Italic") {
                                                \column {
                                                    \line {
                                                        "No phrases:"
                                                    }
                                                    \line {
                                                        "Every note a creature on its own."
                                                    }
                                                }
                                            }
                        [
                        fs''''16
                        ~
                        fs''''16
                        \revert Staff.Stem.stemlet-length
                        gs''''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c''''8
                        [
                        as'''16
                        \revert Staff.Stem.stemlet-length
                        gs''''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        gs''''8
                        [
                        gs''''16
                        \revert Staff.Stem.stemlet-length
                        g''''16
                        ]
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        g''''8.
                        [
                        \revert Staff.Stem.stemlet-length
                        gs''''16
                        ]
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        gs''''16
                        [
                        f''''16
                        e''''16
                        \revert Staff.Stem.stemlet-length
                        gs''''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        gs''''16
                        [
                        _ \>
                        fs''''16
                        ~
                        fs''''16
                        \revert Staff.Stem.stemlet-length
                        gs''''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        e'''8
                        [
                        cs''''16
                        \revert Staff.Stem.stemlet-length
                        gs''''16
                        ]
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        gs''''16
                        [
                        gs''''16
                        \revert Staff.Stem.stemlet-length
                        f'''8
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        gs''''8
                        [
                        d''''16
                        \revert Staff.Stem.stemlet-length
                        c'''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        gs''''8
                        _ \ppp
                        [
                        \revert Staff.Stem.stemlet-length
                        as''8
                        ]
                        \ottava 0
                        \ottava 1
                        \override Staff.Stem.stemlet-length = 0.75
                        gs'''8
                        [
                        \revert Staff.Stem.stemlet-length
                        f''''8
                        ]
                        \times 4/5
                        {
                            ds'''8
                            cs''''4
                            \override Staff.Stem.stemlet-length = 0.75
                            gs'''8
                            [
                            \revert Staff.Stem.stemlet-length
                            as''8
                            ]
                            ~
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            as''8
                            [
                            gs'''8
                            \revert Staff.Stem.stemlet-length
                            gs''''8
                            ]
                            ~
                        }
                        gs''''4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        gs''''8
                        [
                        \revert Staff.Stem.stemlet-length
                        a''8
                        ]
                        ~
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            a''8
                            [
                            fs'''8
                            c''8
                            as'''8
                            \revert Staff.Stem.stemlet-length
                            g'''8
                            ]
                        }
                        \times 2/3
                        {
                            f''4
                            e''8
                        }
                        gs'''4
                        \override Staff.Stem.stemlet-length = 0.75
                        gs''''8
                        [
                        \revert Staff.Stem.stemlet-length
                        fs'''8
                        ]
                        ~
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            fs'''8
                            [
                            \revert Staff.Stem.stemlet-length
                            e''''8
                            ]
                            \ottava 0
                            cs'4
                            \ottava 1
                            gs''''8
                            _ \>
                            ~
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            gs''''8
                            [
                            f''8
                            \revert Staff.Stem.stemlet-length
                            d''''8
                            ]
                            \ottava 0
                        }
                        c''4
                        as2
                        f'''4
                        \times 2/3
                        {
                            ds''4
                            cs'2
                        }
                        as''4.
                        \ottava 2
                        gs''''4.
                        _ \pppp
                        \ottava 0
                        \change Staff = "piano 3 staff"
                        \once \override Stem.cross-staff = ##t
                        \once \override Stem.Y-extent = #'(0 . 0)
                        \once \override Stem.details.lengths = #'(25)
                        \once \override Flag.cross-staff = ##t
                        \once \override Flag.Y-extent = #'(0 . 0)
                        \override Flag.stencil = ##f
                        \override Staff.Stem.direction = #UP
                        d4
                        \change Staff = "piano 1 staff"
                        b''4
                        \ottava 2
                        a''''4
                        \ottava 0
                        g'2
                        \times 2/3
                        {
                            \change Staff = "piano 3 staff"
                            \once \override Stem.cross-staff = ##t
                            \once \override Stem.Y-extent = #'(0 . 0)
                            \once \override Stem.details.lengths = #'(29)
                            \once \override Flag.cross-staff = ##t
                            \once \override Flag.Y-extent = #'(0 . 0)
                            \once \override TupletBracket.direction = #UP
                            \once \override TupletBracket.stencil =
                                                #(lambda (grob)
                                                    (let* ((pos (ly:grob-property grob 'positions))
                                                        (dir (ly:grob-property grob 'direction))
                                                        (new-pos (if (= dir 1)
                                                        (max (car pos)(cdr pos))
                                                        (min (car pos)(cdr pos)))))
                                                        (ly:grob-set-property! grob 'positions (cons new-pos new-pos))
                                                        (ly:tuplet-bracket::print grob)))
                            \once \override TupletBracket.padding = #-17
                            f,4
                            \revert Staff.Flag.stencil
                            \revert Staff.Stem.direction
                            \change Staff = "piano 1 staff"
                            b''2
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
                    }
                }
                \context timeSignatureStaff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                        \stopStaff \startStaff
                    }
                }
                \context leftHandStaff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \ottava -2
                        \override Staff.Stem.direction = #DOWN
                        \clef "bass"
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >8
                        - \accent
                        ]
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >8
                        - \accent
                        ]
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >8
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        ]
                        \sustainOn
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        ]
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        \sustainOff
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        ]
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        ]
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        ]
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        ]
                        \sustainOn
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >8
                        - \accent
                        ]
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        \sustainOff
                        ]
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >8
                        - \accent
                        ]
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >8
                        - \accent
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        ]
                        \sustainOn
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        ]
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        \sustainOff
                        ]
                        \ottava 0
                        \revert Staff.Stem.direction
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \ottava -2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >8
                        - \accent
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        ]
                        \sustainOn
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >8.
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        ]
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        ]
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        ]
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >8
                        - \accent
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        ]
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >8
                        - \accent
                        ]
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >8
                        - \accent
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        ]
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >8
                        - \accent
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >8
                        - \accent
                        ]
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >8
                        - \accent
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        ]
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        ]
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >8
                        - \accent
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        ]
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \override leftHandStaff.Stem.stemlet-length = 0.75
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >8.
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert leftHandStaff.Stem.stemlet-length
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        - \accent
                        ]
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
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
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                        >16
                        \ottava 0
                        r8.
                        r2
                        \afterGrace
                        s1 * 5/4
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                            \sustainOff
                        }
                        s1 * 5/4
                        \sustainOn
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        \afterGrace
                        s1 * 5/4
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
                    }
                }
                \context thirdStaff = "piano 4 staff"
                {
                    \context Voice = "piano 4 voice"
                    {
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                        \stopStaff \startStaff
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
