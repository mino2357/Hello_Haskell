{-# LANGUAGE TypeOperators #-}
module Main where

import Lib
import Leibniz
import Control.Monad
import Data.Char
import Data.Array.Repa as R

type Vector1d = R.Array R.U (Z:.Int) Double
type Vector2d = R.Array R.U (Z:.Int:.Int) Double

dim :: Int
dim = 10

u :: Vector1d
u = R.fromListUnboxed (Z:.dim) $ take dim [0,1..]

u2 :: Vector2d
u2 = R.fromListUnboxed (Z:.dim:.dim) $ take (dim*dim) [0..]

v :: Vector1d
v = R.fromListUnboxed (Z:.dim) $ take 10 [0,0..]

main = do
  print $ (u +^ v) ! (Z:.4)
  print $ u2 
  --leibniz 10
