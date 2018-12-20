

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
elm a n = 0 /= len (filter (\ z -> z == a) n)
