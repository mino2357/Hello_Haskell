module Main where

import Lib
import Leibniz
import Control.Monad
import Data.Char
import Data.Array.Repa


--type Scaler t = R.Array t R.Dim2 Double


main = do
  leibniz 10
