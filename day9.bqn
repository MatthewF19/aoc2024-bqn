# BQN

s←-⟜'0' ⊑ •Flines"day9.txt"
#s←"2333133121414131402"-'0'
•Show l←≠s
o←/2|↕l
a←l↑⥊⍉(↕l)≍l⥊'.'
•Show dd←/˝s≍a
do←/'.'=dd
di←⌽/'.'≠dd
m←do⌊○≠di
do↩m↑do
di↩m↑di
n←+´do<di
sw←n↑>do⋈¨di
c←⌽˘⌾(sw⊸⊏) dd
•Show cn←'.'⊸≠⊸/c
•Show x←≍⟜(↕≠) cn
•Show +´×˝x