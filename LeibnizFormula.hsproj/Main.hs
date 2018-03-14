doubleToDigit :: Floating a => a -> [Int]
doubleToDigit x = drop 2 $ show x