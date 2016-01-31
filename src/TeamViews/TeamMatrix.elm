module TeamMatrix (Model, init, Action, update, view) where


import Html exposing (Html, div, button, text)
import Html.Events exposing (onClick)


type alias Model = Int


type Action = Increment | Decrement


init : Int -> Model
init inputValue =
  inputValue

update : Action -> Model -> Model
update action model =
  case action of
    Increment -> model + 1
    Decrement -> model - 1

view : Signal.Address Action -> Model -> Html
view address model =
  div []
    [ button [ onClick address Decrement ] [ text "-"]
    , div [] [ text (toString model) ]
    , button [ onClick address Increment ] [ text "+" ]
    ]
