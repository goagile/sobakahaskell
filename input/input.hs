-- input
main::IO()

main = do
    great    
    name <- getLine
    hello name

great = do
    putStrLn "input name"

hello name = do
    putStrLn ("Hello, " ++ name)
