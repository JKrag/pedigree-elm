module Models exposing (..)


type alias Model =
    { cats : List Cat
    }

initialModel : Model
initialModel =
    { cats = [ Cat "1" "M" "DK*Test Cat" "XSH os 11" "01-01-1980" "FD RX 987654" "2" "3"]
    }

type alias CatId =
    String

type alias Cat =
    { id : CatId
    , gender : String
    , name : String
    , ems : String
    , dob : String
    , reg : String
    , sire : CatId
    , dam :  CatId
    }    
