\act "Acte Quatriesme"
\sceneDescription \markup \wordwrap-center {
  Le Theatre change, & represente le Palais du Soleil.
}
\scene "Scene Premiere" "SCENE 1 : Le Soleil, chœurs"
\sceneDescription \markup \wordwrap-center \smallCaps {
  Le Soleil, les Heures du Jour, le Printems, l'Eté, l'Automne, l'Hyver,
  Suite des quatre Saisons.
}
%{ n°1 %}
\pieceToc \markup { Chœur des Heures et des Saisons :
  \italic { Sans le dieu qui nous éclaire } }
\includeScore "EAAchoeur"
%{ n°2 %}
\pieceToc \markup { L'Automne :
  \italic { C'est par vous, ô Soleil ! que le Ciel s'illumine } }
\includeScore "EABautomne"

%{ n°3 %}
\pieceTocCond #(not (eqv? #t (ly:get-option 'urtext))) \markup {
  Chœur des Heures et des Saisons : \italic { Sans le Dieu qui nous esclaire }
}
\includeScoreCond #(not (eqv? #t (ly:get-option 'urtext))) "EACchoeur"
\markup\orig-version\large\italic\center-column {
  \line {
    On reprend le Chœur des Heures & des Saisons
    \hspace #2
    \raise #2.5 \score {
      { \tinyQuote \key sib \major \digitTime\time 3/4 \partial 4
        \set autoBeaming = ##f
        \clef "vbasse" sib,8 sib, fa4. fa8 fa re \bar "||"
      } \addlyrics { Sans le Dieu qui nous es- }
      \layout { \quoteLayout }
    }
    \hspace #2
    \column {
      \line { &c cy-devant page \page-refIII #'EAAchoeurReprise \null
        jusques à la fin, }
      \line { & le Soleil chante ce qui suit. }
    }
  }
  \vspace #2
  \line {
    Derniere mesure du Chœur \hspace #2
    \raise #2.5 \score {
      { \tinyQuote \key sib \major \digitTime\time 2/2
        \clef "basse" sib,2 sib,8 do sib, la, sol,1~ sol, \custosNote sol,4
      }
      \layout { indent = 0 }
    }
  }
}
\origVersion\pageBreak
%{ n°4 %}
\pieceToc\markup { Le Soleil : \italic { Redoublez la rejoüissance } }
\includeScore "EADsoleil"

\scene "Scène II"
\sceneDescription \markup \center-column {
  \wordwrap-center {
    \smallCaps { Le Soleil, Phaëton, les Heures du Jour, les quatre Saisons, }
    Suite des quatre Saisons.
  }
  \justify {
    Les Printems & se suite dansent, & les autres Saisons chantent
    avec les Heures, pour témoigner qu'ils se réjoüisent de l'arrivée
    du Fils du Soleil dans le Palais de son Pere.
  }
}
%{ n° %}
\pieceTocTitle "Premier air"
\includeScore "EAEair"
%{ n° %}
\pieceTocAndTitle \markup "DEUXIÈME AIR" \markup {
  Deuxième air, chœur : \italic { Dans ce palais Bravez l'envie }
}
\includeScore "EAFairChoeur"
%{ n° %}
\pieceToc \markup { Chœur : \italic { Dans cette demeure charmante } }
\includeScore "EAGchoeur"
%{ n° %}
\pieceToc \markup { Le Soleil, Phaéton }
\includeScore "EBAsoleilPhaeton"
%{ n° %}
\pieceToc \markup { Le Soleil : \italic { C'est toi que j'en atteste } }
\includeScore "EBBsoleil"
%{ n° %}
\pieceToc \markup { Le Soleil, Phaéton }
\includeScore "EBCsoleilPhaeton"
%{ n° %}
\pieceToc \markup { Chœur : \italic { Allez répandre la lumière } }
\includeScore "EBDchoeur"
%{ n° %}
\pieceTocTitle "Entr'acte"
\includeScore "EBEentracte"
\actEnd \markup { FIN DU QUATRIÈME ACTE }
