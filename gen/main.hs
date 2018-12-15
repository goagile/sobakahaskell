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

    print "matrix"
    print [ replicate 3 x | x <- [1..3]]

    let nums = [1..10]

    print "matrix 2"
    print [ take 3 (drop x nums) | x <- [0..2] ]

    print "zip: "
    print (zip [1..10] "ABC")

    print "10 pair"
    print (take 10 [
        (a, b) 
        | 
        a <- [1..10], 
        b <- [1..10]])
