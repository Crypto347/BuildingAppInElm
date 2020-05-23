module Main exposing (..)

import Browser exposing (Document, UrlRequest)
import Browser.Navigation exposing (Key)
import Html exposing (Html)
import Url exposing (Url)

-- MODEL

type alias Flags = 
    {}

type alias Model = 
    { name: String }

type Msg 
    = NoOp

init : Flags -> Url -> Key -> (Model, Cmd Msg)
init flags url key = 
    let 
        _=
           Debug.log "url" url
    in
    ( Model "Jack", Cmd.none )

-- VIEW

view : Model -> Document Msg
view model = 
    { title = "Distinctly Average"
    , body = 
        [ Html.p [] [Html.text "hello world"]
        ]
    }

-- UPDATE

onUrlRequest : UrlRequest -> Msg
onUrlRequest urlRequest = 
    NoOp

onUrlChange : Url -> Msg
onUrlChange url = 
    NoOp

update : Msg -> Model -> (Model, Cmd Msg)
update msg model = 
    case msg of 
        NoOp -> 
            ( model, Cmd.none )


-- MAIN

main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        , onUrlRequest = onUrlRequest
        , onUrlChange = onUrlChange
        }      

