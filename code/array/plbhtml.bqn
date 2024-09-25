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

HtAttrHref            ← "href="∾'"'∾∾⟜'"'
HtRouteIndex          ← "/"⊸∾(•Fmt⊢)
HtTagAttr             ← (("<"⊸∾⊣)∾⟜' ')∾(∾⟜">"⊢)
HtTagAnchor           ← "a" HtTagAttr HtAttrHref
HtWrapAnchor          ← (HtTagAnchor⊣)∾(∾⟜"</a>"⊢)
HtWrapTableData       ← "<td>"⊸∾∾⟜"</td>"
HtWrapTableRow        ← "    <tr>"⊸∾∾⟜("</tr>"∾nl)
HtWrapTableRowAnchor  ← {<∘((HtRouteIndex𝕨)⊸HtWrapAnchor)⚇1∘⊑𝕩}
#HtWrapTableRowAnchor  ← <∘((HtRouteIndex⊣)⊸HtWrapAnchor)⚇1∘⊑⊢
  # ^ @@@ TODO CANNOT FIGURE OUT HOW TO MAKE THIS TACIT
HtWrapTableRowData    ← ∾HtWrapTableData⚇1∘<∘(HtWrapTableRowAnchor∾1⊸↓)
HtWrapTableIndexedRow ← HtWrapTableRow⚇1∘<∘∾∘HtWrapTableRowData
IndexedRows           ← ↕∘≠⋈˘⊢
HtWrapTableRows       ← ((⊑·>1⊸↑)HtWrapTableIndexedRow(⊑1⊸↓))˘IndexedRows
HtTableFromArray      ← ∾HtWrapTableRows

htDoc ← "
<!DOCTYPE html>
<html>
<head>
  <title>proglangbase</title>
  <style>
    th, td { border: 1px solid lightgray }
    th     { text-align: left }
  </style>
<body>
  <h1>proglangbase</h1>
  <table>
"∾(HtTableFromArray array.plb_lang_data)∾"  </table>
</body>
</html>
"

•Out htDoc
•Exit 0
