\newBookPart #'()
%% 3-1
\act "Acte Troisiesme"
\scene "Scene Premiere" "Scene I"
\sceneDescription\markup\column {
  \fill-line { \line { Le Theatre change & represente un Desert. } }
  \fill-line { \line { \smallCaps Armide, seule. } }
}
\pieceToc\markup\wordwrap {
  \smallCaps Armide : \italic { Ah ! si la liberté me doit estre ravie }
}
\includeScore "DAAarmide"
%% 3-2
\scene "Scene II" "Scene II"
\sceneDescription\markup\smallCaps { Armide, Phenice, Sidonie }
\pieceToc\markup\wordwrap {
  \smallCaps { Armide, Phénice, Sidonie : }
  \italic { Que ne peut point vostre art ? la force en est extréme }
}
\includeScore "DBAarmidePheniceSidonie"
%% 3-3
\newBookPart #'(full-rehearsal)
\scene "Scene III" "Scene III"
\sceneDescription\markup { \smallCaps Armide seule. }
\pieceToc\markup {
 \smallCaps Armide : \italic { Venez, venez, Haine implacable }
}
\includeScore "DCAarmide"
%% 3-4
\newBookPart #'(full-rehearsal)
\scene "Scene IV" "Scene IV"
\sceneDescription \markup \wordwrap-center {
  \smallCaps Armide, \smallCaps { La Haine, } Suite de la Haine.
}
\pieceToc \markup {
  La Haine, chœur :
  \italic { Plus on connait l'Amour et plus on le déteste. } }
\includeScore "DDAhaine"
\pieceToc \markup Ritournelle
\includeScore "DDBritournelle"
\pieceToc \markup {
  La Haine, chœur :
  \italic { Amour, sors pour jamais d'un cœur qui te chasse. } }
\includeScore "DDChaine"
\pieceTocTitle "Air"
\includeScore "DDDair"
\pieceToc \markup {
  La Haine, Armide :
  \italic { Sort du sein d'Armide, Amour, brise ta chaîne } }
\includeScore "DDEarmideHaine"
\pieceTocTitle "Entr'acte"
\reIncludeScore "DDDair" "DDFair"
\actEnd \markup { FIN DU TROISIÈME ACTE }
