module VerifyExamples.Handlebars.Syntax.Path5 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect

import Handlebars.Syntax exposing (..)
import Result.Extra as Result
import Handlebars.Expression as Expression exposing (Expression(..), SubExp(..))
import Parser







spec5 : Test.Test
spec5 =
    Test.test "#path: \n\n    \".\"\n    |> Parser.run path\n    --> Ok (0,[])" <|
        \() ->
            Expect.equal
                (
                "."
                |> Parser.run path
                )
                (
                Ok (0,[])
                )