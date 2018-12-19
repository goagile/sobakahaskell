

-- data
main = do

    let b = Blood AB Pos
    
    putStrLn (showBlood b)


data Rh = Pos | Neg

data Gr = A | B | AB | O

data Blood = Blood Gr Rh

-- showRh
showRh :: Rh -> String
showRh Pos = "+"
showRh Neg = "-"

-- showGr
showGr :: Gr -> String
showGr A = "A"
showGr B = "B"
showGr AB = "AB"
showGr O = "O"

-- showBlood
showBlood :: Blood -> String
showBlood (Blood gr rh) = showGr gr ++ showRh rh
