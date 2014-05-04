\newBookPart #'()
%% 4-1
\act "Acte Quatriesme"
\scene "Scene Premiere" "Scene I"
\sceneDescription\markup\smallCaps { Ubalde, Le Chevallier Danois }
\pieceToc\markup\wordwrap {
  \smallCaps { Ubalde, le Chevalier danois : }
  \italic { Nous ne trouvons par tout que des Gouffres ouverts }
}
\includeScore "EAAubaldeChevalier"
%% 4-2
\pieceTocTitle "Air"
\includeScore "EABair"
%% 4-3
\newBookPart #'(full-rehearsal)
\scene "Scene II" "Scene II"
\sceneDescription\markup {
  \smallCaps Lucinde, \smallCaps Ubalde, et \smallCaps { Le Chevalier Danois }
}
\pieceToc\markup\wordwrap {
  \smallCaps { Lucinde, chœur : }
  \italic { Voicy la charmante Retraite }
}
\includeScore "EBAlucinde"
%% 4-4
\pieceTocTitle "Gavotte"
\includeScore "EBBgavotte"
%% 4-5
\pieceTocTitle "Canaries"
\includeScore "EBCcanaries"
%% 4-6
\pieceToc\markup\wordwrap {
  \smallCaps { Lucinde, le Chevalier Danois, Ubalde : }
  \italic { Allons, qui vous retient encore ? }
}
\includeScore "EBDlucindeChevalierUbalde"
%% 4-7
\newBookPart #'(full-rehearsal)
\scene "Scene III" "Scene III"
\sceneDescription\markup\smallCaps { Ubalde, Le Chevalier Danois }
\pieceToc\markup\wordwrap {
  \smallCaps { Le Chevalier Danois, Ubalde : }
  \italic { Je tourne en vain les yeux de toutes parts }
}
\includeScore "ECAchevalierUbalde"
%% 4-8
\newBookPart #'(full-rehearsal)
\scene "Scene IV" "Scene IV"
\sceneDescription\markup\wordwrap {
  \smallCaps Melisse, \smallCaps Ubalde, et
  \smallCaps { Le Chevalier Danois }
}
\pieceToc\markup\wordwrap {
  \smallCaps { Melisse, Ubalde, le Chevalier Danois : }
  \italic { D’où vient que vous vous destournez }
}
\includeScore "EDAmelisseChevalierUbalde"
%% 4-9
\reIncludeScore "EABair" "EDBentracte"
\actEnd \markup { FIN DU QUATRIÈME ACTE }
