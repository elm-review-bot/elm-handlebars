module VerifyExamples.Handlebars.Expression.EvalExp3 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect

import Handlebars.Expression exposing (..)
import Array
import Handlebars
import Handlebars.Value exposing (Value(..))
import Dict



value : Value
value =
    [ ( "name", jack )
    , ( "key", StringValue "name" )
    , ( "valid", BooleanValue True)
    , ( "people",
        [ StringValue "jack" , StringValue "gill" ]
        |> Array.fromList
        |> ArrayValue
    )
    ]
        |> Dict.fromList
        |> ObjectValue
jack : Value
jack =
    StringValue "jack"



spec3 : Test.Test
spec3 =
    Test.test "#evalExp: \n\n    evalExp Handlebars.defaultConfig\n        ( Helper \"equals\"\n            ( LookUp (0,[ \"name\"])\n            , [ LookUp (0,[ \"key\"]) ]\n            )\n            |> Variable\n        )\n        value\n        |> (\\err ->\n            case err of\n                Err (StringExpected _) ->\n                    True\n                _ ->\n                    False\n            )\n    --> True" <|
        \() ->
            Expect.equal
                (
                evalExp Handlebars.defaultConfig
                    ( Helper "equals"
                        ( LookUp (0,[ "name"])
                        , [ LookUp (0,[ "key"]) ]
                        )
                        |> Variable
                    )
                    value
                    |> (\err ->
                        case err of
                            Err (StringExpected _) ->
                                True
                            _ ->
                                False
                        )
                )
                (
                True
                )