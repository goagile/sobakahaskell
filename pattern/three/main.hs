-- three

main = do

    print "first: "
    print (first (1, 2, 3))
    print ""

    print "second: "
    print (second (1, 2, 3))
    print ""

    print "third: "
    print (third (1, 2, 3))
    print ""

first :: (Double, Double, Double) -> Double
first (x, _, _) = x

second :: (Double, Double, Double) -> Double
second (_, x, _) = x

third :: (Double, Double, Double) -> Double
third (_, _, x) = x
