

-- pseudo type
main = do
    let n = ("John", "Doe")
    putStrLn (showname n)

type FirstName = String
type LastName = String

showname :: (FirstName, LastName) -> String
showname (f, l) = f ++ " " ++ l
