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
plb_lang_style ← ⟨
  "reg"           ,""             ,""             ,""     ,""     ,""     ,""     ,""     ,""
⟩
plb_lang_head ← ⟨
  "lang"          ,"aka"          ,"ance"         ,"year" ,"para" ,"type" ,"mac"  ,"mem"  ,""
⟩
plb_lang_data ← ⟨∘,≠plb_lang_head⟩ ⥊ plb_lang_head ∾ ⟨
  "Aboa"          ,""             ,"Aboa"         ,"2024" ,"af"   ,"ds"   ,""     ,"arc"  ,""
  "Agda"          ,""             ,"Agda"         ,""     ,"f"    ,"ss"   ,""     ,""     ,""
  "APL"           ,""             ,"APL"          ,""     ,"a"    ,"dw"   ,""     ,"gc"   ,""
  "BQN"           ,""             ,"APL"          ,""     ,"a"    ,"ds"   ,""     ,"gc"   ,""
  "C"             ,""             ,"C"            ,"1972" ,"p"    ,"sw"   ,"pp"   ,"alo"  ,""
  "C++"           ,""             ,"C"            ,"1985" ,"op"   ,"ss"   ,"pp"   ,"alo"  ,""
  "C#"            ,"Csharp"       ,"Java"         ,""     ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Carbon"        ,""             ,"C"            ,""     ,"p"    ,"ss"   ,""     ,"alo"  ,""
  "Carp"          ,""             ,"Lisp"         ,""     ,"f"    ,"ss"   ,""     ,"own"  ,""
  "Clojure"       ,""             ,"Lisp"         ,""     ,"f"    ,"dw"   ,""     ,"gc"   ,""
  "Common Lisp"   ,"CL"           ,"Lisp"         ,""     ,"f"    ,"dw"   ,""     ,"gc"   ,""
  "D"             ,""             ,"C++"          ,""     ,"o"    ,"ss"   ,""     ,"alo,gc" ,""
  "Dart"          ,""             ,"C++"          ,""     ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Elixir"        ,""             ,"Erlang"       ,""     ,"f"    ,"dw"   ,""     ,"gc"   ,""
  "Elm"           ,""             ,"ML"           ,""     ,"f"    ,"ss"   ,""     ,"gc"   ,""
  "Erlang"        ,""             ,"Prolog"       ,""     ,"f"    ,"ds"   ,"pp"   ,"gc"   ,""
  "F#"            ,"Fsharp"       ,"ML"           ,""     ,"f"    ,"ds"   ,""     ,"gc"   ,""
  "Go"            ,"Golang"       ,"C"            ,""     ,"p"    ,"ss"   ,""     ,"gc"   ,""
  "Gleam"         ,""             ,"Erlang"       ,""     ,"f"    ,"ss"   ,""     ,"gc"   ,""
  "Groovy"        ,""             ,"Java"         ,""     ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Haskell"       ,""             ,"ML"           ,""     ,"f"    ,"ss"   ,""     ,"gc"   ,""
  "Idris"         ,""             ,"ML"           ,""     ,"f"    ,"ss"   ,""     ,"gc"   ,""
  "J"             ,""             ,"APL"          ,""     ,"a"    ,"ds"   ,""     ,"gc"   ,""
  "Java"          ,""             ,"C++"          ,"1996" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "JavaScript"    ,"JS"           ,"C"            ,"1995" ,"ofp"  ,"dw"   ,""     ,"gc"   ,""
  "Jelly"         ,""             ,"APL"          ,""     ,"a"    ,"ds"   ,""     ,"gc"   ,""
  "Julia"         ,""             ,"Julia"        ,""     ,"of"   ,"ds"   ,""     ,"gc"   ,""
  "K"             ,""             ,"APL"          ,""     ,"a"    ,"ds"   ,""     ,"gc"   ,""
  "KAP"           ,""             ,"APL"          ,""     ,"a"    ,"ds"   ,""     ,"gc"   ,""
  "Kotlin"        ,""             ,"Java"         ,""     ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Lua"           ,""             ,"Lua"          ,""     ,"p"    ,"ds"   ,""     ,"gc"   ,""
  "LFE"           ,""             ,"Lisp"         ,""     ,"f"    ,"ds"   ,""     ,"gc"   ,""
  "Nim"           ,""             ,"C"            ,""     ,"p"    ,"ss"   ,""     ,"gc"   ,""
  "Objective-C"   ,"Obj-C"        ,"C"            ,""     ,"f"    ,"ss"   ,""     ,"arc"  ,""
  "OCaml"         ,""             ,"ML"           ,""     ,"f"    ,"ss"   ,""     ,"gc"   ,""
  "Odin"          ,""             ,"C"            ,""     ,"p"    ,"ss"   ,""     ,""     ,""
  "Perl"          ,""             ,""             ,""     ,""     ,""     ,""     ,""     ,""
  "PHP"           ,""             ,""             ,""     ,""     ,""     ,""     ,""     ,""
  "Pony"          ,""             ,""             ,""     ,""     ,""     ,""     ,""     ,""
  "Python"        ,"Py"           ,"Python"       ,""     ,"op"   ,"dw"   ,""     ,"gc"   ,""
  "R"             ,""             ,""             ,""     ,""     ,""     ,""     ,""     ,""
  "Racket"        ,""             ,"Scheme"       ,""     ,"fp"   ,"ds"   ,"hy"   ,"gc"   ,""
  "ReasonML"      ,"Reason"       ,"ML"           ,""     ,"fo"   ,"ss"   ,""     ,"gc"   ,""
  "Roc"           ,""             ,"ML"           ,""     ,"f"    ,"ss"   ,""     ,""     ,""
  "Ruby"          ,""             ,"Smalltalk"    ,""     ,"o"    ,"dw"   ,""     ,"gc"   ,""
  "Rust"          ,""             ,"C"            ,""     ,"p"    ,"ss"   ,"nh"   ,"own"  ,""
  "Scala"         ,""             ,"Java"         ,""     ,"fo"   ,"ss"   ,""     ,"gc"   ,""
  "Scheme"        ,""             ,"Lisp"         ,"1975" ,"fp"   ,"ds"   ,"hy"   ,"gc"   ,""
  "Shell"         ,""             ,""             ,""     ,"p"    ,"dw"   ,""     ,"gc"   ,""
  "Smalltalk"     ,""             ,"Simula"       ,""     ,"o"    ,"dw"   ,""     ,"gc"   ,""
  "Swift"         ,""             ,"C"            ,""     ,"o"    ,"ss"   ,""     ,"arc"  ,""
  "TypeScript"    ,"TS"           ,"JS"           ,""     ,"ofp"  ,"ss"   ,""     ,"gc"   ,""
  "Uiua"          ,""             ,"APL"          ,""     ,"a"    ,"ds"   ,""     ,"gc"   ,""
  "Vale"          ,""             ,"C"            ,""     ,"p"    ,"ss"   ,"nh"   ,"own"  ,""
  "Zig"           ,""             ,"C"            ,""     ,"p"    ,"ss"   ,"ct"   ,"alo"  ,""
