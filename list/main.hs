-- lists

import Data.List

main = do

    let first = "Zoho":["Petro", "Dancig", "Joe", "Helga"] ++ ["Alice"]

    let names = sort first

    print "names: "
    print names
    print ""

    print "name #3: "
    print (names !! 2)
    print ""

    print "is Petro in list: "
    print (elem "Petro" names)
    print ""

    print "take 4: "
    print (take 4 names)
    print ""

    print "drop 2: "
    print (drop 2 names)
    print ""

    print "head: "
    print (head names)
    print ""
    
    print "tail: "
    print (tail names)
    print ""
    
    print "init: "
    print (init names)
    print ""
    
    print "last: "
    print (last names)
    print ""

    print "length: "
    print (length names)
    print ""

    print "id null: "
    print (null names)
    print ""

    print "reverse: "
    print (reverse names)
    print ""

    let nums = sort [2, 3, 5, 4, 1]

    print "nums: "
    print nums
    print ""

    print "sum: "
    print (sum nums)
    print ""

    print "product: "
    print (product nums)
    print ""
