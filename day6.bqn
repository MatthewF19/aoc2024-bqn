•Show m ← >•FLines "day6.txt"
#•Show m ← 10‿10⥊"....#..............#............#..............#.............#..^.............#.#...............#..."
runner ← •Import "day6_single.bqn"

# ---- day 1 ---- #
runner.Run m

# ---- day 2 ---- #
x ← ≠m
cm ← '^'=m
m ↩ '#'=m
# all Ms with an added obstacle excluding one on top of the player
o ← ∾˝(↕x‿x){m∨0⌈cm-˜𝕨≡⎉1‿0↕x‿x}⎉0‿2 m
am ← ((2×cm)⌈⎉2 o) ⊏ ".#^"

•Show +´runner.Run⎉2 am