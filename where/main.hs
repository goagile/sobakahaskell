-- calc 

main = do

    let calc x y = do
        if change > 0
            then change
            else 0
        where change = x - y

    print (calc 100 40)
