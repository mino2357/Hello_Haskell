fib 0 = 0
fib 1 = 1
fib n = fib(n - 1) + fib(n - 2)

main = do
    print $ fib 4
