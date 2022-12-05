import Data.List.Split

type Pair = ((Int, Int), (Int, Int))

pair :: Pair -> Bool
pair ((xf, xt), (yf, yt)) = contained [xf..xt] [yf..yt]

toPair :: String -> [Pair]
toPair x = 
    where [x, y] = splitOn "," (splitOn "\n" x)

main = print (foldr (\x y -> if pair x then y + 1 else y) 0 [()])
