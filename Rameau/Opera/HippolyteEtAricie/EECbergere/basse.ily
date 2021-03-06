\clef "basse" mi4. fad8 |
<<
  \setMusic #'rondeauA {
    sol2 mi4 |
    si si, mi |
    la, re re, |
    sol,2. |
    sol4 la fad |
    sol la si |
    do'4.( si8) la8.\trill( sol32 la) |
    si4 mi4. fad8 |
  }
  \setMusic #'rondeauB {
    sol2 mi4 |
    si si, mi |
    la, re re, |
    sol,2. |
    sol4 la fad |
    sol4.( fad8\trill) mi fad32( sol la si) |
    do'8.( la16) si4 si, |
    mi-\tag #'fin \fermata
  }
  \setMusic #'coupletI {
    r4 mi |
    fad2 re4 |
    sol2 si,4 |
    do4. si,8 la,8.\trill sol,16 |
    re2 si,4 |
    do8.( si,16) la,4. do8 |
    si,2 do8.( si,16) |
    la,8.\trill( sol,16) re4 re, |
    sol, mi4. fad8 |
  }
  \setMusic #'coupletII {
    r4 mi |
    mi re re |
    re2 do8. si,16 |
    la,4 re, mi, |
    la,2 la,4 |
    mi4. ( fad8 ) sol4 |
    fad4.\trill fad8 sold4\trill |
    la2 fad4 |
    si mi4. fad8 |
  }

  \origVersion {
    \rondeauA \rondeauB
    \coupletI
    \coupletII
  }
  \modVersion {
    \rondeauA \rondeauB
    \coupletI \keepWithTag #'() \rondeauB
    \coupletII
  }
>>
