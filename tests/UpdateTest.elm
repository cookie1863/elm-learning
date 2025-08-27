module UpdateTest exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)
import Update exposing (Msg(..), update)
import Model exposing (Model)


testInitialModel : Model
testInitialModel = { counter = 0, allowNegatives = True }

suite3 : Test
suite3 = test "that the model is incremented correctly"
    (\_ -> Expect.equal ( update Increment testInitialModel ) { counter = 1, allowNegatives = True })

suite4 : Test
suite4 = test "that the model is decremented correctly"
    (\_ -> Expect.equal ( update Decrement testInitialModel ) { counter = -1, allowNegatives = True })

suite5 : Test
suite5 = test "that the model can't be decremented if the flag is set false"
    (\_ -> Expect.equal ( update Decrement { counter = 0, allowNegatives = False } ) { counter = 0, allowNegatives = False })