\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \global \keepWithTag #'sangaride \includeNotes "voix"
    >> \keepWithTag #'sangaride \includeLyrics "paroles"
    \new Staff \withLyrics <<
      \global \keepWithTag #'atys \includeNotes "voix"
    >> \keepWithTag #'atys \includeLyrics "paroles"
    \new Staff << \global \includeNotes "basse" \includeFigures "chiffres" >>
  >>
  \layout { indent = \noindent }
  \midi { }
}