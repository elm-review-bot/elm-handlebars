module VerifyExamples.Handlebars.Syntax.Exp0 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect

import Handlebars.Syntax exposing (..)
import Handlebars.Expression as Expression exposing (Expression(..), SubExp(..))
import Parser







spec0 : Test.Test
spec0 =
    Test.test "#exp: \n\n    \"{{test a b c}}\"\n    |> Parser.run exp\n    --> Ok (Variable (Helper \"test\" (LookUp [Just \"a\"],[LookUp [Just \"b\"],LookUp [Just \"c\"]])))" <|
        \() ->
            Expect.equal
                (
                "{{test a b c}}"
                |> Parser.run exp
                )
                (
                Ok (Variable (Helper "test" (LookUp [Just "a"],[LookUp [Just "b"],LookUp [Just "c"]])))
                )