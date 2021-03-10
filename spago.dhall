{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name =
    "encoding"
, license =
    "Apache-2.0"
, repository =
    "git://github.com/menelaos/purescript-encoding.git"
, dependencies =
    [ "arraybuffer-types"
    , "arrays"
    , "console"
    , "effect"
    , "either"
    , "exceptions"
    , "functions"
    , "partial"
    , "prelude"
    , "psci-support"
    , "quickcheck"
    , "strings"
    , "unicode"
    ]
, packages =
    ./packages.dhall
, sources =
    [ "src/**/*.purs", "test/**/*.purs" ]
}
