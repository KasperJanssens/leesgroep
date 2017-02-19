module TestExercise11 where

import Test.Hspec

import Exercise11

-- Create a bitmap showing a 2d line going through the (1,1) point. Make it a red line one pixel wide on a white background.
-- Use the JuicyPixel library https://hackage.haskell.org/package/JuicyPixels-3.2.8/docs/Codec-Picture.html for that.

exercise11 :: Spec
exercise11 = do
  runIO $ imageCreator "/home/developer/projects/leesgroep/Koekoek.bmp"
