-- main
main = do
    print (fact 10)

-- fact 
fact :: Integer -> Integer
fact 0 = 1
fact n = n * fact n - 1
