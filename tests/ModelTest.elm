module ModelTest exposing (..)
import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)
import Update exposing (Msg(..), update)
import Model exposing (initialModel)


suite : Test
suite =
    test "two plus two equals four"
        (\_ -> Expect.equal 4 (2 + 2))

suite2 : Test
suite2 = test "that the model is initialized correctly"
    (\_ -> Expect.equal initialModel { counter = 0, allowNegatives = True })