--import Prime
import PrimeList
import Prelude hiding ((+),(*),negate)

primeList' :: Int -> [Integer]
primeList' n = take n ( map PrimeList.toPrime [P2 ..])

--------------------------------------------------------

--data Vec2 a = Vec2 a a
--  deriving (Eq) 

class Vector a where
  (+) :: a -> a -> a
  (*) :: a -> a -> Double
  negate :: a -> a
  (-) :: a -> a -> a
  abs :: a -> Double


--instance Vec2 where
--  a + b = a + b
  --[a,b] * [c, d] = a*c + b*d
  --negate [a,b]   = [-a, -b]
  --[a,b] - [c, d] = [a, b] + negate [c, d]
  --abs [a,b] = sqrt(a*a + b*b)  
  


data SubPrimes = SP Int | SP2 Int Int

data Shape = Rect Double Double

area :: Shape -> Double
area (Rect x y) = x * y

data Maybe' a = Nothing | Just a

data Tree a = Tip | Node a (Tree a) (Tree a)

data Person = Person { name :: String, age :: Int, address :: String }