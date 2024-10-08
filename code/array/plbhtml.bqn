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
#   ShowWX ← { •Show 𝕨 ⋄ •Show 𝕩 }
#
⟨ PA ⇐ PlbArray,
  PI ⇐ PlbArrayItem,
  PR ⇐ PlbArrayRowI,
  PC ⇐ PlbArrayColI,
  PS ⇐ PlbArrayStyle
⟩ ← •Import "plbarray.bqn"

nl ← @+10

HtRouteIndex  ← "/"⊸∾•Fmt
HtAttrClass   ← "class="∾'"'∾∾⟜'"'
HtAttrHref    ← "href="∾'"'∾∾⟜'"'
HtTagWithAttr ← (("<"⊸∾⊣)∾⟜' ')∾(∾⟜">"⊢)
HtTagA        ← "a"   HtTagWithAttr HtAttrHref
HtTagTd       ← "td"  HtTagWithAttr HtAttrClass
HtWrapTagA    ← (HtTagA⊣)∾(∾⟜"</a>"⊢)
HtWrapTagTd   ← (HtTagTd⊣)∾(∾⟜"</td>"⊢)
HtWrapTagTr   ← "      <tr>"⊸∾∾⟜("</tr>"∾nl)
HtWrapAnchor  ← (⊣(HtRouteIndex⊣)⊸HtWrapTagA)⚇1

CharInStyle     ← ⊣∊(" "⊸∾PS⊢)
ClassFromStyle  ← (⊑'i'⊸CharInStyle)◶⟨"def","ind"⟩
HtAnchorIfStyle ← {>((PR𝕨)HtWrapAnchor𝕩)⍟('r'⊸CharInStyle𝕨)𝕩}
##HtStylizeAnchor ← >((PR⊣)HtWrapAnchor⊢)⍟('r'⊸CharInStyle⊣)⊢
##  TODO: ^ TACIT FORM IS WRONG

HtTableData         ← (ClassFromStyle∘⊣ HtWrapTagTd⚇1 ⊢)⟜(⊢ HtAnchorIfStyle PI)
HtTableRow          ← <∘HtWrapTagTr∘∾(HtTableData˘)
HtTableFromPlbArray ← ∾·HtTableRow˘⊢

htTable ← HtTableFromPlbArray PA •args
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
      font-size:        1.0em;
      padding:          0.3em;
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
      margin-top:       1.8em;
    }
    td {
      outline:          dotted white;
    }
    td.def {
    }
    td.ind {
      background-color: white;
      padding-left:     1.0em;
    }
    td, th {
      font-size:        0.8em;
      padding:          0.2em;
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

#
#   ˜˘¨⁼⌜´˝7∞¯•÷×   ¬⎉⚇⍟◶⊘⎊⍎⍕⟨⟩√⋆   ⌽𝕨∊↑∧y⊔⊏⊐π←→    ↙𝕎⍷𝕣⍋YU⊑⊒⍳⊣⊢
#   ⍉𝕤↕𝕗𝕘⊸∘○⟜⋄↩\    ↖𝕊D𝔽𝔾«J⌾»·˙|    ⥊𝕩↓∨⌊n≡∾≍≠      ⋈𝕏C⍒⌈N≢≤≥⇐
#
