-- pattern match

main = do
    print (match 1)
    print (match 2)
    print (match 3)
    print (match 4)
    print (match 5)
    print (match 6)

-- match function
match :: Int -> String
match 1 = "One!"
match 2 = "Two!"
match 3 = "Three!"
match 4 = "Four!"
match 5 = "Five!"
match x = "... Sorry, no match."
