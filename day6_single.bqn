Run⇐
i ← 0
Run ← {
•Show "start "∾i
i +↩ 1
m ← 𝕩
x ← ≠m

cm ← '^'=m
m ↩ '#'=m
Rot ← ⍉⌽˘
Fst ← {x‿x⥊(↕×˜x)=⊑/⥊𝕩}
b ←  ⊑¨(0⊸∊∨(x-1)⊸∊)¨ ↕x‿x # border
t ← x‿x⥊0
h ← ⟨0∾/⥊cm⟩ •HashMap ⟨1⟩
s ← 0
p ← 0
q ← 0
i ← 0
Step ← {
    p ↩ ≠`⌾⌽cm
    q ↩ (¬⌈`⌾⌽)⌾(((¬x)+⌊÷⟜x/⥊cm)⊸⌽)𝕩
    s ↩ q∧p
    i ↩ 4|1+i
    h.Has i∾/⥊cm ?
    1 ;
    {
        (i∾/⥊cm) h.Set ⟨1⟩
        (⊑1∊⥊s∧b) ? 
        { t ↩ t ∨ p ⋄ 0 } ; 
        { 
            t ↩ Rot t ∨ s
            cm ↩ Rot Fst s
            Rot 𝕩
        } 𝕩
    } 𝕩
}

{m ↩ Step 𝕩}•_while_{(1⊸≢∧0⊸≢)𝕩} m
•Show +´⥊t

m
}