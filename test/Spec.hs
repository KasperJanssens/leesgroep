import Test.Hspec
import TestExercise1
import TestExercise2
import TestExercise3
import TestExercise4

main :: IO ()
main = hspec $ do
         exercise1
         exercise2
         exercise3
         exercise4
--  describe "reverseList" $ do  
--    it "should work for some examples" $ do
--      Exercise1.reverseList [1,2,3,4] `shouldBe` [4,3,2,1]
--      Exercise1.reverseList [3,1,5,4] `shouldBe` [4,5,1,3]
--      Exercise1.reverseList "Hello olleH" `shouldBe` "Hello olleH"
