\header {
  copyrightYear = "2013"
  composer = "Jean-Philippe Rameau"
  poet = "Charles Collé"
  subtitle = "Pastorale Héroïque en un acte"
}

%% LilyPond options:
%%  urtext  if true, then print urtext score
%%  part    if a symbol, then print the separate part score
#(ly:set-option 'ancient-style (eqv? #t (ly:get-option 'urtext)))
#(ly:set-option 'ancient-alteration #f) %(eqv? #t (ly:get-option 'urtext)))
#(ly:set-option 'original-layout (and ;#f
                                      (not (symbol? (ly:get-option 'part)))
                                      (eqv? #t (ly:get-option 'urtext))))
#(ly:set-option 'non-incipit (symbol? (ly:get-option 'part)))
#(ly:set-option 'apply-vertical-tweaks
                (and (not (eqv? #t (ly:get-option 'urtext)))
                     (not (symbol? (ly:get-option 'part)))))
#(ly:set-option 'print-footnotes #f)

%% use baroque style repeats
#(ly:set-option 'baroque-repeats (eqv? #t (ly:get-option 'urtext)))
#(ly:set-option 'baroque-repeat-bar ":||:")

%% Staff size
#(set-global-staff-size
  (cond ((not (symbol? (ly:get-option 'part)))
         (if (eqv? #t (ly:get-option 'urtext)) 12 16))
        ((memq (ly:get-option 'part) '(basse-continue)) 16)
        (else 18)))

%% Line/page breaking algorithm
%%  optimal   for lead sheets
%%  page-turn for instruments and vocal parts
\paper {
  #(define page-breaking (if (eqv? (ly:get-option 'part) #f)
                             ly:optimal-breaking
                             ly:page-turn-breaking))
}

%% No key signature modification
#(ly:set-option 'forbid-key-modification #t)

%% Use rehearsal numbers
#(ly:set-option 'use-rehearsal-numbers #t)

\layout { reference-incipit-width = #(* 1/2 mm) }

\include "italiano.ly"
\include "common/common.ily"
\include "common/columns.ily"
\include "common/alterations.ily"
\include "common/toc-columns.ily"
\include "common/livret.ily"
\setOpus "Rameau/Opera/DaphnisEtEgle"
\opusTitle "Daphnis et Æglé"

\layout {
  indent = #(cond ((eqv? #t (ly:get-option 'urtext)) noindent)
                  ;((symbol? (ly:get-option 'part)) smallindent)
                  (else largeindent))
  short-indent = #(if (or (symbol? (ly:get-option 'part))
                          (eqv? #t (ly:get-option 'urtext)))
                      0
                      (* 8 mm))
  ragged-last = #(and ;#f
                      (not (symbol? (ly:get-option 'part)))
                      (eqv? #t (ly:get-option 'urtext)))
}

\opusPartSpecs
#`((dessus "Violons, Flûtes, Hautbois" ()
           (#:notes "dessus" #:tag-notes dessus))
   (parties "Hautes-contre et Tailles" ()
            (#:notes "parties" #:tag-notes parties #:clef "alto"))
   (basson "Bassons" ()
           (#:notes "basse" #:clef "basse" #:tag-notes basson))
   (basse "Basses et basse continue" ()
          (#:notes "basse" #:clef "basse" #:tag-notes basse)))

sceneInc =
#(define-music-function (parser location title toc-title) (string? markup?)
  (increase-rehearsal-major-number)
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

daphnisMark =
#(define-music-function (parser location) ()
  (make-character-mark "vhaute-contre" "Daphnis"))

egleMark =
#(define-music-function (parser location) ()
  (make-character-mark "vdessus" "Eglé"))

pretreMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbasse" "Le Grand Prêtre"))

dessusInstr = \with {
  instrumentName = "Dessus"
  shortInstrumentName = "D."
}
hautboisInstr = \with {
  instrumentName = "Hautbois"
  shortInstrumentName = "Htb"
}
fluteInstr = \with {
  instrumentName = "Flutes"
  shortInstrumentName = "Fl."
}
bassonInstr = \with {
  instrumentName = "Bassons"
  shortInstrumentName = \markup\concat { B \super on }
}
violonInstr = \with {
  instrumentName = "Violons"
  shortInstrumentName = "Vln"
}
violonHautboisInstr = \with {
  instrumentName = \markup\center-column { Violons Hautbois }
  shortInstrumentName = \markup\center-column { "Vln" "Htb" }
}
hcInstr = \with {
  instrumentName = "Hautes-contre"
  shortInstrumentName = "H-c"
}
tailleInstr = \with {
  instrumentName = "Tailles"
  shortInstrumentName = "T."
}
partiesInstr = \with {
  instrumentName = "Parties"
  shortInstrumentName = \markup\center-column { H-c. T. }
}
basseInstr = \with {
  instrumentName = "Basses"
  shortInstrumentName = "Bas"
}
bcInstr = \with {
  instrumentName = "B.C."
  shortInstrumentName = "B.c."
}
choeurInstr = \with {
  instrumentName = "Chœur"
  shortInstrumentName = "Ch."
}
daphnisInstr = \with {
  instrumentName = \markup\large\smallCaps Daphnis
  shortInstrumentName = "D."
}
egleInstr = \with {
  instrumentName = \markup\large\smallCaps Æglé
  shortInstrumentName = "Æ."
}
pretreInstr = \with {
  instrumentName = \markup\large\center-column\smallCaps { "Le Grand" "Prêtre" }
  shortInstrumentName = "Pr."
}
amourInstr = \with {
  instrumentName = \markup\large\smallCaps L'Amour
  shortInstrumentName = "Am."
}
