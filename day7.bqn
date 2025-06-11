in ← •Flines "bqn/aoc2024/day7.txt"
tvs ← •ParseFloat¨⊑¨(+`':'⊸=)⊸⊔¨ in
eqs ← (•ParseFloat¨·1⊸↓¨1⊸↓)¨((+`' '⊸=)⊸⊔(⊑⌽))¨(+`':'⊸=)⊸⊔¨ in

Rs ← {𝕨 {(𝕨⊏˜⊒)⌾(('‿'=𝕩)⊸/)𝕩} •Repr𝕩} # replace strands with function list as 𝕨
Bin ← {⥊∾⌜⍟(𝕩-1)˜↕2} # all binary numbers with 𝕩 digits
PT ← {2=≠𝕩 ? ⟨"+","×"⟩ ; (⊏⟜"+×")¨Bin ¯1+≠𝕩} # all the combos of + and × to insert into the array
Valid ← {𝕨{⊑𝕨∊•BQN¨(PT Rs⌜ <)𝕩}⚇0‿1 ⌽¨𝕩} # binary mask of which are valid (test values on left; nested list of equations on right)

# part 1
# tvs {𝕨 (Valid +´∘/ ⊣) 𝕩} eqs


# ------- part 2 -------
Ter ← {⥊∾⌜⍟(𝕩-1)˜↕3} # all ternary numbers with 𝕩 digits
PTC ← {2=≠𝕩 ? ⟨⟨"+"⟩,⟨"×"⟩,⟨"(•BQN∾˜○•Repr)"⟩⟩ ; (⊏⟜((<"+")∾(<"×")∾<"(•BQN∾˜○•Repr)"))¨Ter ¯1+≠𝕩} # all the combos of +, ×, and _ to insert into the array
Valid2 ← {𝕨{⊑𝕨∊(•BQN∾)¨(PTC Rs⌜ <)𝕩}⚇0‿1 ⌽¨𝕩} # binary mask of which are valid (test values on left; nested list of equations on right)

# part 2
tvs {𝕨 (Valid2 +´∘/ ⊣) 𝕩} eqs
