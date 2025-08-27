module Update exposing (..)

import Model exposing (Model, initialModel)

type Msg
    = Increment
    | Decrement
    | Reset
    | ChangeAllowNegatives Bool


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            -- { counter = model.counter + 1, allowNegatives = model.allowNegatives }
            { model | counter = model.counter + 1 }

        Decrement ->
            if not model.allowNegatives && model.counter == initialModel.counter then
                { model | counter = initialModel.counter }
            
            else
                { model | counter = model.counter - 1 }

        Reset ->
            { model | counter = initialModel.counter }

        ChangeAllowNegatives newValue ->
            { model | allowNegatives = newValue }
