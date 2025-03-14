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
            \time 4/4
            s1 * 1
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \time 2/4
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/4
            s1 * 1/2
            \time 3/4
            s1 * 3/4
            \time 2/4
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/4
            s1 * 1/2
            \time 4/4
            s1 * 1
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \time 2/4
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/4
            s1 * 1/2
            \time 3/4
            s1 * 3/4
            \time 4/4
            s1 * 1
            \time 5/4
            s1 * 5/4
            \time 6/4
            s1 * 3/2
            \time 7/4
            s1 * 7/4
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
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                    }
                }
                \context leftHandStaff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
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
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
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
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
