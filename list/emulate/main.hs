

-- emulate list funcs
main = do

    putStrLn "len:"
    putStrLn ("len [] = " ++ (show $ len []))
    putStrLn ("len [1, 2, 3] = " ++ (show $ len [1, 2, 3]))
    putStrLn ""

    putStrLn "elm:"
    putStrLn ("elm 1 [] = " ++ (show $ elm 1 []))
    putStrLn ("elm 4 [1, 2, 3] = " ++ (show $ elm 4 [1, 2, 3]))
    putStrLn ("elm 2 [1, 2, 3] = " ++ (show $ elm 2 [1, 2, 3]))
    putStrLn ""

    putStrLn "filt:"
    putStrLn ("filt >2 [] = " ++ (show $ filt (\x -> x > 2) []))
    putStrLn ("filt >2 [1, 2, 3] = " ++ (show $ filt (\x -> x > 2) [1, 2, 3]))
    putStrLn ""

    putStrLn "max':"
    putStrLn ("max' 2 5 = " ++ show (max' 2 5))
    putStrLn ""

    putStrLn "maxim:"
    putStrLn ("maxim [1, 2, 3] = " ++ show (maxim [1, 2, 3]))
    putStrLn ""

    putStrLn "repl:"
    putStrLn ("repl 5 'A' = " ++ show (repl 5 'A'))
    putStrLn ""

    putStrLn "repl':"
    putStrLn ("repl' 5 'A' = " ++ show (repl' 5 'A'))
    putStrLn ""

    putStrLn "take':"
    putStrLn ("take' 2 [1, 2, 3] = " ++ show (take' 2 [1, 2, 3]))
    putStrLn ""


-- len
len :: [a] -> Int
len [] = 0
len (_:xs) = 1 + len xs


-- filt
filt :: (a -> Bool) -> [a] -> [a]
filt _ [] = []
filt f (x:xs) = if f x == True
                then x:(filt f xs)
                else filt f xs


-- elm
elm :: Eq a => a -> [a] -> Bool
elm _ [] = False
elm x xs = 0 /= len found
    where found = filt ((==) x) xs


-- max' 
max' :: (Ord a) => a -> a -> a
max' a b = if a > b 
           then a
           else b


-- maxim
maxim :: (Ord a) => [a] -> a
maxim [] = error "list is empty"
maxim [x] = x
maxim (x:xs) = max x (maxim xs)


-- repl
repl :: Int -> a -> [a]
repl 0 _ = []
repl n x = x : repl (n-1) x


-- repl'
repl' :: Int -> a -> [a]
repl' n x
    | n <= 0 = []
    | otherwise = x : repl' (n-1) x


-- take'
take' :: Int -> [b] -> [b]
take' n _
    | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n-1) xs
