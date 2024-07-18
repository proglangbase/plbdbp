#!/usr/bin/env jconsole
0 : 0
    Copyright © 2024 Christopher Augustus

    This Source Code Form is subject to the terms of the Mozilla Public
    License, v. 2.0. If a copy of the MPL was not distributed with this
    file, You can obtain one at http://mozilla.org/MPL/2.0/.

    Special thanks to Adám Brudzewsky, tangentstorm, and twobular
    for their fixes and improvements.
)
plb_impl_head =. {{
  'lang'    ;'prov'             ;'source' ;'lic'    ;'plat'   ;'run'
}} _
smoutput plb_impl_head
NB. plb_impl_body =. (';'dltbs])&.> ($~(1,~#)) cutLF 0 : 0
NB. plb_impl_body =. (';'chopstring(';'dltbs]))&.> ($~(1,~#)) cutLF 0 : 0
plb_impl_body =. >&.>,(';'chopstring(';'dltbs]))&.> ($~(1,~#)) cutLF 0 : 0
  Aboa              ;aboa-erlang      ;Erlang ;wcl    ;lmw    ;os
  Aboa              ;aboa-racket      ;Racket ;wcl    ;lmw    ;os
  Aboa              ;aboa-s7          ;C      ;wcl    ;lmw    ;os
  APL               ;Dyalog           ;C      ;prop   ;lmw    ;ws
  APL               ;GNU APL          ;C      ;scl    ;lmw    ;ws
  BQN               ;BQN              ;JS     ;wcl    ;JS     ;ws
  BQN               ;CBQN             ;C      ;wcl    ;lmw    ;ws
  C                 ;Clang            ;C      ;scl    ;lmw    ;os
  C                 ;GCC              ;C      ;scl    ;lmw    ;os
  Erlang            ;OTP              ;C      ;wcr    ;lmw    ;os
  J                 ;Jsource          ;C      ;wcr    ;lmw    ;ws
  Jelly             ;Jelly            ;Python ;wcr    ;lmw    ;vm
  Uiua              ;Uiua             ;Rust   ;wcr    ;lmw    ;ws
)
smoutput #plb_impl_body
smoutput $plb_impl_body
smoutput plb_impl_body
2!:55(2)
plb_lang_head =. {{
  'lang'              ;'aka'    ;'ance'             ;'para'   ;'type'   ;'mac'    ;'mem'    ;plb_impl_head
}}
plb_lang_data =. #plb_lang_head $; plb_lang_head , {{
  'Aboa'              ;''       ;'Aboa'             ;'af'     ;'ds'     ;''       ;'arc'    ;''
  'APL'               ;''       ;'APL'              ;'a'      ;'dw'     ;''       ;'gc'     ;''
  'BQN'               ;''       ;'APL'              ;'a'      ;'ds'     ;''       ;'gc'     ;''
  'C'                 ;''       ;'C'                ;'p'      ;'sw'     ;'pp'     ;'alo'    ;''
  'C++'               ;''       ;'C'                ;'op'     ;'ss'     ;'pp'     ;'alo'    ;''
  'Clojure'           ;''       ;'Lisp'             ;'f'      ;'dw'     ;''       ;'gc'     ;''
  'CommonLisp'        ;'CL'     ;'Lisp'             ;'f'      ;'dw'     ;''       ;'gc'     ;''
  'Elixir'            ;''       ;'Ruby'             ;'f'      ;'dw'     ;''       ;'gc'     ;''
  'Erlang'            ;''       ;'Prolog'           ;'f'      ;'ds'     ;'pp'     ;'gc'     ;''
  'F#'                ;''       ;'ML'               ;'f'      ;'ds'     ;''       ;'gc'     ;''
  'Go'                ;'Golang' ;'C'                ;'p'      ;'ss'     ;''       ;'gc'     ;''
  'Haskell'           ;''       ;'ML'               ;'f'      ;'ss'     ;''       ;'gc'     ;''
  'J'                 ;''       ;'APL'              ;'a'      ;'ds'     ;''       ;'gc'     ;''
  'Java'              ;''       ;'C++'              ;'o'      ;'ss'     ;''       ;'gc'     ;''
  'JavaScript'        ;'JS'     ;'C'                ;'ofp'    ;'dw'     ;''       ;'gc'     ;''
  'Jelly'             ;''       ;'APL'              ;'a'      ;'ds'     ;''       ;'gc'     ;''
  'OCaml'             ;''       ;'ML'               ;'f'      ;'ss'     ;''       ;'gc'     ;''
  'Objective-C'       ;'Obj-C'  ;'ML'               ;'f'      ;'ss'     ;''       ;'gc'     ;''
  'Python'            ;'Py'     ;'Python'           ;'op'     ;'dw'     ;''       ;'gc'     ;''
  'Racket'            ;''       ;'Scheme'           ;'fp'     ;'ds'     ;'hy'     ;'gc'     ;''
  'Ruby'              ;''       ;'Smalltalk'        ;'o'      ;'dw'     ;''       ;'gc'     ;''
  'Rust'              ;''       ;'C'                ;'p'      ;'ss'     ;'nh'     ;'alo'    ;''
  'Scheme'            ;''       ;'Lisp'             ;'fp'     ;'ds'     ;'hy'     ;'gc'     ;''
  'Shell'             ;''       ;''                 ;'p'      ;'dw'     ;''       ;'gc'     ;''
  'Smalltalk'         ;''       ;'Simula'           ;'o'      ;'dw'     ;''       ;'gc'     ;''
  'TypeScript'        ;'TS'     ;'JS'               ;'ofp'    ;'ss'     ;''       ;'gc'     ;''
  'Uiua'              ;''       ;'APL'              ;'a'      ;'ds'     ;''       ;'gc'     ;''
  'Zig'               ;''       ;'C'                ;'p'      ;'ss'     ;'ct'     ;'alo'    ;''
}}
plb_lang_data 0

