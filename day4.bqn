rows ← in
cols ← <˘⍉>in
lrdiag ← {(-𝕩)↓0‿0⍉𝕩⌽˘>in}¨(-¯1+≠in)+↕(¯1+2×≠in)
rldiag ← {(-𝕩)↓0‿0⍉𝕩⌽˘⌽˘>in}¨(-¯1+≠in)+↕(¯1+2×≠in)

# part 1
•Show (+´·∾´{+○(+´"XMAS"⊸⍷)⟜⌽𝕩}⚇1) ⟨rows,cols,lrdiag,rldiag⟩

# part 2
+´(∧○((("AMS"⊸≡∧)∧('A'⊸=1⊸⊑))0‿0⊸⍉)⟜⌽)˘ ∾˝3‿3↕>in
