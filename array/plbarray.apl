⍝
⍝   Copyright © 2024 Christopher Augustus
⍝
⍝   This Source Code Form is subject to the terms of the Mozilla Public
⍝   License, v. 2.0. If a copy of the MPL was not distributed with this
⍝   file, You can obtain one at http://mozilla.org/MPL/2.0/.
⍝
⍝ show all ⎕CR functions in GNU APL: ⎕CR ⍬
⍝ show structure: 8 ⎕CR X
⍝
∇Z ← HtmlTableRows Y;tds;trs
  tds ← {'<td>',⍵,'</td>'}¨¨Y
  ⍝tds
  ⍝⍴tds
  trs ← {(⊂'<tr>'),⍵,(⊂'</tr>')}¨tds
  ⍝trs
  ⍝⍴trs
  Z ← trs
∇
∇Z ← HtmlTableRowsDyalog Y
  ⍝Z←∊'tr'∘Tag∘∊¨↓'td'∘Tag¨Y
∇
∇Z ← PlbDataRaw
  rows ← """
,lang     ,para
,APL      ,a
,BQN      ,a
,C        ,p
,Erlang   ,f
,J        ,a
  """
  ⍝masksep ← ','∈⍨¨rows
  ⍝masksep
  ⍝maskneg ← 1-masksep
  ⍝maskneg
  ⍝partsep ← +\¨masksep
  ⍝partsep
  ⍝partneg ← partsep×maskneg
  ⍝partneg
  ⍝prows ← partneg⊂¨rows
  ⍝prows
  ⍝table ← {(≢⍵) 1⍴⍵}prows
  ⍝table
  Z ← {(≢⍵) 1⍴⍵}{({(+\¨⍵)×(1-⍵)}','∈⍨¨⍵)⊂¨⍵}rows
∇
]BOXING 8
  ⎕ ← HtmlTableRows PlbDataRaw
)OFF

⍝╔════╦════╦════╦════╦════╦════╦════╦════╦════╦════╦════╦════╦════╦════════════╗
⍝║ ~  ║ !⌶ ║ @⍫ ║ #⍒ ║ $⍋ ║ %⌽ ║ ^⍉ ║ &⊖ ║ *⍟ ║ (⍱ ║ )⍲ ║ _! ║ +⌹ ║            ║
⍝║ `◊ ║ 1¨ ║ 2¯ ║ 3< ║ 4≤ ║ 5= ║ 6≥ ║ 7> ║ 8≠ ║ 9∨ ║ 0∧ ║ -× ║ =÷ ║ BACKSP     ║
⍝╠════╩══╦═╩══╦═╩══╦═╩══╦═╩══╦═╩══╦═╩══╦═╩══╦═╩══╦═╩══╦═╩══╦═╩══╦═╩══╦═════════╣
⍝║       ║ Q  ║ W⍹ ║ E⍷ ║ R  ║ T⍨ ║ Y¥ ║ U€ ║ I⍸ ║ O⍥ ║ P⍣ ║ {⍞ ║ }⍬ ║         ║
⍝║  TAB  ║ q? ║ w⍵ ║ e∈ ║ r⍴ ║ t∼ ║ y↑ ║ u↓ ║ i⍳ ║ o○ ║ p⋆ ║ [← ║ ]→ ║ RETURN  ║
⍝╠═══════╩═╦══╩═╦══╩═╦══╩═╦══╩═╦══╩═╦══╩═╦══╩═╦══╩═╦══╩═╦══╩═╦══╩═╦══╩═╗       ║
⍝║ (CAPS   ║ A⍶ ║ S  ║ D  ║ F  ║ G  ║ H  ║ J⍤ ║ K⌸ ║ L⌷ ║ :≡ ║ "≢ ║ |⊣ ║       ║
⍝║  LOCK)  ║ a⍺ ║ s⌈ ║ d⌊ ║ f_ ║ g∇ ║ h∆ ║ j∘ ║ k' ║ l⎕ ║ ;⍎ ║ '⍕ ║ \⊢ ║       ║
⍝╠════════╦╩═══╦╩═══╦╩═══╦╩═══╦╩═══╦╩═══╦╩═══╦╩═══╦╩═══╦╩═══╦╩═══╦╩════╩═══════╣
⍝║        ║ < ¦║ Z  ║ Xχ ║ C¢ ║ V  ║ B£ ║ N  ║ M  ║ <⍪ ║ >⍙ ║ ?⍠ ║             ║
⍝║  SHIFT ║ > °║ z⊂ ║ x⊃ ║ c∩ ║ v∪ ║ b⊥ ║ n⊤ ║ m| ║ ,⍝ ║ .⍀ ║ /⌿ ║  SHIFT      ║
⍝╚════════╩════╩════╩════╩════╩════╩════╩════╩════╩════╩════╩════╩═════════════╝
