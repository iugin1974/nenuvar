%% Aria. Cleopatra: Tutto può donna Vezzosa, s'amorosa
\score {
  <<
    \new Staff \withLyrics <<
      \characterName \markup "Cleopatra.   "
      \keepWithTag #'(partUp cleopatra) \global
      \cleopatra \includeNotes "cleopatra" 
    >> \includeLyrics "cleopatra-lyrics" 
    
    \new PianoStaff <<
      \new Staff <<
        \keepWithTag #'() \global
        \clef treble
        \includeNotes "violini"
      >>
      \new Staff <<
        \keepWithTag #'partDown \global
        \clef bass
        \includeNotes "bassi"
      >>
    >>
  >>
  \layout { }
}
