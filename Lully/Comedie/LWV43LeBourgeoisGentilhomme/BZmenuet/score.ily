\score {
  \new StaffGroup <<
    \new Staff << \global \includeNotes "dessus" >>
    \new Staff << \global \includeNotes "haute-contre" >>
    \new Staff << \global \includeNotes "taille" >>
    \new Staff << \global \includeNotes "quinte" >>
    \new Staff <<
      \global \includeNotes "basse"
      \modVersion { s2.*8 \break s2.*9 \break }
      \origLayout { s2.*12\break }
      >>
  >>
  \layout { }
  \midi { }
}
