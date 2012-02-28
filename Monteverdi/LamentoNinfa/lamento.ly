#(ly:set-option 'urtext #f)
\layout { indent = 17\mm incipit-width = #7 }
#(set-global-staff-size 16)
\include "common.ily"
\include "../../common/custom-bars.ily"

\paper {
  ragged-last-bottom = ##f
}

\layout {
  \context {
    \Staff
    \override TimeSignature #'style = #'mensural
    \override NoteHead #'style = #'baroque
  }
}

\header {
  title = "Lamento dela Ninfa"
  composer = "Claudio Monteverdi"
}


Iglobal = {
  \staffStart
  \set Score.tempoWholesPerMinute = #(ly:make-moment 28 1 0 1)
  \time 4/4
  s1 \bar ";" s1 \bar ";" s1 \bar "|"
  s1 \bar ";" s1 \bar ";" s1 \bar ";"
  s1 \bar ";" s1 \bar "|"
  s1 \bar ";" s1 \bar "|"
  s1 \bar ";" s1 \bar "|"
  s1 \bar ";"
  s1 \bar ";" s1 \bar ";" s1 \bar ";" s1 \bar "|"
  s1 \bar ";" s1 \bar "|"
  s1 \bar ";" s1 \bar "|"
  s1 \bar ";"
  s1 \bar ";" s1 \bar ";" s1 \bar ";" s1 \bar ";" s1 \bar "|."
}

\score {
  \new ChoirStaff <<
    \new Staff << \Iglobal \ItenorePrimo \addlyrics \ItenorePrimoText >>
    \new Staff << \Iglobal \ItenoreSecondo \addlyrics \ItenoreSecondoText >>
    \new Staff << \Iglobal \IbassoPrimo \addlyrics \IbassoPrimoText >>
    \new Staff << \Iglobal \Icontinuo >>
  >>
  \layout { }
  \header { piece = "I. Non havea Febo ancora. A Tre Voci. Doi Tenori, a Basso" }
  \midi { }
}

\score {
  \new ChoirStaff <<
    \new Staff << \IIglobal \IIcanto \addlyrics \IIcantoText >>
    \new Staff << \IIglobal \IItenorePrimo \addlyrics \IItenorePrimoText >>
    \new Staff << \IIglobal \IItenoreSecondo \addlyrics \IItenoreSecondoText >>
    \new Staff << \IIglobal \IIbassoPrimo \addlyrics \IIbassoPrimoText >>
    \new Staff << \IIglobal \IIbassoContinuo >>
  >>
  \layout { }
  \header { piece = "II. Amor" }
  \midi { }
}

IIIglobal = {
  \staffStart
  \set Score.tempoWholesPerMinute = #(ly:make-moment 20 1 0 1)
  \time 4/4
  \repeat unfold 11 { s1 \bar ";" }
  s1 \bar "|."
}

\score {
  \new ChoirStaff <<
    \new Staff << \IIIglobal \IIItenorePrimo \addlyrics \IIItext >>
    \new Staff << \IIIglobal \IIItenoreSecondo \addlyrics \IIItext >>
    \new Staff << \IIIglobal \IIIbassoPrimo \addlyrics \IIItext >>
    \new Staff << \IIIglobal \IIIbassoContinuo >>
  >>
  \layout { }
  \header { piece = "III. Sì tra sdegnosi pianti" }
  \midi { }
}
