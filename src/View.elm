module View exposing (..)

import Html exposing (Html, button, div, input, text)
import Html.Attributes exposing (checked, style, type_)
import Html.Events exposing (onCheck, onClick)

import Model exposing (Model)
import UpdateTest exposing (Msg(..))


containerStyles : List (Html.Attribute msg)
containerStyles =
    [ style "display" "flex"
    , style "flex-direction" "column"
    , style "align-items" "center"
    , style "justify-content" "center"
    , style "height" "100vh"
    , style "font-family" "sans-serif"
    ]


rowStyles : List (Html.Attribute msg)
rowStyles =
    [ style "display" "flex"
    , style "align-items" "center"
    , style "gap" "16px"
    ]


buttonStyles : List (Html.Attribute msg)
buttonStyles =
    [ style "font-size" "2rem"
    , style "width" "48px"
    , style "height" "48px"
    ]


counterStyles : List (Html.Attribute msg)
counterStyles =
    [ style "font-size" "2rem"
    , style "width" "48px"
    , style "text-align" "center"
    ]


resetButtonStyles : List (Html.Attribute msg)
resetButtonStyles =
    [ style "margin-top" "24px"
    , style "padding" "8px 24px"
    , style "font-size" "1rem"
    ]

view : Model -> Html Msg
view model =
    div containerStyles
        [ div rowStyles
            [ button (onClick Decrement :: buttonStyles) [ text "-" ]
            , div counterStyles [ text (String.fromInt model.counter) ]
            , button (onClick Increment :: buttonStyles) [ text "+" ]
            ]
        , input [ type_ "checkbox", checked model.allowNegatives, onCheck ChangeAllowNegatives ] []
        , button (onClick Reset :: resetButtonStyles) [ text "RESET" ]
        ]