⟩
plb_gene_style ← ⟨
  "reg"           ,""             ,""             ,""     ,""     ,""     ,""     ,""     ,""
⟩
plb_gene_head ← ⟨
  "lang"         ,"gene"          ,"aka"          ,"year" ,"para" ,"type" ,"mac"  ,"mem"  ,""
⟩
plb_gene_data ← ⟨∘,≠plb_gene_head⟩ ⥊ plb_gene_head ∾ ⟨
  "APL"          ,"APL"           ,""             ,""     ,"a"    ,"dw"   ,""     ,"gc"   ,""
  "APL"          ,"Dyalog APL"    ,""             ,""     ,"a"    ,"dw"   ,""     ,"gc"   ,""
  "APL"          ,"GNU APL"       ,""             ,""     ,"a"    ,"dw"   ,""     ,"gc"   ,""
  "C"            ,"C"             ,""             ,"1972" ,"p"    ,"sw"   ,"pp"   ,"alo"  ,""
  "C"            ,"C78"           ,"K&R C"        ,"1978" ,"p"    ,"sw"   ,"pp"   ,"alo"  ,""
  "C"            ,"C89/C90"       ,"ANSI C/ISO C" ,"1989" ,"p"    ,"sw"   ,"pp"   ,"alo"  ,""
  "C"            ,"C99"           ,""             ,"1999" ,"p"    ,"sw"   ,"pp"   ,"alo"  ,""
  "C"            ,"C11"           ,""             ,"2011" ,"p"    ,"sw"   ,"pp"   ,"alo"  ,""
  "C"            ,"C17"           ,""             ,"2017" ,"p"    ,"sw"   ,"pp"   ,"alo"  ,""
  "C"            ,"C23"           ,""             ,"2023" ,"p"    ,"sw"   ,"pp"   ,"alo"  ,""
  "C++"          ,"C++"           ,""             ,"1985" ,"op"   ,"ss"   ,"pp"   ,"alo"  ,""
  "C++"          ,"C++ 2.0"       ,""             ,"1989" ,"op"   ,"ss"   ,"pp"   ,"alo"  ,""
  "C++"          ,"C++98"         ,""             ,"1998" ,"op"   ,"ss"   ,"pp"   ,"alo"  ,""
  "C++"          ,"C++03"         ,""             ,"2003" ,"op"   ,"ss"   ,"pp"   ,"alo"  ,""
  "C++"          ,"C++11"         ,""             ,"2011" ,"op"   ,"ss"   ,"pp"   ,"alo"  ,""
  "C++"          ,"C++14"         ,""             ,"2014" ,"op"   ,"ss"   ,"pp"   ,"alo"  ,""
  "C++"          ,"C++17"         ,""             ,"2017" ,"op"   ,"ss"   ,"pp"   ,"alo"  ,""
  "C++"          ,"C++20"         ,""             ,"2020" ,"op"   ,"ss"   ,"pp"   ,"alo"  ,""
  "C++"          ,"C++23"         ,""             ,"2024" ,"op"   ,"ss"   ,"pp"   ,"alo"  ,""
  "Java"         ,"JDK 1.0"       ,"Java 1"       ,"1996" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"JDK 1.1"       ,""             ,"1997" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"J2SE 1.2"      ,"Java 2"       ,"1998" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"J2SE 1.3"      ,""             ,"2000" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"J2SE 1.4"      ,""             ,"2002" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"J2SE 5.0"      ,"J2SE 1.5"     ,"2004" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"Java SE 6"     ,"Java SE 1.6"  ,"2006" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"Java SE 7"     ,"Java SE 1.7"  ,"2011" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"Java SE 8"     ,"Java SE 1.8"  ,"2014" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"Java SE 9"     ,"Java SE 1.9"  ,"2017" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"Java SE 10"    ,"Java SE 1.10" ,"2018" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"Java SE 11"    ,""             ,"2018" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"Java SE 12"    ,""             ,"2019" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"Java SE 13"    ,""             ,"2019" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"Java SE 14"    ,""             ,"2020" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"Java SE 15"    ,""             ,"2020" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"Java SE 16"    ,""             ,"2021" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"Java SE 17"    ,""             ,"2021" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"Java SE 18"    ,""             ,"2022" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"Java SE 19"    ,""             ,"2022" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"Java SE 20"    ,""             ,"2023" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"Java SE 21"    ,""             ,"2023" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"Java SE 22"    ,""             ,"2024" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "Java"         ,"Java SE 23"    ,""             ,"2024" ,"o"    ,"ss"   ,""     ,"gc"   ,""
  "JavaScript"   ,"ECMAScript 1"   ,"ES1"         ,"1997" ,"ofp"  ,"dw"   ,""     ,"gc"   ,""
  "JavaScript"   ,"ECMAScript 2"   ,"ES2"         ,"1998" ,"ofp"  ,"dw"   ,""     ,"gc"   ,""
  "JavaScript"   ,"ECMAScript 3"   ,"ES3"         ,"1999" ,"ofp"  ,"dw"   ,""     ,"gc"   ,""
  "JavaScript"   ,"ECMAScript 5"   ,"ES5"         ,"2009" ,"ofp"  ,"dw"   ,""     ,"gc"   ,""
  "JavaScript"   ,"ECMAScript 2015","ES6"         ,"2015" ,"ofp"  ,"dw"   ,""     ,"gc"   ,""
  "JavaScript"   ,"ECMAScript 2016","ES7"         ,"2016" ,"ofp"  ,"dw"   ,""     ,"gc"   ,""
  "JavaScript"   ,"ECMAScript 2017","ES8"         ,"2017" ,"ofp"  ,"dw"   ,""     ,"gc"   ,""
  "JavaScript"   ,"ECMAScript 2018","ES9"         ,"2018" ,"ofp"  ,"dw"   ,""     ,"gc"   ,""
  "JavaScript"   ,"ECMAScript 2019","ES10"        ,"2019" ,"ofp"  ,"dw"   ,""     ,"gc"   ,""
  "JavaScript"   ,"ECMAScript 2020","ES11"        ,"2020" ,"ofp"  ,"dw"   ,""     ,"gc"   ,""
  "JavaScript"   ,"ECMAScript 2021","ES12"        ,"2021" ,"ofp"  ,"dw"   ,""     ,"gc"   ,""
  "JavaScript"   ,"ECMAScript 2022","ES13"        ,"2022" ,"ofp"  ,"dw"   ,""     ,"gc"   ,""
  "JavaScript"   ,"ECMAScript 2023","ES14"        ,"2023" ,"ofp"  ,"dw"   ,""     ,"gc"   ,""
  "JavaScript"   ,"ECMAScript 2024","ES15"        ,"2024" ,"ofp"  ,"dw"   ,""     ,"gc"   ,""
  "Scheme"       ,"SCHEME"        ,""             ,"1975" ,"fp"   ,"ds"   ,"hy"   ,"gc"   ,""
  "Scheme"       ,"RRS"           ,""             ,"1978" ,"fp"   ,"ds"   ,"hy"   ,"gc"   ,""
  "Scheme"       ,"RRRS"          ,""             ,"1985" ,"fp"   ,"ds"   ,"hy"   ,"gc"   ,""
  "Scheme"       ,"R4RS"          ,""             ,"1986" ,"fp"   ,"ds"   ,"hy"   ,"gc"   ,""
  "Scheme"       ,"R5RS"          ,""             ,"1998" ,"fp"   ,"ds"   ,"hy"   ,"gc"   ,""
  "Scheme"       ,"R6RS"          ,""             ,"2007" ,"fp"   ,"ds"   ,"hy"   ,"gc"   ,""
  "Scheme"       ,"R7RS small"    ,""             ,"2013" ,"fp"   ,"ds"   ,"hy"   ,"gc"   ,""
  "Bourne Shell" ,"Bourne Shell"            ,"sh"   ,"1979","p"   ,"dw"   ,""     ,"gc"   ,""
  "Bourne Shell" ,"KornShell"               ,"ksh"  ,"1983","p"   ,"dw"   ,""     ,"gc"   ,""
  "Bourne Shell" ,"Almquist shell"          ,"ash"  ,"1989","p"   ,"dw"   ,""     ,"gc"   ,""
  "Bourne Shell" ,"Bourne-Again SHell"      ,"bash" ,"1989","p"   ,"dw"   ,""     ,"gc"   ,""
  "Bourne Shell" ,"Public domain Korn shell","pdksh","1989","p"   ,"dw"   ,""     ,"gc"   ,""
  "Bourne Shell" ,"Z Shell"                 ,"zsh"  ,"1990","p"   ,"dw"   ,""     ,"gc"   ,""
  "Bourne Shell" ,"POSIX command shell"     ,"sh"   ,"2001","p"   ,"dw"   ,""     ,"gc"   ,""
  "Bourne Shell" ,"Debian Almquist shell"   ,"dash" ,"2002","p"   ,"dw"   ,""     ,"gc"   ,""
