i←•ParseFloat¨•Flines"day11.txt"
#i ← [125, 17]

Blink ← {
  0: 1 ;
  s←•Repr𝕩
  ¬2|≠s ?
    l←÷⟜2≠s
    l (↑ ⋈○•ParseFloat ↓) s ;
  <2024×𝕩
}

hm ← i •HashMap (≠i)⥊1
Iter ← { 𝕊 𝕩:
  nhm ← ⟨⟩ •HashMap ⟨⟩
  {
    y ← Blink 𝕩
    y { 𝕨 nhm.Set ((hm.Get 𝕩) + nhm.Get⎊0 𝕨) }¨ 𝕩
  }¨ hm.Keys @

  hm ↩ nhm

  0
}

•Out "| "∾•Repr Iter⍟25•_timed @
•Show +´hm.Values @
hm ↩ i •HashMap (≠i)⥊1
•Out ""
•Out "| "∾•Repr Iter⍟75•_timed @
•Show +´hm.Values @