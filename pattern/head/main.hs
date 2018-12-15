-- 

main = do

    print "head'"
    print (head' [1, 2, 3])
    print ""

    print "last'"
    print (last' [1, 2, 3])
    print ""

head' :: [a] -> a
head' (x:_) = x

last' :: [a] -> a
last' (_:x) = head' (reverse x)
