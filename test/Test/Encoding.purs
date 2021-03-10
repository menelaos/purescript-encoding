module Test.Encoding
  ( testEncoding )
where

import Data.Either      ( either )
import Data.TextDecoder ( decodeUtf8 )
import Data.TextEncoder ( encodeUtf8 )
import Effect           ( Effect )
import Effect.Console   ( log )
import Partial.Unsafe   ( unsafeCrashWith )
import Prelude
import Test.Input       ( WellFormedInput (..) )
import Test.QuickCheck  ( Result, (===), quickCheck )


testEncoding :: Effect Unit
testEncoding = do
  log "Check that `decodeUtf8 <<< encodeUtf8 == Right`"
  -- Note that this identity is not strictly true.
  -- This is because unpaired surrogate values and noncharacters are encoded
  -- to the replacement character (U+FFFD) and thus the `encodeUtf8` function
  -- is not injective.
  -- See https://readable-email.org/list/whatwg/topic/stringencoding-allowed-encodings-for-textencoder
  -- For well-formed input strings however, the equality holds.
  let
    encodingIdentityProp :: WellFormedInput -> Result
    encodingIdentityProp (WellFormedInput str) =
      str === either
                (\_ -> unsafeCrashWith "This should never happen!")
                identity
                (decodeUtf8 <<< encodeUtf8 $ str)

  quickCheck encodingIdentityProp
