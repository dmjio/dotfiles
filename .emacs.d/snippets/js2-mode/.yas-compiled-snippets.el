;;; Compiled snippets and support files for `js2-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'js2-mode
                     '(("cl" "console.log($1);" "cl" nil nil nil nil nil nil)
                       ("com" "//" "com" nil nil nil nil nil nil)
                       ("jsx" "/** @jsx React.DOM */" "jsx" nil nil nil nil nil nil)
                       ("newpage" "(function($) {\n\n    $.st.pages.$1 = {\n      ready : function() {\n        $2\n      }\n    };\n\n    /* re-export */\n    $.extend($.st.pages, { $1 : $.st.pages.$1 });\n\n\n})(jQuery);\n" "newpage" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Sun Sep 28 14:50:49 2014
