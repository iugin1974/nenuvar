\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics <<
      \characterName \markup Ramire
      \global \includeNotes "ramire"
    >> \includeLyrics "paroles"
    \new Staff <<
      \instrumentName \markup \center-column { Basse continue }
      \global \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { indent = \largeindent }
}
