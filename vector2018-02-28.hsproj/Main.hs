import Prime
import PrimeList


primeList' :: Int -> [Integer]
primeList' n = take n ( map PrimeList.toPrime [P2 ..])


data Vector3d a = Vector3d a a a
  deriving (Show)


data Shape = Rect Double Double

area :: Shape -> Double
area (Rect x y) = x * y