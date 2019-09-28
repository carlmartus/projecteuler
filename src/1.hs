dividable :: Int -> Bool
dividable x = any (== 0) [mod x 3, mod x 5]

solve :: Int -> Int
solve count = sum [x | x <- [1..count], dividable x]

main :: IO ()
main = do putStrLn . show . solve $ 999
