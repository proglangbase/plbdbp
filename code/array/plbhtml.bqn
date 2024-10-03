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

nl ← @+10

HtRouteIndex  ← "/"⊸∾•Fmt
HtAttrHref    ← "href="∾'"'∾∾⟜'"'
HtTagWithAttr ← (("<"⊸∾⊣)∾⟜' ')∾(∾⟜">"⊢)
HtTagA        ← "a" HtTagWithAttr HtAttrHref
HtWrapTagA    ← (HtTagA⊣)∾(∾⟜"</a>"⊢)
HtWrapTagTd   ← "<td>"⊸∾∾⟜"</td>"
HtWrapTagTr   ← "      <tr>"⊸∾∾⟜("</tr>"∾nl)
HtWrapAnchor  ← (⊣(HtRouteIndex⊣)⊸HtWrapTagA)⚇1
HtWrapStyle   ← {
   "reg"𝕊𝕩: (plbarray.PlbArrayRowI HtWrapAnchor plbarray.PlbArrayItem)𝕩
  ;    𝕨𝕊𝕩:                                     plbarray.PlbArrayItem 𝕩
}

HtTableItem         ← plbarray.PlbArrayStyle HtWrapStyle ⊢
HtTableData         ← HtWrapTagTd⚇1∘HtTableItem
HtTableRow          ← <∘HtWrapTagTr∘∾(HtTableData˘)
HtTableFromPlbArray ← ∾·HtTableRow˘⊢

htTable ← HtTableFromPlbArray plbarray.PlbArray •args
#•Show   htTable
#•Show ≢ htTable
#•Show ≠ htTable
#•Show ≡ htTable
#•Exit 0

htDoc ← "
<!DOCTYPE html>
<html>
<head>
  <meta charset="∾'"'∾"UTF-8"∾'"'∾">
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
"∾htTable∾"    </table>
  </main>
</body>
</html>
"

•Out htDoc
•Exit 0
