value :: Char -> Int
value 'X' = 1 
value 'A' = 1
value 'Y' = 2
value 'B' = 2
value 'Z' = 3
value 'C' = 3
value _ = 0

match :: Char -> Char -> Int
match 'A' 'X' = 3
match 'B' 'Y' = 3
match 'C' 'Z' = 3
match 'A' 'Y' = 6
match 'B' 'Z' = 6
match 'C' 'X' = 6
match _ _ = 0

eval :: (Char, Char) -> Int
eval (x, y) = (match x y) + value y

evalMatch :: [(Char, Char)] -> Int
evalMatch = sum . map (eval)

main = print (evalMatch [])
