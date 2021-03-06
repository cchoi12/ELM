module Xwing exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


type alias Ship =
    { name : String
    , model : String
    , cost : Int
    }


ships =
    [ { name = "X-Wing", cost = 14999 }
    , { name = "Millennium Falcon", cost = 10000 }
    , { name = "Death Star", cost = 100000000 }
    ]


renderShip ship =
    li []
        [ text ship.name
        , text ", "
        , b [ style [ ( "font-size", "20px" ) ] ]
            [ text <| toString ship.cost ]
        ]


renderShips ships =
    div
        [ style
            [ ( "font-family", "-apple-system" )
            , ( "padding", "1em" )
            ]
        ]
        [ h1 [] [ text "Ships" ]
        , ul [] (List.map renderShip ships)
        ]


main =
    renderShips ships
