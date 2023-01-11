--Atividade 1
fever :: Float -> Bool
fever x = x > 37.8

hasFever :: [Float] -> [Float]
hasFever x = filter fever x

-- Atividade 2
hasFever' :: [Float] -> [Float]
hasFever' filter (\x -> x > 37.8)

-- Atividade 3
itemize :: [String] -> [String]
itemize map (\x -> "<li>" ++ x ++ "</li>")

-- Atividade 4
big :: Float -> Float -> Bool
big x y = y*y*pi < x

bigCircles :: Float -> [Float] -> [Float]
bigCircles x y = filter big x y

-- Atividade 5
fever2 :: [(String,Float)] -> Bool
fever2 x =  snd x > 37.8

quarentine :: [(String,Float)] -> [(String,Float)]
quarentine x = filter fever2 x

-- Atividade 6
agesIn :: [Int] -> Int -> [Int]
agesIn map (\x y -> y - x)

-- Atividade 7
super :: String -> String
super x 
  | head x == 'A' = "Super" ++ x 
  | otherwise = x

superNames :: [String] -> [String]
superNames x = map super x

-- Atividade 8
isShortWord :: String -> Bool
isShortWord s = length s < 10

onlyShorts :: [String] -> [String]
onlyShorts x = filter isShortWord x
