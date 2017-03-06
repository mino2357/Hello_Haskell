first (x:xs) = x
second (_:x:_) = x

main = do
    print $ ['a'..'x']
    print $ first ['a'..'x']
    print $ second ['a'..'x']
    print $ length ['a'..'x']
    print $ sum [1..100]
    print $ product [1..100]
    print $ take 4 ['a'..'x']
    print $ drop 4 ['a'..'x']
    print $ reverse ['a'..'x']