⟩

TableIndexes  ← ↕∘≢⋈⌜
TableIndexed  ← TableIndexes⋈¨⊢
TableRowI     ←   ⊑0⊸⊑
TableColI     ← 1⊸⊑0⊸⊑
TableItem     ←    1⊸⊑
ElemStyle     ← ⊑⊑∘(TableColI⊢)⊏⊣
TableLayered  ← {
  0‿1‿2‿3(⊣◶⟨TableItem⊢,TableRowI⊢,TableColI⊢,𝕨ElemStyle⊢⟩)⌜TableIndexed𝕩
}

plb_root ← ⍉ plb_lang_style TableLayered plb_lang_data

PlbArray ⇐ {
    ⟨"/"⟩: plb_root
  ; 𝕩:
    #•Show 𝕩
    i ← •BQN 1↓⊑𝕩
    lang ← ⊑i⊏plb_lang_data
    genedat ← (lang≡⊑)˘⊸/plb_gene_data
    genetab ← ⍉ plb_gene_style TableLayered genedat
    ## separate table with only the genes:
    #(⊏plb_gene_data)∾genes
    ## inserted into langs table
    #•Show plb_root
    #•Show (i+1)↑plb_root
    #•Show ≢(i+1)↑plb_root
    #•Show ≢plb_root
    ((i+1)↑plb_root)∾genetab∾i↓plb_root
}

