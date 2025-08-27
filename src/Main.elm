module Main exposing (main)

import Browser
import View exposing (view )
import Model exposing (Model, initialModel)
import Update exposing (Msg(..), update)



main : Program () Model Msg
main =
    Browser.sandbox { init = initialModel, update = update, view = view }
