\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = \markup\center-column {
        Hautbois \line { \concat { P \super rs } Violons }
      }
    } << \global \includeNotes "dessus1" >>
    \new Staff \with {
      instrumentName = \markup { \concat { 2 \super ds } Violons }
    } << \global \includeNotes "dessus2" >>
  >>
  \layout { }
}