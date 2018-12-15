-- lists

import Data.List

main = do

    let first = "Zoho":["Petro", "Dancig", "Joe", "Helga"] ++ ["Alice"]

    let names = sort first

    print "names: "
    print names

    print "name #3: "
    print (names !! 2)

    print "take 4: "
    print (take 4 names)

    print "drop 2: "
    print (drop 2 names)

    print "head: "
    print (head names)
    
    print "tail: "
    print (tail names)
    
    print "init: "
    print (init names)
    
    print "last: "
    print (last names)

    print "length: "
    print (length names)

    print "id null: "
    print (null names)

    print "reverse: "
    print (reverse names)

    let nums = sort [2, 3, 5, 4, 1]

    print "nums: "
    print nums

    print "sum: "
    print (sum nums)

    print "product: "
    print (product nums)
