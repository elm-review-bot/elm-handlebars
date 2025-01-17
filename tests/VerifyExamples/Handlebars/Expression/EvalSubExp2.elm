module VerifyExamples.Handlebars.Expression.EvalSubExp2 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect

import Handlebars.Expression exposing (..)
import Handlebars.Value exposing (Value(..))
import Handlebars exposing (defaultConfig)
import Dict



value : Value
value =
    [ ( "name", jack )
    , ( "key", StringValue "name" )
    ]
        |> Dict.fromList
        |> ObjectValue
jack : Value
jack =
    StringValue "jack"



spec2 : Test.Test
spec2 =
    Test.test "#evalSubExp: \n\n    Helper \"lookup\" ( LookUp (0,[]), [LookUp (0,[ \"key\" ])] )\n        |> evalSubExp defaultConfig value\n    --> Ok jack" <|
        \() ->
            Expect.equal
                (
                Helper "lookup" ( LookUp (0,[]), [LookUp (0,[ "key" ])] )
                    |> evalSubExp defaultConfig value
                )
                (
                Ok jack
                )