

-- person
main = do

    let p = Person "Joe" "Doe" 32

    let c = Car "BMW" 200

    putStrLn (show p)

    putStrLn (show c)

    putStrLn (name c)
    putStrLn (show (speed c))


data Person = Person String String Int deriving (Show)

data Car = Car 
    { 
        name :: String,
        speed :: Int 
    } 
    deriving (Show)
