module App exposing (..)

import Html exposing (Html, div, text, program)
import Mouse
import Keyboard


-- MODEL

type alias Model =
    {counter: Int, value: Int}


init : ( Model, Cmd Msg )
init =
    ( Model 0 0, Cmd.none )



-- MESSAGES

type Msg
    = MouseMsg Mouse.Position
    | KeyMsg Keyboard.KeyCode


-- VIEW

view : Model -> Html Msg
view model =
    div []
        [   
            div [] [ text (toString model.counter) ],
            div [] [ text (toString model.value) ]
        ]


-- UPDATE

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        MouseMsg position ->
            ( { model | 
                counter = (model.counter + 1),
                value = position.x}, Cmd.none )
        KeyMsg code ->
            ( {model | 
                counter = (model.counter + 2),
                value = code}, Cmd.none )


-- SUBSCRIPTIONS

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.batch
        [ Mouse.clicks MouseMsg
        , Keyboard.downs KeyMsg
        ]





-- MAIN


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }