-- case

main = do

    print (number 1)
    print (number 2)
    print (number 3)
    print (number 4)


number x = 
    case x of
        1 -> one 
        2 -> two
        3 -> thr
        _ -> nil
    where 
        one = "One!"
        two = "Two!"
        thr = "Three!"
        nil = "...not found..."
