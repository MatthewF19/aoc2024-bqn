rules ← (2⊸↑(⋈○•BQN)¯2⊸↑)¨ (⊑'|'⊸∊)¨⊸/•FLines "bqn/aoc2024/day5.txt"
pages ← •BQN¨ {'⟨'∾𝕩∾'⟩'}¨ 1↓ (¬·⊑'|'⊸∊)¨⊸/•FLines "bqn/aoc2024/day5.txt"

Check ← {¬⊑¯1∊+`-˝(∧´∨˝˘)⊸∧𝕨=⌜𝕩}
Valid ← {∧˝𝕨Check⌜𝕩}
SumValid ← {+´(⊑⌊∘÷⟜2∘≠⊸↓)¨𝕨⊸Valid⊸/𝕩}

# part 1
rules SumValid pages
