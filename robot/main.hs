-- robot
main = do
    
    let x = robot ("X", 10, 200)
    let x2 = setAttack x 15
    let x3 = setHp x2 250
    let killer = setName x3 "killer"

    putStrLn (str killer)


-- robot model
robot (name, attack, hp) = (\ f -> 
    f (name, attack, hp))

-- getters
getName   r = r (\ (n, _, _) -> n)
getAttack r = r (\ (_, a, _) -> a)
getHp     r = r (\ (_, _, h) -> h)

-- setters
setName   r newname   = r (\ (_, a, h) -> robot (newname, a, h))
setAttack r newattack = r (\ (n, _, h) -> robot (n, newattack, h))
setHp     r newhp     = r (\ (n, a, _) -> robot (n, a, newhp))

-- to string method
str r = r (\ (n, a, h) -> 
    "robot: " ++ n ++ "{ " 
        ++ show a ++ 
        "/" 
        ++ show h ++ 
    " }")
