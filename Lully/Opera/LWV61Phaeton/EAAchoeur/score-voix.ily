\score {
  \new ChoirStaff <<
    \new Staff \withLyrics <<
      {
        s4 s2.*30 s2
        s4^\markup \character "Chœur des heures du jour" s2.*28 s2
        s4 \break s2.*30 s2
        s4^\markup \character "Une des heures du jour" s2.*30 s2
        s4^\markup \column \smallCaps { "Chœur des heures du jour" "et des quatre saisons" }
      }
      \global \includeNotes "voix1"
    >> \includeLyrics "paroles1"
    \newHaraKiriStaff \withLyrics <<
      \global \includeNotes "voix2"
    >> \includeLyrics "paroles2"
    \newHaraKiriStaff \withLyrics <<
      \global \includeNotes "voix3"
    >> \includeLyrics "paroles3"
    \newHaraKiriStaffB \withLyrics <<
      \global \includeNotes "voix4"
    >> \includeLyrics "paroles4"
  >>
  \layout { }
}