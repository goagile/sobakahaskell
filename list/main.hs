-- lists

import Data.List

main = do

    let first = "Zoho":["Petro", "Dancig", "Joe", "Helga"] ++ ["Alice"]

    let names = sort first

    print "names: "
    print names

    print "head: "
    print (head names)
    
    print "tail: "
    print (tail names)
    
    print "init: "
    print (init names)
    
    print "last: "
    print (last names)