PlbArrayItem  ⇐  0⊸⊏
PlbArrayRowI  ⇐ ⊑1⊸⊏
PlbArrayColI  ⇐ ⊑2⊸⊏
PlbArrayStyle ⇐ ⊑3⊸⊏

PlbDiag ⇐ {
    ⟨"TI"⟩: TableIndexed  plb_lang_data
  ; ⟨"AI"⟩: PlbArrayItem  plb_root
  ; ⟨"AR"⟩: PlbArrayRowI  plb_root
  ; ⟨"AC"⟩: PlbArrayColI  plb_root
  ; ⟨"AS"⟩: PlbArrayStyle plb_root
  ; ⟨"TT"⟩: ⍉             plb_root
  ; 𝕩     : PlbArray      𝕩
}

{ 0<≠•args ? •Show PlbDiag •args ; @ }

#
#   ˜˘¨⁼⌜´˝7∞¯•÷×   ¬⎉⚇⍟◶⊘⎊⍎⍕⟨⟩√⋆   ⌽𝕨∊↑∧y⊔⊏⊐π←→    ↙𝕎⍷𝕣⍋YU⊑⊒⍳⊣⊢
#   ⍉𝕤↕𝕗𝕘⊸∘○⟜⋄↩\    ↖𝕊D𝔽𝔾«J⌾»·˙|    ⥊𝕩↓∨⌊n≡∾≍≠      ⋈𝕏C⍒⌈N≢≤≥⇐
#
