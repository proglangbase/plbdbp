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
HtAttrClass   ← "class="""∾∾⟜'"'
HtAttrHref    ← "href="""∾∾⟜'"'
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

url     ← ⊑•args
htTable ← HtTableFromPlbArray PA url
#•Show   htTable
#•Show ≢ htTable
#•Show ≠ htTable
#•Show ≡ htTable
#•Exit 0

htDoc ← "
<!DOCTYPE html>
<html>
<head>
  <meta charset=""UTF-8"">
  <title>proglangbase</title>
  <style>
    a {
      font-weight:      bold;
    }
    body {
      background-color: #bfbfbf;
      font-family:      Arial, Helvetica, sans-serif;
      margin:           0;
      padding:          0;
    }
    header {
      background-color: #7f7f7f;
      position:         fixed;
      width:            100%;
      padding-bottom:   0.5em;
      padding-top:      0.5em;
      top:              0;
    }
    header h1 {
      color:            #cfcfcf;
      display:          inline;
      font-size:        1.0em;
      margin:           0;
      padding-left:     1.0em;
      padding-right:    0.5em;
    }
    header a {
      background-color: #bfbfbf;
      color:            #7f3f00;
      font-size:        1.0em;
      margin-left:      0.5em;
      margin-right:     0.5em;
      padding-left:     0.5em;
      padding-right:    0.5em;
      text-decoration:  none;
    }
    main {
      margin-top:       2.2em;
    }
    td {
      outline:          dotted #9f9f9f;
    }
    td a {
      color:            #7f3f00;
      text-decoration:  none;
    }
    td.def {
    }
    td.ind {
      background-color: #cfcfcf;
      padding-left:     1.0em;
    }
    td, th {
      font-size:        0.8em;
      padding-bottom:   0.2em;
      padding-left:     0.3em;
      padding-right:    0.5em;
      padding-top:      0.2em;
    }
    th {
      outline:          solid white;
    }
  </style>
<body>
  <header>
    <h1>proglangbase</h1>
    <a href=""/"">/</a>
    <a href="""∾url∾""">"∾url∾"</a>
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
