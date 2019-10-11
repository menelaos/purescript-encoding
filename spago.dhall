{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name =
    "encoding"
, dependencies =
    [ "arraybuffer-types"
    , "console"
    , "effect"
    , "either"
    , "exceptions"
    , "functions"
    , "partial"
    , "prelude"
    , "psci-support"
    , "stringutils"
    , "strongcheck"
    , "unicode"
    , "unsafe-coerce"
    ]
, packages =
    ./packages.dhall
, sources =
    [ "src/**/*.purs", "test/**/*.purs" ]
}
