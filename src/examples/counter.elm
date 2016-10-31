import Html exposing (Html, button, div, text)
import Html.Attributes exposing (class, id, title)
import Html.App as App
import Html.Events exposing (onClick)

main =
  App.beginnerProgram {
    model = model,
    view = view,
    update = update
  }

-- Model

type alias Model = Int

model : Model
model =
  0

-- Update

type Msg = Increment | Decrement | Reset

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

    Reset -> 0

-- View

view : Model -> Html Msg
view model =
  div []
    [ button [
      onClick Decrement,
      class "btn",
      title "Decrement" ] [ text "-" ]
    , div [] [ text (toString model) ]
    , button [ onClick Increment ] [ text "+"]
    , button [ onClick Reset ] [ text "Reset"]
    ]
