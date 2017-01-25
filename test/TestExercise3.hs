module TestExercise3 where

import Exercise3
import Test.Hspec
import Test.QuickCheck

exercise3:: Spec
exercise3= do
  describe "Execise3: _if" $ do
    it "should support True" $ do
      property $ \x y ->
        _if True x y == (x :: Int)
    it "should support False" $ do
      property $ \x y ->
        _if False x y == (y :: Int)
    it "should support False (other type)" $ do
      property $ \x y ->
        _if False x y == (y :: Char)
