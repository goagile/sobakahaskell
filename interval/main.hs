-- intervals

main = do
    
    -- let a = [1..10]

    print "1..10"
    print ([1..10])

    print "1,3..17"
    print ([1,3..17])

    print "take 10 from [1..]"
    print (take 10 [1..])

    print "reverse [10,9..1]"
    print (reverse [10,9..1])

    print "take 3 from reversed [10,9..1]"
    print (take 3 (reverse [10,9..1]))

    print "cycle 1..3: "
    print (take 6 (cycle [1..3]))

    print "cycle ABC"
    print (take 6 (cycle "ABC"))

    print "repeat 5"
    print (take 10 (repeat 5))

    print "replicate 3 5: "
    print (replicate 3 5)
