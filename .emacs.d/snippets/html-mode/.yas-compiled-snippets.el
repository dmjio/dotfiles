;;; Compiled snippets and support files for `html-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'html-mode
                     '(("a" "<a href='$1'>$2</a>" "a" nil nil nil nil nil nil)
                       ("appl" "<apply template=\"$1\"/>" "appl" nil nil nil nil nil nil)
                       ("apply" "<apply template=\"$1\">\n       $2\n</apply>" "apply" nil nil nil nil nil nil)
                       ("b" "<b>$0</b>" "<b>...</b>" nil nil nil nil nil nil)
                       ("bind" "<bind tag=\"$1\">$2</bind>" "bind" nil nil nil nil nil nil)
                       ("body" "<body$1>\n  $0\n</body>" "<body>...</body>" nil nil nil nil nil nil)
                       ("bootstrapc" "<link rel=\"stylesheet\" src=\"//netdna.bootstrapcdn.com/bootstrap/3.0.1/css/bootstrap.min.css\" />\n<script src=\"//netdna.bootstrapcdn.com/bootstrap/3.0.1/js/bootstrap.min.js\"></script>" "bootstrap" nil nil nil nil nil nil)
                       ("br" "<br />" "<br />" nil nil nil nil nil nil)
                       ("but" "<button id=\"$1\"></button>" "but" nil nil nil nil nil nil)
                       ("code" "<code>\n  $0\n</code>" "<code>...</code>" nil nil nil nil nil nil)
                       ("code" "<code class=\"$1\">\n  $0\n</code>" "<code class=\"...\">...</code>" nil nil nil nil nil nil)
                       ("col" "<div class=\"col-md-$1\">$2</div>" "col" nil nil nil nil nil nil)
                       ("com" "<!-- $1 -->" "com" nil nil nil nil nil nil)
                       ("con" "<div class=\"container\">$1</div>" "con" nil nil nil nil nil nil)
                       ("dc" "<div class=\"$1\">\n    $2\n</div>" "dc" nil nil nil nil nil nil)
                       ("div" "<div${1: id=\"${2:some_id}\"}${3: class=\"${4:some_class}\"}>$0</div>" "<div...>...</div>" nil nil nil nil nil nil)
                       ("div" "<div class=\"$1\">\n  $0\n</div>" "<div class=\"...\">...</div>" nil nil nil nil nil nil)
                       ("div" "<div id=\"$1\">\n  $0\n</div>" "<div id=\"...\">...</div>" nil nil nil nil nil nil)
                       ("div" "<div id=\"$1\" class=\"$2\">\n  $0\n</div>" "<div id=\"...\" class=\"...\">...</div>" nil nil nil nil nil nil)
                       ("dov" "a mirror up here $3\n\n\n<dov ${1:id=\"${2:some_id and here comes another nested field: ${3:nested_shit}}\"}>\n    $0\n</dov>\n<dov $1>\n    actually some other shit and $3\n</dov>" "<dov...>...</dov>" nil nil nil nil nil nil)
                       ("favicon" "<link rel=\"icon\" href=\"static/img/favicon.ico\" type=\"image/x-icon\" />\n<link rel=\"shortcut icon\" href=\"static/img/favicon.ico\" type=\"image/x-icon\" />\n" "favicon" nil nil nil nil nil nil)
                       ("footer" "<footer>$1</footer>" "footer" nil nil nil nil nil nil)
                       ("form" "<form method=\"$1\" id=\"$2\" action=\"$3\">\n  $0\n</form>" "<form method=\"...\" id=\"...\" action=\"...\"></form>" nil nil nil nil nil nil)
                       ("head" "<head>\n  $0\n</head>" "<head>...</head>" nil nil nil nil nil nil)
                       ("hr" "<hr />" "<hr />" nil nil nil nil nil nil)
                       ("href" "<a href=\"$1\">$2</a>" "<a href=\"...\">...</a>" nil nil nil nil nil nil)
                       ("html" "<html>\n  $0\n</html>" "<html>...</html>" nil nil nil nil nil nil)
                       ("html" "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"${1:en}\" lang=\"${2:en}\">\n  $0\n</html>" "<html xmlns=\"...\">...</html>" nil nil nil nil nil nil)
                       ("html5" "<!DOCTYPE html>\n<!--[if lt IE 7]>      <html class=\"no-js lt-ie9 lt-ie8 lt-ie7\">\n<![endif]-->\n<!--[if IE 7]>         <html class=\"no-js lt-ie9 lt-ie8\"> <![endif]-->\n<!--[if IE 8]>         <html class=\"no-js lt-ie9\"> <![endif]-->\n<!--[if gt IE 8]><!--> <html class=\"no-js\"> <!--<![endif]-->\n    <head>\n        <meta charset=\"utf-8\">\n        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n        <title>${1:title}</title>\n        <meta name=\"description\" content=\"\">\n        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n\n        <!-- Place favicon.ico and apple-touch-icon.png in the root\n        directory -->\n\n        <link rel=\"stylesheet\" href=\"css/normalize.css\">\n        <link rel=\"stylesheet\" href=\"css/main.css\">\n        <script src=\"js/vendor/modernizr-2.6.2.min.js\"></script>\n    </head>\n    <body>\n        <!--[if lt IE 7]>\n            <p class=\"browsehappy\">You are using an\n        <strong>outdated</strong> browser. Please <a\n        href=\"http://browsehappy.com/\">upgrade your browser</a> to\n        improve your experience.</p>\n        <![endif]-->\n\n        <!-- Add your site or application content here -->\n        <p>Hello world! This is HTML5 Boilerplate.</p>\n\n        <script\n        src=\"//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js\"></script>\n        <script>window.jQuery || document.write('<script\n        src=\"js/vendor/jquery-1.10.2.min.js\"><\\/script>')</script>\n        <script src=\"js/plugins.js\"></script>\n        <script src=\"js/main.js\"></script>\n\n        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID.\n        -->\n        <script>\n            (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=\n            function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new\n        Date;\n            e=o.createElement(i);r=o.getElementsByTagName(i)[0];\n            e.src='//www.google-analytics.com/analytics.js';\n            r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));\n            ga('create','UA-XXXXX-X');ga('send','pageview');\n        </script>\n    </body>\n</html>" "html5" nil nil nil nil nil nil)
                       ("htmlnew" "<!doctype html>\n<html>\n   <head>\n\n   </head>\n   </body>\n   </body>\n</html>" "htmlnew" nil nil nil nil nil nil)
                       ("i" "<i>$0</i>" "<i>...</i>" nil nil nil nil nil nil)
                       ("ife" "<ifEnvironment name=\"$1\">\n               $2\n</ifEnvironment>" "ife" nil nil nil nil nil nil)
                       ("img" "<img src=\"$1\" class=\"$2\" alt=\"$3\" />" "<img src=\"...\" class=\"...\" alt=\"...\" />" nil nil nil nil nil nil)
                       ("input" "<input type=\"$1\" name=\"$2\" value=\"$3\" />" "<input ... />" nil nil nil nil nil nil)
                       ("jquery" "<script src=\"//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js\"></script>" "jquery" nil nil nil nil nil nil)
                       ("label" "<label class=\"$1\">$2</label>" "label" nil nil nil nil nil nil)
                       ("link" "<link rel=\"${1:stylesheet}\" href=\"${2:url}\" type=\"${3:text/css}\" media=\"${4:screen}\" />" "<link stylesheet=\"...\" />" nil nil nil nil nil nil)
                       ("link" "<!--[if IE]>\n<link rel=\"${1:stylesheet}\" href=\"${2:url}\" type=\"${3:text/css}\" media=\"${4:screen}\" />\n<![endif]-->" "<!--[if IE]><link stylesheet=\"...\" /><![endif]-->" nil nil nil nil nil nil)
                       ("mailto" "<a href=\"mailto:$1@$2\">$0</a>" "<a href=\"mailto:...@...\">...</a>" nil nil nil nil nil nil)
                       ("nav" "<nav>$1</nav>" "nav" nil nil nil nil nil nil)
                       ("ngc" "ng-controll=\"$1\"  " "ngc" nil nil nil nil nil nil)
                       ("p" "<p>$1</p>" "<p>...</p>" nil nil nil nil nil nil)
                       ("pre" "<pre>\n  $0\n</pre>" "<pre>...</pre>" nil nil nil nil nil nil)
                       ("q" "<blockquote>\n$0\n</blockquote>" "<blockquote>...</blockquote>" nil nil nil nil nil nil)
                       ("quote" "<blockquote>\n  $1\n</blockquote>" "<blockquote>...</blockquote>" nil nil nil nil nil nil)
                       ("row" "<div class=\"row\">\n     $1\n</div>" "row" nil nil nil nil nil nil)
                       ("script" "<script>\n\n</script>" "script" nil nil nil nil nil nil)
                       ("scripts" "<script src=\"$1\"></script>" "scripts" nil nil nil nil nil nil)
                       ("section" "<section>$1</section>" "section" nil nil nil nil nil nil)
                       ("span" "<span>$1</span>" "<span>...</span>" nil nil nil nil nil nil)
                       ("span" "<span class=\"$1\">$2</span>" "<span class=\"...\">...</span>" nil nil nil nil nil nil)
                       ("span" "<span id=\"$1\">$2</span>" "<span id=\"...\">...</span>" nil nil nil nil nil nil)
                       ("startupscripts" "<script src=\"//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js\"></script>\n<link href=\"http://bootswatch.com/cerulean/bootstrap.min.css\" rel=\"stylesheet\">\n<script src=\"//netdna.bootstrapcdn.com/bootstrap/3.0.0-rc1/js/bootstrap.min.js\"></script>\n<link href=\"//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css\" rel=\"stylesheet\">\n" "startupscripts" nil nil nil nil nil nil)
                       ("style" "<style type=\"text/css\" media=\"${1:screen}\">\n  $0\n</style>" "<style type=\"text/css\" media=\"...\">...</style>" nil nil nil nil nil nil)
                       ("textarea" "<textarea name=\"$1\" id=\"$2\" rows=\"$3\" cols=\"$4\" tabindex=\"$5\"></textarea>" "<textarea ...></textarea>" nil nil nil nil nil nil)
                       ("title" "<title>$1</title>" "<title>...</title>" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'html-mode
                     '(("h1" "<h1>$1</h1>" "<h1>...</h1>" nil
                        ("header")
                        nil nil nil nil)
                       ("h2" "<h2>$1</h2>" "<h2>...</h2>" nil
                        ("header")
                        nil nil nil nil)
                       ("h3" "<h3>$1</h3>" "<h3>...</h3>" nil
                        ("header")
                        nil nil nil nil)
                       ("h4" "<h4>$1</h4>" "<h4>...</h4>" nil
                        ("header")
                        nil nil nil nil)
                       ("h5" "<h5>$1</h5>" "<h5>...</h5>" nil
                        ("header")
                        nil nil nil nil)
                       ("h6" "<h6>$1</h6>" "<h6>...</h6>" nil
                        ("header")
                        nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'html-mode
                     '(("dd" "<dd>$1</dd>" "<dd> ... </dd>" nil
                        ("list")
                        nil nil nil nil)
                       ("dl" "<dl>\n    $0\n</dl>" "<dl> ... </dl>" nil
                        ("list")
                        nil nil nil nil)
                       ("dl" "<dl id=\"$1\">\n    $0\n</dl>" "<dl> ... </dl>" nil
                        ("list")
                        nil nil nil nil)
                       ("dt" "<dt>$1</dt>" "<dt> ... </dt>" nil
                        ("list")
                        nil nil nil nil)
                       ("li" "<li>$1</li>" "<li>...</li>" nil
                        ("list")
                        nil nil nil nil)
                       ("li" "<li class=\"$1\">$2</li>" "<li class=\"...\">...</li>" nil
                        ("list")
                        nil nil nil nil)
                       ("ol" "<ol>\n  $0\n</ol>" "<ol>...</ol>" nil
                        ("list")
                        nil nil nil nil)
                       ("ol" "<ol class=\"$1\">\n  $0\n</ol>" "<ol class=\"...\">...</ol>" nil
                        ("list")
                        nil nil nil nil)
                       ("ol" "<ol id=\"$1\">\n  $0\n</ol>" "<ol id=\"...\">...</ol>" nil
                        ("list")
                        nil nil nil nil)
                       ("ul" "<ul>\n  $0\n</ul>" "<ul>...</ul>" nil
                        ("list")
                        nil nil nil nil)
                       ("ul" "<ul class=\"$1\">\n  $0\n</ul>" "<ul class=\"...\">...</ul>" nil
                        ("list")
                        nil nil nil nil)
                       ("ul" "<ul id=\"$1\">\n  $0\n</ul>" "<ul id=\"...\">...</ul>" nil
                        ("list")
                        nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'html-mode
                     '(("doctype" "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">" "Doctype HTML 4.01 Strict" nil
                        ("meta")
                        nil nil nil nil)
                       ("doctype" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Frameset//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd\">" "DocType XHTML 1.0 frameset" nil
                        ("meta")
                        nil nil nil nil)
                       ("doctype" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\" \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">" "DocType XHTML 1.1" nil
                        ("meta")
                        nil nil nil nil)
                       ("doctype" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">" "DocType XHTML 1.0 Strict" nil
                        ("meta")
                        nil nil nil nil)
                       ("doctype" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">" "DocType XHTML 1.0 Transitional" nil
                        ("meta")
                        nil nil nil nil)
                       ("meta" "<meta name=\"${1:generator}\" content=\"${2:content}\" />" "<meta name=\"...\" content=\"...\" />" nil
                        ("meta")
                        nil nil nil nil)
                       ("meta" "<meta http-equiv=\"${1:Content-Type}\" content=\"${2:text/html; charset=UTF-8}\" />" "<meta http-equiv=\"...\" content=\"...\" />" nil
                        ("meta")
                        nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'html-mode
                     '(("table" "<table width=\"$1\" cellspacing=\"$2\" cellpadding=\"$3\" border=\"$4\">\n  $0\n</table>" "<table ...>...</table>" nil
                        ("table")
                        nil nil nil nil)
                       ("td" "<td$1>$2</td>" "<td>...</td>" nil
                        ("table")
                        nil nil nil nil)
                       ("th" "<th$1>$2</th>" "<th>...</th>" nil
                        ("table")
                        nil nil nil nil)
                       ("tr" "<tr>\n  $0\n</tr>" "<tr>...</tr>" nil
                        ("table")
                        nil nil nil nil)))


;;; Do not edit! File generated at Sun Sep 28 14:50:49 2014
