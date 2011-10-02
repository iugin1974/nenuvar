\header {
  copyrightYear = "2007"
  composer = "Jean-Philippe Rameau"
  poet = "Simon-Joseph Pellegrin"
  date = "Version de 1757"
}

%% LilyPond options:
%%  urtext  if true, then print urtext score
%%  part    if a symbol, then print the separate part score
#(ly:set-option 'ancient-style (eqv? #t (ly:get-option 'urtext)))
#(ly:set-option 'original-layout (eqv? #t (ly:get-option 'urtext)))
#(ly:set-option 'non-incipit (symbol? (ly:get-option 'part)))

%% use baroque style repeats
#(ly:set-option 'baroque-repeats #t)

%% Staff size:
%%  14 for lead sheets
%%  16 for vocal parts
%%  18 for instruments
#(set-global-staff-size
  (cond ((eqv? #f (ly:get-option 'part)) 14)
        ((memq (ly:get-option 'part) '(voix)) 16)
        (else 18)))

%% Line/page breaking algorithm
%%  optimal   for lead sheets
%%  page-turn for instruments and vocal parts
\paper {
  #(define page-breaking (if (or (eqv? (ly:get-option 'part) #f)
                                 (eqv? (ly:get-option 'part) 'voix))
                             ly:optimal-breaking
                             ly:page-turn-breaking))
}

%% No key signature modification
#(ly:set-option 'forbid-key-modification #t)

%% Use rehearsal numbers
#(ly:set-option 'use-rehearsal-numbers #t)

\layout {
  reference-incipit-width = #(* 1/2 mm)
}

%% Tremolo for string instruments
#(if (memq (ly:get-option 'part) '(violon1 violon2 haute-contre taille basse basse-continue))
     (ly:set-option 'use-tremolo-repeat #t))

\include "italiano.ly"
\include "common/common.ily"
\include "common/toc-columns.ily"
\setOpus "Rameau/Opera/HippolyteEtAricie"
\opusTitle "Hippolyte et Aricie"

\opusPartSpecs #`(
  ;; Dessus de violons, flutes, hautbois, sans distinction
  (dessus "" () (#:notes "dessus" #:tag-notes dessus))
  ;; real parts
  (violons "Violons I et II" ((violon #f) (dessus1 #f) (dessus #f))
           (#:notes "dessus" #:tag-notes violons))
  (flutes "Flûtes I et II" ((dessus #f)
                            (hautbois "Hautbois")
                            (violons "Violons"))
          (#:notes "dessus" #:tag-notes flutes))
  (hautbois "Hautbois I et II" ((dessus #f)
                                (violons "Violons"))
            (#:notes "dessus" #:tag-notes hautbois))
  (trompette "Trompette" () (#:notes "dessus" #:tag-notes trompette))
  (cor "Cors en ré" () (#:notes "cor"))
  (haute-contre "Haute-contre" () (#:notes "haute-contre" #:clef "alto"))
  (taille "Taille" () (#:notes "taille" #:clef "alto"))
  (basse "Basses" () (#:notes "basse" #:clef "bass" #:tag-notes basse))
  (basson "Bassons" ((basse "Basses"))
          (#:notes "basse" #:clef "bass" #:tag-notes basson #:instrument "Bassons"))
  (timbales "Timbales" () (#:notes "timbales" #:clef "bass"))
  (basse-continue "Basse continue" ((basse #f))
                  (#:notes "basse" #:tag-notes basse #:clef "bass"
                           #:score-template "score-basse-continue2")))

%%%%%%%%%

scene =
#(define-music-function (parser location title toc-title) (string? markup?)
  (add-toc-item parser 'tocSceneMarkup (if (and (string? toc-title)
                                                (string-null? toc-title))
                                           (string-upper-case title)
                                           toc-title))
  (add-odd-page-header-text
    parser
    (format #f "~a, ~a."
           (string-upper-case (*act-title*))
           (string-upper-case title))
    #t)
  (add-toplevel-markup parser
    (markup #:scene (string-upper-case title)))
  (add-no-page-break parser)
  (make-music 'Music 'void #t))

%%% Figured bass
includeFigures = 
#(define-music-function (parser location pathname) (string?)
  (let ((include-file (include-pathname pathname)))
     #{ \new FiguredBass \figuremode { \include $include-file } #}))

trill = #(make-articulation "stopped")

#(set-cdr! (assoc 'haute-contre french-clefs)
          '(soprano . alto))

%%%%%%%%%

hippolyteMark =
#(define-music-function (parser location) ()
  (make-character-mark "vhaute-contre" "Hippolyte"))

aricieMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbas-dessus" "Aricie"))

phedreMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbas-dessus" "Phèdre"))

choeurMark =
#(define-music-function (parser location) ()
  (make-character-mark "vdessus" "Chœur"))

petitChoeurMark =
#(define-music-function (parser location) ()
  (make-character-mark "vdessus" "Petit chœur"))

dianeMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbas-dessus" "Diane"))

dianeMarkText =
#(define-music-function (parser location text) (markup?)
  (make-character-mark "vbas-dessus"
   (markup #:character-text "Diane" text)))

theseeMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbasse" "Thésée"))

theseeMarkText =
#(define-music-function (parser location text) (markup?)
  (make-character-mark "vbasse"
   (markup #:character-text "Thésée" text)))

tisiphoneMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbasse" "Tisiphone"))

plutonMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbasse" "Pluton"))

mercureMark =
#(define-music-function (parser location) ()
  (make-character-mark "vtaille" "Mercure"))

oenoneMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbas-dessus" "Œnone"))

oenoneMarkText =
#(define-music-function (parser location text) (markup?)
  (make-character-mark "vbas-dessus"
   (markup #:character-text "Œnone" text)))

\layout {
  \context {
    \Voice
    \override Script #'avoid-slur = #'outside
  }
}
