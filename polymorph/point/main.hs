

-- polymorph
main = do

    let c = Circ (Point 0 0) 1
    let r = Rect (Point 0 0) (Point 2 2)

    putStrLn (show $ c)
    putStrLn (show $ r)

    putStrLn (show $ area c)
    putStrLn (show $ area r)

    -- concentric
    putStrLn (show $ map (Circ (Point 0 0)) [1, 2, 3])
    

-- point
data Point = Point Float Float deriving (Show)

-- shape
data Shape = Circ Point Float | Rect Point Point deriving (Show)

-- area
area :: Shape -> Float
area (Circ _ r) = pi * r^2
area (Rect (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)
