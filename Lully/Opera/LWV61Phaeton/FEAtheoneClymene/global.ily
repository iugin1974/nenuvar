<<
  { \keys fa \major
    \midiTempo #80 \time 4/4 s1*4
    \digitTime\time 3/4 s2.
    \midiTempo #160 \digitTime \time 2/2 s1
    \midiTempo #80 \digitTime\time 3/4 s2.*2
    \time 4/4 s1*3
    \digitTime\time 3/4 s2.
    \time 4/4 s1
    \digitTime\time 3/4 s2.*3
    \time 4/4 s1
    \digitTime\time 3/4 s2.
    \time 4/4 s1
    \digitTime\time 3/4 s2.*2
    \midiTempo #160 \time 6/4 s1. \bar "|."
  }
  \origLayout {
    s1*4\break
    s2. s1 s2.\break
    s2. s1*2 s2 \bar "" \break
    s2 s2. s1 s2.\pageBreak
    s2.*2 s1 s2.\break
    s1 s2.*2 s1.\pageBreak
  }
>>
