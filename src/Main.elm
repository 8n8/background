module Main exposing (main)

import Browser
import Html
import Time

main =
    Browser.element
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }


init : () -> (Int, Cmd Int)
init _ =
    (0, Cmd.none)


view model =
    Html.text (String.fromInt model)


update _ model =
    (model + 1, Cmd.none)


subscriptions _ =
    Time.every 1000 Time.posixToMillis
    
