module Test where

import ElmTest.Assertion (..)
import ElmTest.Test (..)

-- Example Usage
----------------
tests : [Test]
tests = [ (2^3) `equals` 1
        , 3 `equals` 3
        , defaultTest (assert True)
        , test "test head" (assertEqual 1 (head [1..10]))
        ]

tests2 : [Test]
tests2 = [ (2^3) `equals` 8
         , 3 `equals` 3
         , defaultTest (assert True)
         , test "test head" (assertEqual 1 (head [1..10]))
         ]

suite = Suite "suite" tests
suite2 = Suite "suite2" [suite, Suite "suite3" tests2]
