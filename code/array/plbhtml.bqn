#
#   Copyright © 2024 Christopher Augustus
#
#   This Source Code Form is subject to the terms of the Mozilla Public
#   License, v. 2.0. If a copy of the MPL was not distributed with this
#   file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
#   ˜˘¨⁼⌜´˝7∞¯•÷×   ¬⎉⚇⍟◶⊘⎊⍎⍕⟨⟩√⋆   ⌽𝕨∊↑∧y⊔⊏⊐π←→    ↙𝕎⍷𝕣⍋YU⊑⊒⍳⊣⊢
#   ⍉𝕤↕𝕗𝕘⊸∘○⟜⋄↩\    ↖𝕊D𝔽𝔾«J⌾»·˙|    ⥊𝕩↓∨⌊n≡∾≍≠      ⋈𝕏C⍒⌈N≢≤≥⇐
#
array ← •Import "plbarray.bqn"

nl                    ← @+10

HtRouteIndex          ← "/"⊸∾(•Fmt⊢)

HtAttrHref            ← "href="∾'"'∾∾⟜'"'
HtAttrStyle           ← "style="∾'"'∾∾⟜'"'
htStyleBorder         ← HtAttrStyle "border: 1px solid lightgray"
HtTagAttr             ← (("<"⊸∾⊣)∾⟜' ')∾(∾⟜">"⊢)
HtTagAnchor           ← "a"  HtTagAttr HtAttrHref
#htTagTd               ← "td" HtTagAttr htStyleBorder
htTagTd               ← "<td>"
HtWrapAnchor          ← (HtTagAnchor⊣)∾(∾⟜"</a>"⊢)
HtWrapBody            ← ("<body>"∾nl)⊸∾∾⟜("</body>"∾nl)
HtWrapTitle           ← "  <title>"⊸∾∾⟜("</title>"∾nl)
HtWrapHead            ← ("<head>"∾nl)⊸∾∾⟜("</head>"∾nl)⊢HtWrapTitle
HtWrapH1              ← "  <h1>"⊸∾∾⟜("</h1>"∾nl)
HtWrapTable           ← ("  <table>"∾nl)⊸∾∾⟜("</table>"∾nl)
HtWrapTableData       ← htTagTd⊸∾∾⟜"</td>"
HtWrapTableDatas      ← ∾HtWrapTableData⚇1
HtWrapTableRow        ← "    <tr>"⊸∾∾⟜("</tr>"∾nl)
HtWrapTableRowAnchor  ← {<∘((HtRouteIndex𝕨)⊸HtWrapAnchor)⚇1∘⊑𝕩}
#HtWrapTableRowAnchor  ← <∘((HtRouteIndex⊣)⊸HtWrapAnchor)⚇1∘⊑⊢
  # ^ @@@ TODO CANNOT FIGURE OUT HOW TO MAKE THIS TACIT
HtWrapTableIndexedRow ← HtWrapTableRow⚇1∘<∘∾∘HtWrapTableDatas∘<∘(HtWrapTableRowAnchor∾1⊸↓)
IndexedRows           ← ↕∘≠⋈˘⊢
HtWrapTableRows       ← ((⊑·>1⊸↑)HtWrapTableIndexedRow(⊑1⊸↓))˘IndexedRows
HtTableFromArray      ← ∾HtWrapTableRows
HtDoc                 ← {
  "<!DOCTYPE ht>"∾nl∾"<ht>"∾nl∾(HtWrapHead𝕨)∾(HtWrapBody((HtWrapH1𝕨)∾(HtWrapTable𝕩)))∾"</ht>"∾nl
}
#•Show array.plb_lang_data
#•Show HtWrapTableRows array.plb_lang_data
•Out "proglangbase" HtDoc (HtTableFromArray array.plb_lang_data)
•Exit 0
