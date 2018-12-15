-- 

main = do

    print (cadd (1.0, 2.0) (3.0, 4.0))

cadd :: 
    (Double, Double) -> 
    (Double, Double) -> 
        (Double, Double)

cadd (x1, x2) (y1, y2) = 
    (x1 + y1, x2 + y2)
