module VerifyExamples.Handlebars.Syntax.Exp1 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect

import Handlebars.Syntax exposing (..)
import Result.Extra as Result
import Handlebars.Expression as Expression exposing (Expression(..), SubExp(..))
import Parser







spec1 : Test.Test
spec1 =
    Test.test "#exp: \n\n    \"{{#test}}hello world\"\n    |> Parser.run exp\n    |> Result.isOk\n    --> False" <|
        \() ->
            Expect.equal
                (
                "{{#test}}hello world"
                |> Parser.run exp
                |> Result.isOk
                )
                (
                False
                )