\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \characterName "Une bergère"
      \global \includeNotes "voix"
    >> \includeLyrics "paroles"
    \new Staff <<
      \instrumentName "B.C."
      \global \includeNotes "basse"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}
