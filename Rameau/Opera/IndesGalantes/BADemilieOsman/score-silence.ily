\markup \line {
  \force-line-width-ratio #11/20 \score {
    \new Staff \with { \tinyStaff } <<
      \keepWithTag #'(part) \global \includeNotes #(*note-filename*)
      \clef #(*clef*)
      $(or (*score-extra-music*) (make-music 'Music))
    >>
    \layout {
      indent = #0
      ragged-last = ##t
      line-width = 6\cm
      \context {
        \Score
        \remove "Bar_number_engraver"
        \override RehearsalMark #'font-size = #-1
        \override MetronomeMark #'font-size = #-2
      }
    }
  }
  \force-line-width-ratio #8/20 \fontsize #-2 \column {
    \bold Osman
    \verse#12 { Qu’en peignant vos malheurs vous redoublez les miens ! }
    \verse#12 { Dissipez vos ennuis sur cet heureux Rivage. }
    \bold Emilie
    \verse#12 { J’y subis, sous vos loix, un second esclavage. }
    \bold Osman
    \verse#12 { Me reprocherez-vous de gêner vos desirs ? }
    \verse#12 { L’unique loy qu’icy vous prescrit ma tendresse, }
    \verse#7 { C’est de permettre aux plaisirs }
    \verse#7 { De vous y suivre sans cesse ; }
    \verse#12 { Répondez à mes vœux ; couronnez mes soupirs. }
    \bold Emilie
    \verse#12 { Contre mes Ravisseurs, ardent à me défendre, }
    \verse#8 { Mon Amant a risqué ses jours ; }
    \verse#8 { Lorsque pour prix de son secours }
    \verse#12 { Peut-être un coup fatal l’a forcé de descendre }
    \verse#8 { Dans l’affreuse nuit du tombeau, }
    \verse#8 { Mon cœurs ingrat, d’un feu nouveau }
    \verse#6 { Se laisseroit surprendre ! }
    \bold Osman
    \verse#8 { Ah ! que me faites vous entendre ? }
    \verse#8 { C’est trop m’accabler par vos pleurs ! }
    \verse#12 { Cessez d’entretenir d’inutiles ardeurs. }
  }
}
