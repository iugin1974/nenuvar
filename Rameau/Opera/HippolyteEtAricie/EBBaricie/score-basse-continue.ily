\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics <<
      \characterName \markup Aricie
      \global \includeNotes "aricie"
    >> \includeLyrics "paroles"
    \new Staff << \instrumentName \markup { Basse continue }
                  \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
}
