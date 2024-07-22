~ "util.ua" ~ A! DisplayHex Pad

Sbox ↚ ◿4294967296 ⌊×ⁿ32 2⌵∿+1

ABCD ↚ [1732584193 4023233417 2562383102 271733878]
Rot ↚ ¯♭⍉☇1≡°⍉↯4 [7_12_17_22 5_9_14_20 4_11_16_23 6_10_15_21]

Round ↚ (
  ⌊⊸÷16, ⊃⋅⋅∘⊙∘
  ⨬(
    ⍜⋯(↥∩↧¬A!bdbc ⬚0↙∞_32),
  | ⍜⋯(↥∩↧¬A!dcdb ⬚0↙∞_32),◿16+1×5
  | ⍜⋯(/≠↘1) ,◿16+5×3
  | ⍜⋯(≠↥¬A!dbc ⬚0↙∞_32) ,◿16×7
  ) # F G ABCD i  
  ⊃⊃⊃⊙⋅⊙∘⋅∘⋅⋅⋅⋅∘⋅⋅⊙∘
  ⍥(◿4294967296+)3 ⊙⊓⊓⊢Sbox(/+×ⁿ8ⁿ:2°⊏⊏) # F ABCD i
  ⊃⋅⋅∘⊙∘
  ◿4294967296 ⍜⊡+1 [A!dbbc]: ⍜⊙(⬚0↙32⋯)↻ ⊡:Rot
)

# MD5 hash function
# hash ? message
MD₅ ← ∧(◿4294967296+⊸∧Round ⇡64 ¤) :ABCD ↯∞_16_4 Pad

---test
MD₅ utf₈ "The quick brown fox jumps over the lazy dog"
⍤⟜≍: "9e107d9d372bb6826bd81d3542a419d6" DisplayHex

MD₅ utf₈ ""
⍤⟜≍: "d41d8cd98f00b204e9800998ecf8427e" DisplayHex
---
