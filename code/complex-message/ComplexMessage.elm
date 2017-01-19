import Html exposing (beginnerProgram, div, button, text)
import Html.Events exposing (onClick)
import Html.Attributes exposing (style)

main =
  beginnerProgram { model = model, view = view, update = update }

diff = 10
model =  diff
 
view model =
  div [style [("backgroundColor", "blue"), ("text-align", "center"), ("width", "10%")]]
    [ button [ onClick (Increment diff)] [ text "+" ]
    , div [] [ text (toString model) ]
    , button [ onClick (Decrement diff) ] [ text "-" ]
    ]

type Msg = Increment Int | Decrement Int

update msg model =
  case msg of
    Increment value ->  model + value
    Decrement value ->  model - value
