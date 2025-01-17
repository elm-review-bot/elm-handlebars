module VerifyExamples.Handlebars.Syntax.SubExp2 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect

import Handlebars.Syntax exposing (..)
import Result.Extra as Result
import Handlebars.Expression as Expression exposing (Expression(..), SubExp(..))
import Parser







spec2 : Test.Test
spec2 =
    Test.test "#subExp: \n\n    \"some (test a) b\"\n    |> Parser.run subExp\n    --> Ok (Helper \"some\" ( (Helper \"test\" (LookUp (0,[\"a\"]),[]) ), [LookUp (0,[\"b\"])]) )" <|
        \() ->
            Expect.equal
                (
                "some (test a) b"
                |> Parser.run subExp
                )
                (
                Ok (Helper "some" ( (Helper "test" (LookUp (0,["a"]),[]) ), [LookUp (0,["b"])]) )
                )