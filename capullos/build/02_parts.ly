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
            \once \override Score.TimeSignature.stencil = ##f
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 6/16
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \set Score.repeatCommands = #'((volta "1 - 2"))
            \time 6/16
            s1 * 3/8
            \bar ":|.|:"
            \revert Score.BarLine.color
            \revert Score.SpanBar.color
            \stopMeasureSpanner
            \once \override Score.TimeSignature.stencil = ##f
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \set Score.repeatCommands = #'((volta "3"))
            \time 6/16
            s1 * 3/8
            \set Score.repeatCommands = #'((volta #f))
            \once \override Score.TimeSignature.stencil = ##f
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 6/16
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 6/16
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \set Score.repeatCommands = #'((volta "1"))
            \time 6/16
            s1 * 3/8
            \bar ":|."
            \set Score.repeatCommands = #'((volta "2"))
            \time 5/4
            s1 * 5/4
            \set Score.repeatCommands = #'((volta #f))
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
                            <af''' g''''>16
                            - \accent
                            <af''' g''''>16
                            <af''' g''''>16
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            <af''' g''''>16
                            - \accent
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Score.BarLine.color = \二
                            \override Score.SpanBar.color = \二
                            \tweak text "×3" \startMeasureSpanner
                            \bar ".|:"
                            \override Staff.Stem.stemlet-length = 0.75
                            <af''' g''''>16
                            [
                            <af''' g''''>16
                            <af''' g''''>16
                            <af''' g''''>16
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            <af''' g''''>16
                            ]
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
                            ]
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            <af''' g''''>8
                            [
                            <af''' g''''>8
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            <af''' g''''>8
                            - \accent
                            ]
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            <af''' g''''>16
                            [
                            <af''' g''''>16
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            <af''' g''''>16
                            - \accent
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            <af''' g''''>16
                            [
                            <af''' g''''>16
                            - \accent
                            <af''' g''''>16
                            - \accent
                            <af''' g''''>16
                            \revert Staff.Stem.stemlet-length
                            <af''' g''''>16
                            - \accent
                            ]
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            <fs''' fs''''>16
                            [
                            <fs''' fs''''>16
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            <fs''' fs''''>16
                            - \accent
                            ]
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            <fs''' fs''''>8
                            - \accent
                            [
                            <fs''' fs''''>8
                            \revert Staff.Stem.stemlet-length
                            <fs''' fs''''>8
                            - \accent
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            <fs''' fs''''>16
                            [
                            <fs''' fs''''>16
                            - \accent
                            <fs''' fs''''>16
                            <fs''' fs''''>16
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            <fs''' fs''''>16
                            - \accent
                            ]
                            \ottava 0
                            \revert Staff.Stem.direction
                        }
                        s1 * 5/4
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
                    }
                }
                \context leftHandStaff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
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
                        ]
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
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
                        ]
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
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
                        ]
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
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
                        ]
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
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
                        ]
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
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
                        \ottava 0
                        \revert Staff.Stem.direction
                        s1 * 5/4
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
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
