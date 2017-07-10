module Game.Account.Database.Dummy exposing (dummy)

import Game.Account.Database.Models exposing (..)


dummy : Database
dummy =
    Database
        [ { ip = "188.23.23.42"
          , password = "WhenYouWereHereBefore"
          , nick = "Creep"
          , notes = Just "Weirdo"
          , virusInstalled =
                [ ( "dummyVirus", "GrandpaChair.mlw", 2.1 )
                , ( "dummyThrojan", "GrandmaTshirt.mlw", 2.0 )
                ]
          , activeVirus = Just ( "dummyThrojan", 1498589047000 )
          , type_ = Player
          , remoteConn = Nothing
          }
        ]
        []
        []