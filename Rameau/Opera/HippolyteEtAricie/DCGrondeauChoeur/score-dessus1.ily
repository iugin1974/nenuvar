\score {
  \new StaffGroup <<
    \new Staff << \instrumentName \markup Hautbois
                  \keepWithTag #'autres \global
                  %% { s2. s1.*48 \noBreak s1.*16 \noBreak }
                  \includeNotes "hautbois1" >>
    \new Staff << \instrumentName \markup Violons
                  \keepWithTag #'autres \global
                  \includeNotes "violon1" >>
  >>
  \layout { indent = \largeindent }
}
