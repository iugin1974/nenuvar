\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \global \includeNotes "pluton-thesee"
    >> \includeLyrics "paroles"
    \newHaraKiriStaffB <<
      \global \includeNotes "basse"
      { \startHaraKiri s1*5 s1 s2. s1 s1 s2. s1*3 \break
        \stopHaraKiri s1*0-"Bassons et basse continue"
        s1*23 \startHaraKiri \break } >>
    \new Staff <<
      { s1*5 s1 s2. s1 s1 s2. s1*3 s1*0-"Basse du grand chœur"
        s1*26 s1*3 s1*4
        \markDownEnd \mark \markup \italic \right-align \line {
          Thésée sort, suivi de Tisiphone
        }
      }
      \global \includeNotes "basse-grand-choeur" >>
  >>
  \layout { }
  \midi { }
}
