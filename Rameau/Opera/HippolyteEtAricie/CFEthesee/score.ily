\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \characterName \markup Thésée
      \global \includeNotes "voix"
    >> \includeLyrics "paroles"
    \new Staff <<
      \instrumentName "B.C."
      \global \includeNotes "basse"
      \modVersion\includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}
