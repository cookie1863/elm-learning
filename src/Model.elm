module Model exposing (..)

type alias Model =
    { counter : Int
    , allowNegatives : Bool
    }


initialModel : Model
initialModel =
    { counter = 0, allowNegatives = True }

