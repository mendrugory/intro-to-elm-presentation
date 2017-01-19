import Html exposing (beginnerProgram, div, button, text)
import Html.Events exposing (onClick)

main =
  beginnerProgram { model = model, view = view, update = update }

model = 
  10

view model =
  div []
   [ button [ onClick Increment ] [ text "+" ]
    , div [] [ text (toString model) ]
    , button [ onClick Decrement ] [ text "-" ]
    ]

type Msg = Increment | Decrement

update msg model =
  case msg of
    Increment ->  model + 1
    Decrement ->  model - 1
