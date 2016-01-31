import StartApp.Simple exposing (start)
import Html exposing (Html, div, span, text, strong, ul, li)
import Domain exposing (..)
import Maybe


type alias Model = List (Theme, Domain)
model : Model
model
  = themeDomainMap


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

viewDomain : (Theme, Domain) -> Html
viewDomain mapping =
  div [] [ strong [] [text (toString (fst mapping))]
         , text (toString (snd mapping))
         ]

viewTheme : Theme -> Html
viewTheme theme =
  li [] [ text (toString theme)]
