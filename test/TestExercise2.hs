module TestExercise2 where
import qualified Exercise2
import Test.Hspec
import Test.QuickCheck

exercise2 :: Spec
exercise2 = describe "Exercise2" $ do
  describe "elementAt k [1..10]" $ do
    it "should be Just 1"  $ Exercise2.elementAt 1    [1..10] `shouldBe` Just 1
    it "should be Just 4"  $ Exercise2.elementAt 4    [1..10] `shouldBe` Just 4
    it "should be Just 10" $ Exercise2.elementAt 10   [1..10] `shouldBe` Just 10
    it "should be Nothing" $ Exercise2.elementAt (-1) [1..10] `shouldBe` Nothing
    it "should be Nothing" $ Exercise2.elementAt 0    [1..10] `shouldBe` Nothing
    it "should be Nothing" $ Exercise2.elementAt 11   [1..10] `shouldBe` Nothing    
  describe "[1..]" $ do
    it "elementAt k [1..] should be Just k provided k >= 1" $ do
      property $ forAll (suchThat arbitrary (>= 1)) $
        \k -> Exercise2.elementAt k [1..] `shouldBe` Just k     
    it "elementAt (k+1) [1..k] should be Nothing provided k >= 1" $ do
      property $ forAll (suchThat arbitrary (>= 1)) $
        \k -> Exercise2.elementAt (k+1) [1..k] `shouldBe` Nothing
    it "elementAt k [1..] should be Nothing provided k < 1" $ do
      property $ forAll (suchThat arbitrary (< 1)) $
        \k -> Exercise2.elementAt k [1..] `shouldBe` Nothing
