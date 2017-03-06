addsub x y = (x + y, x - y)

a = addsub 2 3
(a1, a2) = a

main = do
    print a
    print a1
    print a2
    print $ fst a
    print $ snd a
