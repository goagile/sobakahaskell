-- clojure

main = do
    
    -- apply clojure
    let app f = (\x -> f x)
    print ((app (\x -> x^2)) 2)
    print ""

    -- add partial
    let add x y = x + y
    let two = add 2
    print (two 3)
    print ""

    -- if even
    let ifev f x = do {
        if even x
            then f x
            else x
    }

    let sq = ifev (\x -> x^2)
    print (sq 4)
    print ""
