;;; Compiled snippets and support files for `c-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'c-mode
                     '(("extern" "extern ${1:type} ${2:function} (${3:type})\n\n" "extern" nil nil nil nil nil nil)
                       ("f" "${1:type} ${2:name} (${3:params}) {\n    return;\n}" "f" nil nil nil nil nil nil)
                       ("fopen" "FILE *${fp} = fopen(${\"file\"}, \"${r}\");" "FILE *fp = fopen(..., ...);" nil nil nil nil nil nil)
                       ("p" "printf('%1\\n');" "p" nil nil nil nil nil nil)
                       ("printf" "printf (\"${1:%s}\\\\n\"${1:$(if (string-match \"%\" text) \",\" \"\\);\")\n}$2${1:$(if (string-match \"%\" text) \"\\);\" \"\")}" "printf" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Sun Sep 28 14:50:48 2014
