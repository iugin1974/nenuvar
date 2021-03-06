\score {
  <<
    \origVersion \new StaffGroupNoBar <<
      %% Chœur
      \new Staff \withLyrics <<
        \global \keepWithTag #'conducteur \includeNotes "voix-dessus"
      >> \keepWithTag #'vdessus \includeLyrics "paroles"
      \new Lyrics \lyricsto "two" { \keepWithTag #'vdessus2 \includeLyrics "paroles" }
      \new Staff \withLyrics <<
        \global \keepWithTag #'conducteur \includeNotes "voix-haute-contre"
      >> \keepWithTag #'vhaute-contre \includeLyrics "paroles"
      \new Staff \withLyrics <<
        \global \keepWithTag #'conducteur \includeNotes "voix-taille"
      >> \keepWithTag #'vtaille \includeLyrics "paroles"
      \new Staff \withLyrics <<
        \global \keepWithTag #'conducteur \includeNotes "voix-basse"
      >> \keepWithTag #'vbasse \includeLyrics "paroles"
      %% Violons
      \new Staff << \global \keepWithTag #'dessus \includeNotes "dessus" >>
      \new Staff <<
        \global \keepWithTag #'parties \includeNotes "parties"
      >>
      \vA\new Staff \with { \haraKiri } <<
        { <>_"comme la h.c." s4 s2.*5\startHaraKiri }
        \global \keepWithTag #'taille \includeNotes "parties"
      >>
      \new Staff <<
        \global \includeNotes "basse"
        \vA\origLayout {
          s4 s2.*5\pageBreak
          s2.*7\pageBreak
          s2.*5\pageBreak
          s2.*6\pageBreak
          s2.*6\pageBreak
          s2.*6\pageBreak
          s2.*6\pageBreak
          s2.*7\pageBreak
          s2.*6\pageBreak
          s2.*6\pageBreak
          s2.*7\pageBreak
          s2.*4\pageBreak
          s2.*5\pageBreak
          s2.*6\break
        }
        \vB\origLayout {
          s4 s2.*4\break s2.*6\pageBreak
          s2.*5\break s2.*4 s4 \bar "" \pageBreak
          s2 s2.*5\break s2.*5\pageBreak
          s2.*5\break s2.*5\pageBreak
          s2.*6\break s2.*5\pageBreak
          s2.*5\break s2.*4\pageBreak
          s2.*5\break s2.*5\pageBreak
          s2.*5\break s2.*4 s2 \bar "" \pageBreak
          s4 s2.*2\break
        }
      >>
    >>

    \modVersion\new StaffGroupNoBar <<
      \new StaffGroupNoBracket <<    
        \new Staff <<
          \instrumentName "Violons"
          \global \keepWithTag #'dessus \includeNotes "dessus" >>
        \new Staff <<
          \vA\instrumentName\markup\center-column { [Hautes-contre Tailles] }
          \vB\instrumentName\markup\center-column { Hautes-contre Tailles }
          \global
          \keepWithTag #'parties \includeNotes "parties"
        >>
      >>
      \new ChoirStaff \with {
        instrumentName = \markup { \smallCaps Chœur \hspace #2 } }
      <<
        \new Staff \withLyrics <<
          \global \keepWithTag #'conducteur \includeNotes "voix-dessus"
        >> \keepWithTag #'vdessus \includeLyrics "paroles"
        \new Lyrics \lyricsto "two" { \keepWithTag #'vdessus2 \includeLyrics "paroles" }
        \new Staff \withLyrics <<
          \global \keepWithTag #'conducteur \includeNotes "voix-haute-contre"
          >> \keepWithTag #'vhaute-contre \includeLyrics "paroles"
        \new Staff \withLyrics <<
          \global \keepWithTag #'conducteur \includeNotes "voix-taille"
        >> \keepWithTag #'vtaille \includeLyrics "paroles"
        \new Staff \withLyrics <<
          \global \keepWithTag #'conducteur \includeNotes "voix-basse"
        >> \keepWithTag #'vbasse \includeLyrics "paroles"
      >>
      \new Staff <<
        \instrumentName "[Basses]"
        \global \keepWithTag #'basse \includeNotes "basse" >>
    >>
  >>
  \layout {
  indent = #(if (eqv? #t (ly:get-option 'urtext))
                noindent
                largeindent)
}
  \midi { }
}
