pita :: [[Int]]
pita = [[a,b,c] | c<-[1::Int ..], a<-[1::Int ..c], b<-[1::Int ..c], a<b, a^2 + b^2 == c^2]

third :: [x] -> [x]
third [] = []
third [_,_,z] = [z]

concat' :: [[x]] -> [x]
concat' [] = []
concat' (xs:xss) = xs ++ concat' xss

myList = concat' (map third pita)

main = do
    mapM_ print $ take 1000 myList
