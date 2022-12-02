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
match 'A' 'Y' = 1
match 'A' 'Z' = 2
match 'B' 'X' = 1
match 'B' 'Y' = 2
match 'B' 'Z' = 3
match 'B' 'X' = 1
match 'B' 'Y' = 2
match 'B' 'Z' = 3
match _ _ = 0

eval :: (Char, Char) -> Int
eval (x, y) = (match x y) + value y

evalMatch :: [(Char, Char)] -> Int
evalMatch = sum . map (eval)

main = print (evalMatch [])
