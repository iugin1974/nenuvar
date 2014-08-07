\include "Salieri/LesHoraces/common.ily"

%% Title page
\bookpart {
  \paper { #(define page-breaking ly:minimal-breaking) }
  \header {
    title = "Les Horaces"
    date = "1786"
  }
  \markup \null
}
%% Table of contents
\bookpart {
  \paper { #(define page-breaking ly:minimal-breaking) }
  \markuplist
  \abs-fontsize-lines #8
  \override-lines #'(use-rehearsal-numbers . #t)
  \override-lines #'(column-number . 2)
  \table-of-contents
}

%% 0-1
\ouverture "Ouverture"
\includeScore "AAAouverture"

%% 1-1
\act "Acte Premier"
\scene "Scène Première" "Scène I"
\pieceToc\markup\wordwrap {
  Camille, une suivante :
  \italic { D’où nait le trouble qui vous presse }
}
\includeScore "AABcamille"
%% 1-2
\pieceToc\markup\wordwrap {
  Camille : \italic { Pour Albe, hélas ! quels vœux me sont permis }
}
\includeScore "AACcamille"
%% 1-3
\pieceToc\markup\wordwrap {
  Camille, une suivante : \italic { Déja le sanctuaire s’ouvre }
}
\includeScore "AADcamille"
%% 1-4
\pieceToc "[Sinfonia]"
\includeScore "AAEsinfonia"
%% 1-5
\pieceToc\markup\wordwrap {
  Camille, chœur : \italic { Déesse secourable }
}
\includeScore "AAFcamilleChoeur"
%% 1-6
\pieceToc\markup\wordwrap {
  L’oracle : \italic { La guerre entre Albe & Rome aujourd'hui doit finir }
}
\includeScore "AAGoracle"
%% 1-7
\pieceToc\markup\wordwrap {
  Camille : \italic { Ce jour à ton amant va pour jamais t’unir }
}
\includeScore "AAHcamille"
%% 1-8
\pieceToc\markup\wordwrap {
  Camille : \italic { Oui, mon bonheur est assuré }
}
\includeScore "AAIcamille"

\scene "Scène II" "Scène II"
%% 1-9
\pieceToc\markup\wordwrap {
  Camille, chœur : \italic { Secourez-nous, ô puissante Egérie }
}
\includeScore "ABAcamilleChoeur"
