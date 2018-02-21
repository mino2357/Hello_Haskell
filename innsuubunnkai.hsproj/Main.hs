import qualified Data.Set
import Data.List


a :: [Integer]
a = [2..ceiling (sqrt 25)::Integer]


isPrime :: Integer -> Bool
isPrime n
  | n == 1 = False
  | n > 1  = and [ mod n i /= 0 | i <- [2..n], i*i <= n]
  | otherwise = False


factorize :: Integer -> [Integer]
factorize n = factorize_worker n 2


factorize_worker :: Integer -> Integer -> [Integer]
factorize_worker n factor
  | n == 1 = []
  | mod n factor == 0 = factor:factorize_worker (div n factor) factor
  | otherwise = factorize_worker n (factor+1)


factorList :: [Integer] -> [(Integer, Integer)]
factorList x = factorList_worker x 0

  
factorList_worker :: [Integer] -> Integer -> [(Integer,Integer)]
factorList_worker [] n = []
factorList_worker [x] n = [(x, n + 1)]
factorList_worker (x1:x2:xs) n
  | x1 == x2  = factorList_worker (x2:xs) (n + 1)
  | x1 /= x2  = (x1, n + 1):factorList_worker (x2:xs) 0


euler :: (Double -> Double) -> Double -> Double -> [Double] -> [Double]
euler f t tmax x 
  | t < tmax = x++euler f (t + dt) tmax [x1]
  | otherwise = []
  where 
    dt = 0.01
    x0 = last x
    x1 = x0 + dt*f x0

 
e_list :: Integer -> [Integer]
e_list n = e_sieve [2..n]


e_sieve :: [Integer] -> [Integer]
e_sieve (n:ns)
  | ns == [] = []
  | n^2 > last ns = (n:ns)
  | otherwise = n:e_sieve(e_sieving ns n)


e_sieving :: [Integer] -> Integer -> [Integer]
e_sieving (n:ns) factor
  | ns == [] = 
    if mod n factor == 0
     then []
     else [n]
  | mod n factor == 0 = e_sieving ns factor
  | otherwise = n:e_sieving ns factor
