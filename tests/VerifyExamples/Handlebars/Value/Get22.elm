module VerifyExamples.Handlebars.Value.Get22 exposing (..)

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



spec22 : Test.Test
spec22 =
    Test.test "#get: \n\n    object\n        |> get [ \"name\" ]\n    --> Just (StringValue \"Jack\")" <|
        \() ->
            Expect.equal
                (
                object
                    |> get [ "name" ]
                )
                (
                Just (StringValue "Jack")
                )