\score {
  \new StaffGroup <<
    \new Staff << \instrumentName \markup \center-column { Violons Hautbois }
                  \global \includeNotes "violon-hautbois" >>
    \new Staff << \instrumentName \markup Haute-contres
                  \global \includeNotes "haute-contre" >>
    \new Staff << \instrumentName \markup Tailles
                  \global \includeNotes "taille" >>
    \new Staff << \instrumentName \markup Basses
                  \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}
