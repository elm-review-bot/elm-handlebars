module VerifyExamples.Handlebars.Helper.If_4 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect

import Handlebars.Helper exposing (..)
import Json.Decode as D
import Handlebars
import Result.Extra as Result
import Handlebars.Expression as Expression exposing (Expression(..), SubExp(..))
import Parser



compile : String -> String -> Maybe String
compile template value =
    case value |> D.decodeString D.value of
        Ok v ->
            case
                v
                |> Handlebars.compile Handlebars.defaultConfig
                    template
            of
            Ok result -> Just result
            Err _ -> Nothing
        Err _ -> Nothing



spec4 : Test.Test
spec4 =
    Test.test "#if_: \n\n    \"{ \\\"name\\\":\\\"\\\" }\"\n        |> compile \"{{#if name}}Hello There{{/if}}\"\n    --> Just \"\"" <|
        \() ->
            Expect.equal
                (
                "{ \"name\":\"\" }"
                    |> compile "{{#if name}}Hello There{{/if}}"
                )
                (
                Just ""
                )