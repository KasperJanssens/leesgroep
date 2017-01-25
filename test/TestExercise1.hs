module TestExercise1 (exercise1) where

import Test.Hspec
import qualified Exercise1

exercise1:: Spec
exercise1 =
  describe "Exercise1" $ do  
    it "should work for some examples" $ do
      Exercise1.reverseList [1,2,3,4] `shouldBe` [4,3,2,1]
      Exercise1.reverseList [3,1,5,4] `shouldBe` [4,5,1,3]
      Exercise1.reverseList "Hello olleH" `shouldBe` "Hello olleH"
