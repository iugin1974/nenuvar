%% Aria. Achilla: Tu sei il cor di questo core
\score {
  <<
    \new Staff \withLyrics <<
      \characterName \markup Achilla.
      \keepWithTag #'partUp \global
      \achilla \keepWithTag #'() \includeNotes "achilla"
    >> \includeLyrics "achilla-lyrics"
    \new PianoStaff <<
      \new Staff <<
        \keepWithTag #'() \global
        \clef treble
        \includeNotes "violini"
      >>
      \new Staff <<
        \keepWithTag #'partDown \global
        \clef bass
        \keepWithTag #'no-basson \includeNotes "bassi"
      >>
    >>
  >>
  \layout { }
}
