\score {
  <<
    \setMusic #'group <<
      \new Staff << \global \includeNotes "dessus" >>
      \new Staff << \global \includeNotes "haute-contre" >>
      \new Staff << \global \includeNotes "taille" >>
      \new Staff << \global \includeNotes "quinte" >>
      \new Staff <<
        \global \includeNotes "basse"
        \origLayout { s1*6\pageBreak s1*5\break }
      >>
    >>
    \origVersion \new StaffGroupNoBar \group
    \modVersion \new StaffGroup \group
  >>
  \layout { }
  \midi { }
}
