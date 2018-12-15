-- new hello world programm

main = do

    let sumSqOrSqSum x y = do
        (\ sumSq sqSum -> 
            if sumSq > sqSum
                then sumSq
                else sqSum) (x^2+y^2) (x+y)^2
 
    print (sumSqOrSqSum 1 1)
