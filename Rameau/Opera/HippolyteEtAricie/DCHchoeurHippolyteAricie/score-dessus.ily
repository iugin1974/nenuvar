\score {
  \new StaffGroup <<
    \new Staff << \instrumentName \markup Flûtes
                  \global \includeNotes "flute" >>
    \new Staff << \instrumentName \markup Violons
                  \global \includeNotes "violon" >>
  >>
  \layout { indent = \largeindent }
}
