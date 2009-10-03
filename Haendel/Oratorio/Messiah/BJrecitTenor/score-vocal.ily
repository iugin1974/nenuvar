\score {
  \notemode <<
    \new Staff \withLyrics <<
      \characterName \markup Tenore
      \global \clef "G_8" \includeNotes "vtenore"
    >> \includeLyrics "lyrics"
    \new PianoStaff <<
      \new Staff = "up" <<
        \global
        { 
          <re'' si' fad'>2 <dod'' lad' mi'> ~ |
          <dod'' lad' mi'> <si' fad' re'> |
          <red'' si' fad'>1 |
          <si' mi'>4 ~ <mi'' si' sold'> ~ <mi'' dod'' fad'>2 |
          s4 <red'' fad' si'> <mi'' sold' si'> r2 |
        }
      >>
      \new Staff = "down" <<
        \global \clef "bass"
        {
          si,1 ~|
          si, |
          la, |
          sold,2 la, |
          s4 si, mi, r2 |
        }
      >>
    >>
  >>
  \layout { indent = \largeindent }
  %%\midi { \context { \Voice \remove "Dynamic_performer" } }
}