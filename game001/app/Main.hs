module Main where

import Lib
import Leibniz
import Control.Monad
import Data.Char
import Data.Array.Repa as R

type Vector1d = R.Array R.U R.DIM1 Double

u :: Vector1d
u = R.fromListUnboxed (ix1 10) [0..9]

v :: Vector1d
v = R.fromListUnboxed (ix1 10) $ take 10 [0,0..]

main = do
  print $ (u +^ v) ! (Z:.4)
  --leibniz 10
