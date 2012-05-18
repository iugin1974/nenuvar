%%%
%%% Première Entrée
%%%
%{ n°1 %}\newBookPart #'()
\entree "Premiere Entrée" "Le Turc genereux"
\sceneDescription\markup\center-column {
  \line {
    [Le Théatre représente les Jardins \concat { d’ \smallCaps Osman } Bacha,
  }
  \line { terminez par la Mer.] }
}
\scene "Scene Premiere" "Scene 1 : Emilie, Osman"
\sceneDescription\markup\wordwrap-center \smallCaps { Emilie, Osman }
\pieceTocTitle "Ritournelle"
\includeScore "BAAritournelle"

%{ n°2 %}%\newBookPart #'(full)
\pieceToc\markup\wordwrap { EMILIE, OSMAN : 
  \italic { C’est Osman qui me suit, le luy cachons plus rien } }
\includeScore "BABemilieOsman"

%{ n°3 %}
\pieceToc\markup\wordwrap { EMILIE :
  \italic { Dans le séjour témoin de ma naissance } }
\includeScore "BACemilie"

%{ n°4 %}
\pieceToc\markup\wordwrap { EMILIE, OSMAN :
  \italic { Qu’en peignant vos malheurs vous redoublez les miens } }
\includeScore "BADemilieOsman"
\partNoPageTurn #'(basse basson)

%{ n°5 %}
\pieceToc\markup\wordwrap { OSMAN :
  \italic { C’est trop m’accabler par vos pleurs } }
\includeScore "BAEosman"

%{ n°6 %}
\pieceToc\markup\wordwrap { OSMAN : \italic { Je vous quitte, belle Emilie } }
\includeScore "BAFosman"

%{ n°7 %}
\scene "Scene II" "Scene 2 : Emilie, Osman, chœur de matelots"
\pieceToc\markup\wordwrap { EMILIE :
  \italic { Que je ne verray plus !... Barbare } }
\includeScore "BBAemilie"

\sceneDescriptionBottom\markup\justify {
  La nuit se repend sur le Theatre, les flots de la mer se
  soulevent et le tonnerre grounde avec violence.
}
%{ n°8 %}
\pieceTocTitle "Tempête"
\includeScore "BBBtempete"

\sceneDescriptionBottom\markup\justify {
  [La Tempête continue avec la même violence.]
}
%{ n°9 %}
\pieceToc\markup\wordwrap { CHŒUR :
  \italic { Ciel ! de plus d’une mort nous redoutons les coups ! } }
\includeScore "BBCchoeur"
\partNoPageTurn #'(dessus haute-contre taille basse)
%{ n°10 %}
\pieceToc\markup\wordwrap { EMILIE :
  \italic { Que ces cris agitent mes sens ! } }
\includeScore "BBDemilie"
\partNoPageTurn #'(dessus haute-contre taille basse)
%{ n°11 %}
\pieceToc\markup\wordwrap { CHŒUR :
  \italic { Que nous sert d’échapper à la fureur des mers ? } }
\includeScore "BBEchoeur"
%{===%}
\includeScore "BBFemilie"

%{ n°12 %}
\scene "Scene III" "Scene 3 : Emilie, Valere"
\sceneDescription\markup\wordwrap-center {
  \smallCaps { Emilie, Valere } [en Esclave.]
}
\pieceToc\markup\wordwrap { EMILIE, VALERE :
  \italic { Un de ces malheureux approche en soupirant } }
\includeScore "BCAemilieValere"

%{ n°13 %}
\scene "Scene IV" "Scene 4 : Emilie, Valere, Osman"
\sceneDescription\markup\wordwrap-center {
  \smallCaps { Emilie, Valere } [en Esclave,]
  \smallCaps { Osman [Bacha.] } }
\pieceToc\markup\wordwrap { EMILIE, VALERE, OSMAN :
  \italic { Il vous entend, hélas ! comment fuir sa colere ? } }
\includeScore "BDAevo"

%{ n°14 %}
\scene "Scene V" "Scene 5 : Valere, Emilie"
\sceneDescription\markup\wordwrap-center\smallCaps { Valere, Emilie }
\pieceToc\markup\wordwrap { VALERE :
  \italic { Fut-il jamais un cœur plus genereux ? } }
\includeScore "BEAvalere"

%{ n°15 %}%\newBookPart #'()
\scene "Scene VI" \markup\wordwrap { Scene 6 : Emilie, Valere, provençaux et provençales, esclaves africains }
\sceneDescription \markup \left-align \center-column {
  \line \smallCaps { Emilie, Valere, }
  \line { Provençaux et Provençales de leur escadre, }
  \line { Esclaves africains d'Osman }
}
\pieceTocTitle "Marche"
\includeScore "BFAmarche"

%{ n°16 %}
\pieceToc \markup { Emilie, Valere : \italic { Volez, Zéphyrs } }
\includeScore "BFBduo"

%{ n°17 %}
\pieceToc \markup { Chœur : \italic { Volez, Zéphyrs } }
\includeScore "BFCchoeur"

%{ n°18 %}
\pieceTocTitle "Air pour les esclaves africains"
\includeScore "BFDair"

%{ n°19 %}
\pieceToc \markup { Valere : \italic { Hâtez-vous de vous embarquer } }
\includeScore "BFEvalere"

%{ n°20 %}
\pieceTocTitle "Rigaudons I & II"
\includeScore "BFFrigaudon"

%{ n°21 %}
\pieceToc \markup { Emilie : \italic { Fuyez, vents orageux ! } }
\includeScore "BFGemilie"

%{ n°22 %}
\pieceTocTitle "Tambourins I & II"
\includeScore "BFHtambourin"

%{ n°23 %}
\pieceToc \markup { Emilie : \italic { Hâtez-vous de vous embarquer } }
\includeScore "BFIariette"

%{ n°24 %}
\pieceTocTitle "Tambourins I & II"
\reIncludeScore "BFHtambourin" "BFItambourin"

%{ n°25 %}
\pieceToc \markup { Emilie : \italic { Partez ! On languit sur le rivage } }
\includeScore "BFJemilie"

%{ n°26 %}
\pieceTocTitle "Entr'acte"
\reIncludeScore "BFFrigaudon" "BFJrigaudon"
\actEnd "FIN DE LA PREMIÈRE ENTRÉE"
