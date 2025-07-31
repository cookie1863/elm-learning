module Example exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)
import Main exposing (Msg(..), Model, initialModel, update, view)
import Html exposing (u)


suite : Test
suite =
    test "two plus two equals four"
        (\_ -> Expect.equal 4 (2 + 2))

suite2 : Test
suite2 = test "that the model is initialized correctly"
    (\_ -> Expect.equal initialModel { counter = 0, allowNegatives = True })

suite3 : Test
suite3 = test "that the model is incremented correctly"
    (\_ -> Expect.equal ( update Increment initialModel ) { counter = 1, allowNegatives = True })

suite4 : Test
suite4 = test "that the model is decremented correctly"
    (\_ -> Expect.equal ( update Decrement initialModel ) { counter = -1, allowNegatives = True })

suite5 : Test
suite5 = test "that the model can't be decremented if the flag is set false"
    (\_ -> Expect.equal ( update Decrement { counter = 0, allowNegatives = False } ) { counter = 0, allowNegatives = False })