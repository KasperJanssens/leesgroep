module TestExercise6 where

import Test.Hspec

import Exercise6

exercise6 :: Spec
exercise6 =
  describe "Description examples" $ do
    it "1112223339" $ validISBN10 "1112223339" `shouldBe` True
    it "1234554321" $ validISBN10 "1234554321" `shouldBe` True
    it "1234512345" $ validISBN10 "1234512345" `shouldBe` False
    it "123451234X" $ validISBN10 "1234512345" `shouldBe` False
    it "111131111" $ validISBN10 "111131111" `shouldBe` False
