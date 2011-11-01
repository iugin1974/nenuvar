\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \characterName "Mercure"
      \global \keepWithTag #'mercure \includeNotes "voix"
    >> \keepWithTag #'mercure \includeLyrics "paroles"
    \new Staff \withLyrics <<
      \characterName "Thésée"
      \global \keepWithTag #'thesee \includeNotes "voix"
    >> \keepWithTag #'thesee \includeLyrics "paroles"
    \new Staff <<
      \instrumentName "B.C."
      \global \includeNotes "basse"
      \modVersion\includeFigures "chiffres"
    >>
  >>
  \layout {
    indent = \largeindent
    ragged-last = #(eqv? #t (ly:get-option 'urtext))
  }
  \midi { }
}
