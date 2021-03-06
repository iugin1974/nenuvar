%%% clef.ily  -- ancient and modern clef command
%%%
%%% Author: Nicolas Sceaux <nicolas.sceaux@free.fr>
%%%
%%% Options
%%% =======
%%%   ancient-style
%%%     When true, use ancient clefs, instead of modern ones.
%%%
%%%   non-incipit
%%%     When true, do not print incipit in modern style.
%%%
%%%   forbid-key-modification
%%%     When true, always use original key signature.
%%%
%%% Music functions
%%% ===============
%%%   \clef "ancient/modern"
%%%   \clef "name"
%%%     Overrides the \clef music command, with this extra feature: two
%%%     clefs may be given as an argument to \clef, seperated by a
%%%     slash. The first one is the ancient clef, the second the modern
%%%     clef. The actually displayed clef depends on the value of the
%%%     'ancient-style option: if 'ancient-style option is #t, then the
%%%     ancient clef is displayed; otherwise, the modern clef is
%%%     displayed, preceeded by the ancient clef if at the beginning of a
%%%     staff.
%%%     \clef "soprano/treble" is like:
%%%     - \clef "soprano" when (ly:get-option 'ancient-style) is #t
%%%     - \clef "treble" otherwise, but with an soprano clef in an incipit
%%%       preceeding the first line.
%%%
%%%  \oldKey pitch mode
%%%  \newKey pitch mode
%%%  \keys pitch mode
%%%
%%% Dependencies
%%% ============
%%% This feature relies on LilyPond >=2.11.40

#(use-modules (ice-9 regex))

%% to avoid warnings:
#(set-object-property! 'clef 'backend-type? ly:music?)
#(set-object-property! 'clef 'backend-doc "Incipit clef music")
#(set-object-property! 'key  'backend-type? ly:music?)
#(set-object-property! 'key  'backend-doc "Incipit key music")

staffStart =
#(define-music-function (parser location) ()
   (if (or (eqv? #t (ly:get-option 'non-incipit))
           (eqv? #t (ly:get-option 'ancient-style)))
       (make-music 'Music)
       #{
  \set Staff.vocalName = ""
  \once\override Staff.InstrumentName.self-alignment-X = #RIGHT
  \once\override Staff.InstrumentName.padding = #0
  \once\override Staff.InstrumentName.stencil = 
  #(lambda (grob)
     (let* ((clef (ly:grob-property grob 'clef))
            (forbid-key-modification
             (eqv? #t (ly:get-option 'forbid-key-modification)))
            (key (if forbid-key-modification
                     (ly:make-music 'Music)
                     (ly:grob-property grob 'key))))
       (if (ly:music? clef)
           (let* ((instrument-name (ly:grob-property grob 'long-text))
                  (layout (ly:output-def-clone (ly:grob-layout grob)))
                  (music (make-music
                          'SequentialMusic
                          'elements
                          (list
                           (make-music
                            'ContextSpeccedMusic
                            'context-type 'Staff
                            'property-operations
                            '((remove "Time_signature_engraver")
                              (push VerticalAxisGroup (-2 . 2) Y-extent)
                              (push InstrumentName 0 self-alignment-X)
                              (push InstrumentName 0.3 padding))
                            'element (make-music
                                      'PropertySet
                                      'symbol 'instrumentName
                                      'value instrument-name))
                           clef
                           (if (ly:music? key)
                               key
                               (make-music 'Music))
                           (make-music
                            'SkipMusic
                            'duration (ly:make-duration 3 0 1 1)))))
                  (score (ly:make-score music))
                  (mm (ly:output-def-lookup layout 'mm))
                  (indent (ly:output-def-lookup layout 'indent 0))
                  (incipit-width (ly:output-def-lookup layout 'incipit-width))
                  (width (* (if (number? incipit-width)
                                incipit-width
                                (if forbid-key-modification 10 15))
                            mm)))
             (ly:output-def-set-variable! layout 'line-width (+ indent width))
             (ly:output-def-set-variable! layout 'indent indent)
             (ly:output-def-set-variable! layout 'ragged-right #f)
             (ly:score-add-output-def! score layout)
             (set! (ly:grob-property grob 'long-text)
                   (markup #:score score)))))
     ;; hack. Why are Staff.InstrumentName overrides permanent,
     ;; even with \once, and non re-overridable?
     (let ((short-text (ly:grob-property grob 'text)))
       (if (markup? short-text)
           (set! (ly:grob-property grob 'text)
                 (markup #:null #:raise -1 #:concat (short-text #:hspace 1)))))
     (system-start-text::print grob))
  #}))

#(define french-clefs '((dessus french . treble)
                        (dessus2 soprano . treble)
                        (haute-contre soprano . alto)
                        (haute-contre2 mezzosoprano . alto)
                        (taille mezzosoprano . alto)
                        (taille2 alto . alto)
                        (quinte alto . alto)
                        (basse bass . bass)
                        (vdessus treble . treble)
                        (vbas-dessus soprano . treble)
                        (vpetite-haute-contre mezzosoprano . G_8)
                        (vhaute-contre alto . G_8)
                        (vhaute-contre2 alto . G_8)
                        (vtaille tenor . G_8)
                        (vbasse-taille varbaritone . bass)
                        (vbasse bass . bass)

                        (vtenor tenor . G_8)
                        (valto  alto . treble)
                        ))

#(define (modern-clef tessitura)
   (cddr (assoc tessitura french-clefs)))

#(define (set-modern-clef! tessitura clef)
   (set-cdr! (assoc tessitura french-clefs)
             (cons (cadr (assoc tessitura french-clefs))
                   clef)))

#(define (make-ancient-or-modern-clef clef-name)
   (let* ((match (string-match "^(.*)/(.*)$" clef-name))
          (clefs (assoc (string->symbol clef-name) french-clefs))
          (ancient-clef (cond (match (match:substring match 1))
                              (clefs (symbol->string (cadr clefs)))
                              (else clef-name)))
          (modern-clef (cond (match (match:substring match 2))
                             (clefs (symbol->string (cddr clefs)))
                             (else clef-name))))
     (cond ((eqv? #t (ly:get-option 'ancient-style))
            ;; ancient clef only
            (make-clef-set ancient-clef))
           ((eqv? #t (ly:get-option 'non-incipit))
            ;; modern clef only
            (make-clef-set modern-clef))
           (else
            ;; modern clef + ancient clef in incipit
            (make-music
             'SequentialMusic
             'elements (list (make-music
                              'ContextSpeccedMusic
                              'context-type 'Staff
                              'element (make-music
                                        'OverrideProperty
                                        'pop-first #t
                                        'grob-property-path '(clef)
                                        'grob-value (make-clef-set ancient-clef)
                                        'once #t
                                        'symbol 'InstrumentName))
                             (make-clef-set modern-clef)))))))

clef =
#(define-music-function (parser location clef-name) (string?)
   (make-ancient-or-modern-clef clef-name))

forcedClef =
#(define-music-function (parser location clef-name) (string?)
   (make-music 'SequentialMusic
               'elements (list (make-music 'ContextSpeccedMusic
                                           'context-type 'Staff
                                           'element (make-music 'PropertySet
                                                                'value #t
                                                                'symbol 'forceClef))
                               (make-ancient-or-modern-clef clef-name))))

#(define (make-key-set note key-alist)
   (let ((pitch (ly:music-property note 'pitch)))
     (make-music 'KeyChangeEvent
                 'pitch-alist (ly:transpose-key-alist key-alist pitch)
                 'tonic pitch)))

oldKey =
#(define-music-function (parser location note key-alist) (ly:music? list?)
   (let ((key-set (make-key-set note key-alist)))
     (if (or (eqv? #t (ly:get-option 'ancient-style))
             (eqv? #t (ly:get-option 'forbid-key-modification)))
         key-set
         (make-music 'ContextSpeccedMusic
                     'context-type 'Staff
                     'element (make-music 'OverrideProperty
                                          'pop-first #t
                                          'grob-property-path '(key)
                                          'grob-value key-set
                                          'once #t
                                          'symbol 'InstrumentName)))))

newKey =
#(define-music-function (parser location note key-alist) (ly:music? list?)
   (if (or (eqv? #t (ly:get-option 'ancient-style))
           (eqv? #t (ly:get-option 'forbid-key-modification)))
       (make-music 'Music)
       (make-key-set note key-alist)))

keys =
#(define-music-function (parser location note key-alist) (ly:music? list?)
   (let ((key-set (make-key-set note key-alist)))
     (if (or (eqv? #t (ly:get-option 'ancient-style))
             (eqv? #t (ly:get-option 'forbid-key-modification)))
         key-set
         (make-music
          'SequentialMusic
          'elements (list key-set
                          (make-music
                           'ContextSpeccedMusic
                           'context-type 'Staff
                           'element (make-music
                                     'OverrideProperty
                                     'pop-first #t
                                     'grob-property-path '(key)
                                     'grob-value key-set
                                     'once #t
                                     'symbol 'InstrumentName)))))))

%%%%%%%%%%%%%%%%
%%% print the ancient clef and the modern clef (side by side)
#(set-object-property! 'orig-glyph
                       'backend-type? string?)
#(set-object-property! 'orig-glyph
                       'backend-doc "Original clef glyph")
#(set-object-property! 'orig-clef-position
                       'backend-type? number?)
#(set-object-property! 'orig-clef-position
                       'backend-doc "Original clef position")

clefWithOriginal =
#(define-music-function (parser location clef-name) (string?)
   (let* ((match (string-match "^(.*)/(.*)$" clef-name))
          (clefs (assoc (string->symbol clef-name) french-clefs))
          (ancient-clef (cond (match (match:substring match 1))
                              (clefs (symbol->string (cadr clefs)))
                              (else clef-name)))
          (modern-clef (cond (match (match:substring match 2))
                             (clefs (symbol->string (cddr clefs)))
                             (else clef-name))))
     (cond ((symbol? (*part*))
            ;; part: modern clef only
            (make-clef-set modern-clef))
           ((eqv? #t (ly:get-option 'ancient-style))
            ;; ancient clef only
            (make-clef-set ancient-clef))
           (else
            (let ((clef-def (assoc ancient-clef supported-clefs)))
              (if (not (pair? clef-def))
                  (ly:error "~a is not a supported clef" ancient-clef))
              (let ((glyph (cadr clef-def))
                    (position (caddr clef-def)))
                #{ \set Staff.forceClef = ##t
\once\override Staff.Clef.orig-glyph = #glyph
\once\override Staff.Clef.orig-clef-position = #position
\once\override Staff.Clef.stencil = #print-clef-with-original-clef
\once\override Staff.Clef.full-size-change = ##t
\once\override Staff.ClefModifier.X-offset =
#clef-modifier-with-original-clef-x-offset
$(make-clef-set modern-clef)
                        #}))))))

#(define (original-clef-stencil clef)
   (ly:stencil-translate-axis
    (parenthesize-stencil
     (ly:font-get-glyph (ly:grob-default-font clef)
                        (string-append (ly:grob-property clef 'orig-glyph)
                                       "_change"))
     0.05 0.25 0.5 0.2)
    (/ (- (ly:grob-property clef 'orig-clef-position)
          (ly:grob-property clef 'staff-position))
       2.0)
    Y))
   
#(define (print-clef-with-original-clef clef)
   (ly:stencil-combine-at-edge
    (original-clef-stencil clef)
    X RIGHT
    (ly:clef::print clef)
    0.2))

#(define (clef-modifier-with-original-clef-x-offset clef-modifier)
   (+ (ly:self-alignment-interface::x-aligned-on-self clef-modifier)
      (ly:self-alignment-interface::centered-on-x-parent clef-modifier)
      0.1 ;; padding / 2
      (* 0.5 (interval-length
               (ly:stencil-extent
                (original-clef-stencil (ly:grob-parent clef-modifier Y))
                X)))))
