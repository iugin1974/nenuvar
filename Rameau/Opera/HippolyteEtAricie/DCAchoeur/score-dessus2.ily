\score {
  \new StaffGroup <<
    \new Staff << \instrumentName \markup Hautbois
                  \keepWithTag #'autres \global
                  \includeNotes "hautbois2" >>
    \new Staff << \instrumentName \markup Violons
                  \keepWithTag #'autres \global
                  \includeNotes "violon2" >>
  >>
  \layout { indent = \largeindent }
}
