-- types

main = do

    print "f: "
    print (f 2)
    print ""

    print "fact 50"
    print (fact 50)
    print ""

    print "circ 2"
    print (circ 2)
    print ""

    print "show 1"
    print (show 1)
    print ""

    print "show 1.2"
    print (show 1.2)
    print ""

    print "show False"
    print (show False)
    print ""

    print "show [1, 2, 3]"
    print (show [1, 2, 3])
    print ""

    print "read 4 as Int"
    print (read "4" :: Int)
    print ""

    print "read 4.2 as Float"
    print (read "4.2" :: Float)
    print ""

    print "read 4.1 as Double"
    print (read "4.1" :: Double)
    print ""

    print "read True as Bool"
    print (read "True" :: Bool)
    print ""

    print "read as String"
    print (read "['4']" :: [Char])
    print ""


-- define func
f :: Int -> Int
f x = x

-- fact
fact :: Integer -> Integer
fact n = product [1..n]

-- circ
circ :: Float -> Float
circ r = 2 * pi * r
