module Cats.List exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)
import Msgs exposing (Msg)
import Models exposing (Cat)


view : List Cat -> Html Msg
view cats =
    div []
        [ nav
        , list cats
        ]


nav : Html Msg
nav =
    div [ class "clearfix mb2 white bg-black" ]
        [ div [ class "left p2" ] [ text "Cats" ] ]


list : List Cat -> Html Msg
list cats =
    div [ class "p2" ]
        [ table []
            [ thead []
                [ tr []
                    [ th [] [ text "Id" ]
                    , th [] [ text "Gender" ]
                    , th [] [ text "Name" ]
                    , th [] [ text "EMS" ]
                    , th [] [ text "DOB" ]
                    , th [] [ text "RegNo" ]
                    , th [] [ text "Sire" ]
                    , th [] [ text "Dam" ]
                    ]
                ]
            , tbody [] (List.map catRow cats)
            ]
        ]


catRow : Cat -> Html Msg
catRow cat =
    tr []
        [ td [] [ text cat.id ]
        , td [] [ text cat.gender ]
        , td [] [ text cat.name ]
        , td [] [ text cat.ems ]
        , td [] [ text cat.dob ]
        , td [] [ text cat.reg ]
        , td [] [ text cat.sire ]
        , td [] [ text cat.dam ]
        ]