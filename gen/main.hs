-- gen lists

main = do

    print "x in [1..10]"
    print [x | x <- [1..10]]

    print "only evens"
    print [x | x <- [1..10], even x]

    print "only odds"
    print [x | x <- [1..10], odd x]

    print "7 ones"
    print [1 | _ <- [1..7]]

    print "ABC product"
    print ([
            [x] ++ [y]
            | 
            x <- "ABC", 
            y <- "123"])

    print "Odd Even: "
    print ([
        if odd x 
            then "O" 
            else "E" 
        | 
        x <- [1..10]])
