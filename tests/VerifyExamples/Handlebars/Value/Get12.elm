module VerifyExamples.Handlebars.Value.Get12 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect

import Handlebars.Value exposing (..)
import Array
import Dict



isValid : Value
isValid =
    BooleanValue True
array : Value
array =
    [ jack, gill ]
    |> Array.fromList
    |> ArrayValue
gill : Value
gill = StringValue "Gill"
jack : Value
jack = StringValue "Jack"
object : Value
object = Dict.fromList [ ( "name", StringValue "Jack" ) ] |> ObjectValue



spec12 : Test.Test
spec12 =
    Test.test "#get: \n\n    array\n        |> get [\"1\"]\n    --> Just gill" <|
        \() ->
            Expect.equal
                (
                array
                    |> get ["1"]
                )
                (
                Just gill
                )