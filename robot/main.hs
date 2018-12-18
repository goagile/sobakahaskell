-- robot

main = do
    
    let x = robot ("X", 10, 200)
    let x2 = setAttack x 15
    let x3 = setHp x2 250
    let killer = setName x3 "killer"

    putStrLn (str killer)


-- robot model
robot (name, attack, hp) = (\ f -> f (name, attack, hp))

getName   arobot = arobot (\ (n, _, _) -> n)
getAttack arobot = arobot (\ (_, a, _) -> a)
getHp     arobot = arobot (\ (_, _, h) -> h)

setName   arobot newname = arobot (\ (_, a, h) -> robot (newname, a, h))
setAttack arobot newattack = arobot (\ (n, _, h) -> robot (n, newattack, h))
setHp     arobot newhp = arobot (\ (n, a, _) -> robot (n, a, newhp))

str arobot = arobot (\ (n, a, h) -> 
    "robot: " ++ n ++ "{ " 
        ++ show a ++ 
        "/" 
        ++ show h ++ 
    " }")
