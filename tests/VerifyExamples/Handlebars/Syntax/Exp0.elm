module VerifyExamples.Handlebars.Syntax.Exp0 exposing (..)

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
    Test.test "#exp: \n\n    \"{{#test}}{{#test}}hello world{{/test}}{{/test}}\"\n    |> Parser.run exp\n    --> Ok (For (0,[\"test\"]) [For (0,[\"test\"]) [Text \"hello world\"]])" <|
        \() ->
            Expect.equal
                (
                "{{#test}}{{#test}}hello world{{/test}}{{/test}}"
                |> Parser.run exp
                )
                (
                Ok (For (0,["test"]) [For (0,["test"]) [Text "hello world"]])
                )