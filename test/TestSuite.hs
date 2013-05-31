module Main (main) where

import Test.Hspec (Spec, describe, it)
import Test.HUnit (assertBool)
import Test.Hspec.Runner (hspecWith , defaultConfig, Config(..), configAddFilter)
import qualified BasicFunctions
import qualified Lists
import qualified Currification
import qualified BasicIO
import qualified ParserCombinators

main :: IO ()
main = do
  hspecWith (configAddFilter $ defaultConfig { configFastFail = True }) $ do
    BasicFunctions.koans
    Lists.koans
    Currification.tests
    BasicIO.tests
    ParserCombinators.tests
  return ()
