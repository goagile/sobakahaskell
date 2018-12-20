

-- polymorph
main = do
    let c = Circ 0 0 1
    let r = Rect 0 0 2 2
    putStrLn (show $ c)
    putStrLn (show $ r)
    putStrLn (show $ area c)
    putStrLn (show $ area r)
    
-- shape
data Shape = Circ Float Float Float
    |        Rect Float Float Float Float 
    deriving (Show)

-- area
area :: Shape -> Float
area (Circ _ _ r) = pi * r^2
area (Rect x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)
