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
plb_lang_head ⇐ ⟨
  "lang"              ,"aka"    ,"ance"       ,"para"   ,"type"   ,"mac"    ,"mem"    ,""
⟩
plb_lang_data ⇐ ⟨∘,≠plb_lang_head⟩ ⥊ plb_lang_head ∾ ⟨
  "Aboa"              ,""       ,"Aboa"       ,"af"     ,"ds"     ,""       ,"arc"    ,""
  "Agda"              ,""       ,"Agda"       ,"f"      ,"ss"     ,""       ,""       ,""
  "APL"               ,""       ,"APL"        ,"a"      ,"dw"     ,""       ,"gc"     ,""
  "BQN"               ,""       ,"APL"        ,"a"      ,"ds"     ,""       ,"gc"     ,""
  "C"                 ,""       ,"C"          ,"p"      ,"sw"     ,"pp"     ,"alo"    ,""
  "C++"               ,""       ,"C"          ,"op"     ,"ss"     ,"pp"     ,"alo"    ,""
  "C#"                ,"Csharp" ,"Java"       ,"o"      ,"ss"     ,""       ,"gc"      ,""
  "Carbon"            ,""       ,"C"          ,"p"      ,"ss"     ,""       ,"alo"    ,""
  "Carp"              ,""       ,"Lisp"       ,"f"      ,"ss"     ,""       ,"own"    ,""
  "Clojure"           ,""       ,"Lisp"       ,"f"      ,"dw"     ,""       ,"gc"     ,""
  "Common Lisp"       ,"CL"     ,"Lisp"       ,"f"      ,"dw"     ,""       ,"gc"     ,""
  "D"                 ,""       ,"C++"        ,"o"      ,"ss"     ,""       ,"alo,gc" ,""
  "Dart"              ,""       ,"C++"        ,"o"      ,"ss"     ,""       ,"gc"     ,""
  "Elixir"            ,""       ,"Erlang"     ,"f"      ,"dw"     ,""       ,"gc"     ,""
  "Elm"               ,""       ,"ML"         ,"f"      ,"ss"     ,""       ,"gc"     ,""
  "Erlang"            ,""       ,"Prolog"     ,"f"      ,"ds"     ,"pp"     ,"gc"     ,""
  "F#"                ,"Fsharp" ,"ML"         ,"f"      ,"ds"     ,""       ,"gc"     ,""
  "Go"                ,"Golang" ,"C"          ,"p"      ,"ss"     ,""       ,"gc"     ,""
  "Gleam"             ,""       ,"Erlang"     ,"f"      ,"ss"     ,""       ,"gc"     ,""
  "Groovy"            ,""       ,"Java"       ,"o"      ,"ss"     ,""       ,"gc"     ,""
  "Haskell"           ,""       ,"ML"         ,"f"      ,"ss"     ,""       ,"gc"     ,""
  "Idris"             ,""       ,"ML"         ,"f"      ,"ss"     ,""       ,"gc"     ,""
  "J"                 ,""       ,"APL"        ,"a"      ,"ds"     ,""       ,"gc"     ,""
  "Java"              ,""       ,"C++"        ,"o"      ,"ss"     ,""       ,"gc"     ,""
  "JavaScript"        ,"JS"     ,"C"          ,"ofp"    ,"dw"     ,""       ,"gc"     ,""
  "Jelly"             ,""       ,"APL"        ,"a"      ,"ds"     ,""       ,"gc"     ,""
  "Julia"             ,""       ,"Julia"      ,"of"     ,"ds"     ,""       ,"gc"     ,""
  "K"                 ,""       ,"APL"        ,"a"      ,"ds"     ,""       ,"gc"     ,""
  "KAP"               ,""       ,"APL"        ,"a"      ,"ds"     ,""       ,"gc"     ,""
  "Kotlin"            ,""       ,"Java"       ,"o"      ,"ss"     ,""       ,"gc"     ,""
  "Lua"               ,""       ,"Lua"        ,"p"      ,"ds"     ,""       ,"gc"     ,""
  "LFE"               ,""       ,"Lisp"       ,"f"      ,"ds"     ,""       ,"gc"     ,""
  "Nim"               ,""       ,"C"          ,"p"      ,"ss"     ,""       ,"gc"     ,""
  "Objective-C"       ,"Obj-C"  ,"C"          ,"f"      ,"ss"     ,""       ,"arc"    ,""
  "OCaml"             ,""       ,"ML"         ,"f"      ,"ss"     ,""       ,"gc"     ,""
  "Odin"              ,""       ,"C"          ,"p"      ,"ss"     ,""       ,""       ,""
  "Perl"              ,""       ,""           ,""       ,""       ,""       ,""       ,""
  "PHP"               ,""       ,""           ,""       ,""       ,""       ,""       ,""
  "Pony"              ,""       ,""           ,""       ,""       ,""       ,""       ,""
  "Python"            ,"Py"     ,"Python"     ,"op"     ,"dw"     ,""       ,"gc"     ,""
  "R"                 ,""       ,""           ,""       ,""       ,""       ,""       ,""
  "Racket"            ,""       ,"Scheme"     ,"fp"     ,"ds"     ,"hy"     ,"gc"     ,""
  "ReasonML"          ,"Reason" ,"ML"         ,"fo"     ,"ss"     ,""      ,"gc"     ,""
  "Roc"               ,""       ,"ML"         ,"f"      ,"ss"     ,""       ,""       ,""
  "Ruby"              ,""       ,"Smalltalk"  ,"o"      ,"dw"     ,""       ,"gc"     ,""
  "Rust"              ,""       ,"C"          ,"p"      ,"ss"     ,"nh"     ,"own"    ,""
  "Scala"             ,""       ,"Java"       ,"fo"     ,"ss"     ,""       ,"gc"     ,""
  "Scheme"            ,""       ,"Lisp"       ,"fp"     ,"ds"     ,"hy"     ,"gc"     ,""
  "Shell"             ,""       ,""           ,"p"      ,"dw"     ,""       ,"gc"     ,""
  "Smalltalk"         ,""       ,"Simula"     ,"o"      ,"dw"     ,""       ,"gc"     ,""
  "Swift"             ,""       ,"C"          ,"o"      ,"ss"     ,""       ,"arc"    ,""
  "TypeScript"        ,"TS"     ,"JS"         ,"ofp"    ,"ss"     ,""       ,"gc"     ,""
  "Uiua"              ,""       ,"APL"        ,"a"      ,"ds"     ,""       ,"gc"     ,""
  "Vale"              ,""       ,"C"          ,"p"      ,"ss"     ,"nh"     ,"own"    ,""
  "Zig"               ,""       ,"C"          ,"p"      ,"ss"     ,"ct"     ,"alo"    ,""
⟩
#•Show   plb_lang_head
#•Show ≢ plb_lang_head
#•Show ⊑ plb_lang_head
#•Show HtmlTableRow plb_lang_head
#•Show   plb_lang_data
#•Show ≢ plb_lang_data
#•Show  ˘plb_lang_data
#•Show ≢˘plb_lang_data
#•Show ⊏ plb_lang_data
#•Show ⊏˘plb_lang_data
#•Show plb_lang_data
plb_lang_data
#
#   ˜˘¨⁼⌜´˝7∞¯•÷×   ¬⎉⚇⍟◶⊘⎊⍎⍕⟨⟩√⋆   ⌽𝕨∊↑∧y⊔⊏⊐π←→    ↙𝕎⍷𝕣⍋YU⊑⊒⍳⊣⊢
#   ⍉𝕤↕𝕗𝕘⊸∘○⟜⋄↩\    ↖𝕊D𝔽𝔾«J⌾»·˙|    ⥊𝕩↓∨⌊n≡∾≍≠      ⋈𝕏C⍒⌈N≢≤≥⇐
#
