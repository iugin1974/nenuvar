\score {
  <<
    \setMusic #'group <<
      \new Staff <<
        \modVersion\instrumentName "[Dessus]"
        \global \keepWithTag #'dessus \includeNotes "dessus"
      >>
      \new Staff <<
        \modVersion\instrumentName "[Hautes-contre]"
        \global \includeNotes "haute-contre"
      >>
      \new Staff <<
        \modVersion\instrumentName "[Tailles]"
        \global \includeNotes "taille"
      >>
      \new Staff <<
        \modVersion\instrumentName "Bassons"
        \global \includeNotes "basson"
      >>
      \new Staff <<
        \vA\modVersion\instrumentName "Basses"
        \vB\modVersion\instrumentName "[Basses]"
        \global \includeNotes "basse"
        \vA\origLayout {
          s4 s2*8 s4 \bar "" \break s4 s2*9\pageBreak
        }
        \vB\origLayout {
          s4 s2*6 s4 \bar "" \pageBreak
          s4 s2*6\break s2*5\break
        }
      >>
    >>
    \origVersion\new StaffGroupNoBar \group
    \modVersion\new StaffGroup \group
  >>
  \layout { }
  \midi { }
}
