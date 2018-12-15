-- sort

import Data.List

main = do

    let peoples = do {[
        ("Dmitry", "Ivanov"),
        ("Boris", "Sidorov"),
        ("Anton", "Petrov")
    ]}

    let name a b = do 
        if fa > fb 
            then GT
            else if fb > fa
                then LT
                else if la > lb
                    then GT
                    else if lb > la
                        then LT
                        else EQ
        where 
            fa = fst a
            fb = fst b
            la = snd a
            lb = snd b
    
    print (sortBy name peoples)
