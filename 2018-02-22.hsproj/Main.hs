myList :: [Integer]
myList = [1..10]


takeHead :: [Integer] -> Integer
takeHead (x:_) = x


takeTail :: [Integer] -> [Integer]
takeTail (n:ns) = ns


takeInit :: [Integer] -> [Integer]
takeInit [x] = []
takeInit (x:xs) = x:takeInit xs


takeLast :: [Integer] -> Integer
takeLast [x] = x
takeLast (_:xs) = takeLast xs


listLength :: [Integer] -> Integer
listLength [] = 0
listLength (_:xs) = 1 + listLength xs


takeN :: Integer -> [Integer] -> [Integer]
takeN n (x:xs)
  | n <= 0 = []
takeN _ []     = []
takeN n (x:xs) = x:takeN (n-1) xs


dropN :: Integer -> [Integer] -> [Integer]
dropN n xs
  | n <= 0 = xs
dropN n (_:xs) = dropN (n-1) xs


qSort :: [Integer] -> [Integer]
qSort [] = []
qSort (x:xs) = (qSort [ y | y<-xs, y<x]) 
                ++ [x]
                ++ (qSort [ y | y<-xs, y>=x])


--erath :: Double -> [Double]
--erath n = [n]