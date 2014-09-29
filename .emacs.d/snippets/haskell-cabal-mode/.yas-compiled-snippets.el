;;; Compiled snippets and support files for `haskell-cabal-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'haskell-cabal-mode
                     '(("bench" "Benchmark ${1:Benchmark-Name}\n    type:       exitcode-stdio-1.0\n    main-is:    ${2:File}.hs\n    build-depends: base\n                 , time\n                 , criterion\n    default-language:    Haskell2010\n    ghc-options:  -Wall\n" "bench" nil nil nil nil nil nil)
                       ("new" "name:                $1\nversion:             0.1.0.0\nsynopsis:            $2\ndescription:         $2\n-- license:             \nlicense-file:        LICENSE\nauthor:              David Johnson\nmaintainer:          djohnson.m@gmail.com\n-- copyright:           \n-- category:            \nbuild-type:          Simple\n-- extra-source-files:  \ncabal-version:       >=1.10\n\nexecutable proj\n  main-is:             $3.hs\n  build-depends:       base >=4.7 && <4.8\n                     , $4\n  default-language:    Haskell2010\n" "new" nil nil nil nil nil nil)
                       ("repo" "source-repository head\n  type:     git\n  location: $1" "repo" nil nil nil nil nil nil)
                       ("test" "Test-Suite ${1:TestName}\n    type:       exitcode-stdio-1.0\n    main-is:    ${2:FileName}.hs\n    build-depends: base\n                 , QuickCheck\n                 , tasty\n                 , tasty-hunit\n                 , tasty-quickcheck\n    default-language:    Haskell2010\n    ghc-options:  -Wall\n" "test" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Sun Sep 28 14:50:48 2014
