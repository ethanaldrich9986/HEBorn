module Apps.TaskManager.Menu.Update exposing (update)

import ContextMenu exposing (ContextMenu)
import Game.Models as Game
import Apps.TaskManager.Menu.Models exposing (Model)
import Apps.TaskManager.Menu.Messages exposing (Msg(..))
import Core.Dispatch as Dispatch exposing (Dispatch)


update : Msg -> Model -> Game.Model -> ( Model, Cmd Msg, Dispatch )
update msg model game =
    case msg of
        MenuMsg msg ->
            let
                ( menu_, cmd ) =
                    ContextMenu.update msg model.menu
            in
                ( { model | menu = menu_ }, Cmd.map MenuMsg cmd, Dispatch.none )

        MenuClick action ->
            ( model, Cmd.none, Dispatch.none )