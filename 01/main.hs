-- epic functional implementation
import Data.Char

ttail :: [a] -> [a]
ttail [] = []
ttail x = tail x

sumItUp :: [String] -> [Int]
sumItUp [] = []
sumItUp x = 
    let (y, z) = span (/= "") x in 
        (sum $ map (\x -> read x :: Int) y) 
        : (sumItUp $ ttail z)

highest :: [Int] -> Int
highest [x] = x
highest (x:xs) 
    | curent < x = x
    | otherwise = curent
    where curent = highest xs
    

main = print (highest $ sumItUp (["1000", "2000", "3000", "", "4000", "", "5000", "6000", "", "7000", "8000", "9000", "", "10000"]))
