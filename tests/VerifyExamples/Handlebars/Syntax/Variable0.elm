module VerifyExamples.Handlebars.Syntax.Variable0 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect

import Handlebars.Syntax exposing (..)
import Result.Extra as Result
import Handlebars.Expression as Expression exposing (Expression(..), SubExp(..))
import Parser







spec0 : Test.Test
spec0 =
    Test.test "#variable: \n\n    \"\"\n        |> Parser.run variable\n        |> Result.isOk\n    --> False" <|
        \() ->
            Expect.equal
                (
                ""
                    |> Parser.run variable
                    |> Result.isOk
                )
                (
                False
                )