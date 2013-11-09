\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new GrandStaff \with { \petiteFluteInstr } <<
        \new Staff \with { \haraKiri } <<
          \global \keepWithTag #'flute1 \includeNotes "dessus"
        >>
        \new Staff \with { \haraKiriFirst } <<
          \global \keepWithTag #'flute2 \includeNotes "dessus"
        >>
      >>
      \new GrandStaff \with { \musetteInstr } <<
        \new Staff \with { \haraKiri } <<
          \global \keepWithTag #'musette1 \includeNotes "dessus"
        >>
        \new Staff \with { \haraKiri } <<
          \global \keepWithTag #'musette2 \includeNotes "dessus"
        >>
      >>
      \new GrandStaff \with { \musetteHautboisViolonInstr } <<
        \new Staff \with { \haraKiriFirst } <<
          \global \keepWithTag #'dessus1 \includeNotes "dessus"
        >>
        \new Staff \with { \haraKiriFirst } <<
          \global \keepWithTag #'dessus2 \includeNotes "dessus"
        >>
      >>
      \new Staff \with { \partiesInstr } <<
        \global \includeNotes "parties"
      >>
    >>

    %% Hebé & Chœur 
    \new ChoirStaff \with { \choeurInstr } <<
      \new Staff \with { \haraKiriFirst } \withLyrics <<
        \global \includeNotes "voix-dessus"
      >> \keepWithTag #'vdessus \includeLyrics "paroles"
      \new Staff \with { \haraKiriFirst } \withLyrics <<
        \global \includeNotes "voix-haute-contre"
      >> \keepWithTag #'vhaute-contre \includeLyrics "paroles"
      \new Staff \with { \haraKiriFirst } \withLyrics <<
        \global \includeNotes "voix-taille"
      >> \keepWithTag #'vtaille \includeLyrics "paroles"
      \new Staff \with { \haraKiriFirst } \withLyrics <<
        \global \includeNotes "voix-basse"
      >> \keepWithTag #'vbasse \includeLyrics "paroles"
    >>
    \new Staff \with { \hebeInstr \haraKiri } \withLyrics <<
      \global \includeNotes "voix"
    >> \keepWithTag #'hebe \includeLyrics "paroles"

    \new Staff \with { \haraKiriFirst \basseInstr } <<
      \global \includeNotes "basse"
      { s8 s2.*29 s2 \bar "" \break }
    >>
  >>
  \layout { }
  \midi { }
}
