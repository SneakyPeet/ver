import StartApp.Simple exposing (start)
import Html exposing (Html, div, text, strong, ul, li)
import Domain exposing (..)
import Maybe


type alias Model = Domains
model : Model
model
  = domains


main : Signal Html
main =
  start { model = model, view = view, update = update }

type Action = Update

update : Action -> Model -> Model
update action model =
  model


view : Signal.Address Action -> Model -> Html
view address model =
  div [] (List.map viewDomain model)

viewDomain : Domain -> Html
viewDomain domain =
  div [] [ strong [] [text (toString domain.domain)]
         , ul [] (List.map viewTheme domain.themes)
         ]

viewTheme : Theme -> Html
viewTheme theme =
  li [] [ text (toString theme)]
