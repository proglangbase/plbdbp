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
plbarray ← •Import "plbarray.bqn"

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
    body {
      background-color: lightgray;
      font-family:      Arial, Helvetica, sans-serif;
      margin:           0;
      padding:          0;
    }
    h1 {
      color:            white;
      font-size:        1.0rem;
      padding:          0.3rem;
      margin:           0;
      text-align:       center;
    }
    header {
      background-color: gray;
      position:         fixed;
      width:            100%;
      padding:          0;
      top:              0;
    }
    main {
      margin-top:       1.8rem;
    }
    td {
      outline:          dotted white;
    }
    th, td {
      font-size:        0.8rem;
      padding:          0.2rem;
    }
    th {
      outline:          solid white;
    }
  </style>
<body>
  <header>
    <h1>proglangbase</h1>
  </header>
  <main>
    <table>
"∾(HtTableFromArray plbarray.PlbArray •args)∾"  </table>
  </main>
</body>
</html>
"

•Out htDoc
•Exit 0
