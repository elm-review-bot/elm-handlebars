module VerifyExamples.Handlebars.Path.RelativeToString7 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect

import Handlebars.Path exposing (..)







spec7 : Test.Test
spec7 =
    Test.test "#relativeToString: \n\n    (0,[])\n        |> relativeToString\n    --> \".\"" <|
        \() ->
            Expect.equal
                (
                (0,[])
                    |> relativeToString
                )
                (
                "."
                )