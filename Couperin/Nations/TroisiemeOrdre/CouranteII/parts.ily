\piecePartSpecs
#`((dessus1
    #:music , #{ \origVersion {
  s8 s1.*4\break s1.*5 s2. \bar "" \break s2. s1.*5\break s1.*4\break } #})
  (dessus2
   #:music , #{ \origVersion {
  s8 s1.*4\break s1.*5\break s1.*5\break s1.*5\break } #})
  (basse-archet
   #:music , #{ \origVersion {
  s8 s1.*4\break s1.*6\break s1.*6\break s1.*3\break } #})
  (basse-chiffree
   #:music , #{ \origVersion {
  s8 s1.*4\break s1.*5 s2. \bar "" \break s2. s1.*5\break s1.*4\break } #})
   (claviers
    #:score-template "score-nation-clavier1"
    #:instrument , #{ \markup\center-column {
  Seconde Courante \line\smaller { plus marquée } } #}
    #:music , #{ s8 s1.*3\break s1.*5\break \grace s8 s1.*5\break #}))
