\score {
  \new StaffGroup <<
    \new GrandStaff <<
      \new Staff << \global \includeNotes "dessus1" >>
      \new Staff << \global \includeNotes "dessus2" >>
    >>
    \new Staff <<
      \global \includeNotes "basse"
      \includeFigures "chiffres"
      \origLayout { s2.*10\break s2.*8\break }
    >>
  >>
  \layout { }
  \midi { }
}
