;;; Compiled snippets and support files for `lua-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'lua-mode
                     '(("f" "function ${1:name}(${2:vars})\n  ${3:statements}                \nend\n" "f" nil nil nil nil nil nil)
                       ("for" "for ${1:x} = ${2:from},${3:to} do\n  ${4:foobars}\nend\n\n" "for" nil nil nil nil nil nil)
                       ("fori" "for ${1:n} = ${2:from},${3:to},${4:by} do ${5:statements} end" "fori" nil nil nil nil nil nil)
                       ("hw" "print (\"hello world\")" "hw" nil nil nil nil nil nil)
                       ("if" "if ${1:pred} then\n   ${2:statements}\nend\n" "if" nil nil nil nil nil nil)
                       ("ifel" "if ${1:pred} then\n   ${2:statements}\nelseif ${3:pred} then\n   ${4:statements}\nelse\n   ${5:statements}\nend\n" "ifel" nil nil nil nil nil nil)
                       ("print" "print('$1')" "print" nil nil nil nil nil nil)
                       ("rep" "repeat\n  ${1:statements}                              \nuntil ${2:predicate}" "rep" nil nil nil nil nil nil)
                       ("while" "while ${1:pred} do\n  ${2:statements}\nend" "while" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Sun Sep 28 14:50:49 2014
