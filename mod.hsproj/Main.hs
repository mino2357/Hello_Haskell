import Data.List
import IsPrime
import Zn

p = 131

a = Zn 23 p
b = Zn 57 p

list = [Zn 1 p, Zn 2 p, Zn 3 p, Zn 4 p, Zn 5 p, Zn 6 p, Zn 7 p, Zn 8 p, Zn 9 p, Zn 10 p, Zn 11 p, Zn 12 p]

main = do
  printZn a
  printZn b

  printZn $ a `plus` b
  printZn $ a `minus` b
  printZn $ a `multiply` b
  printZn $ a `devide` b

  mapM_ print $ fmap inverse list
