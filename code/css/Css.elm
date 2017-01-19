import Html exposing (beginnerProgram, div, button, text)
import Html.Events exposing (onClick)
import Html.Attributes exposing (style)

main =
  beginnerProgram { model = model, view = view, update = update }

model = 
  10
 
view model =
  div [style [("backgroundColor", "blue"), ("text-align", "center"), ("width", "10%")]]
    [ button [ onClick Increment ] [ text "+" ]
    , div [] [ text (toString model) ]
    , button [ onClick Decrement ] [ text "-" ]
    ]

type Msg = Increment | Decrement

update msg model =
  case msg of
    Increment ->  model + 1
    Decrement ->  model - 1
