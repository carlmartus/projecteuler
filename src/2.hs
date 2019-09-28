solve :: Int -> Int -> Int -> Int -> Int
solve sum n0 n1 max
  | n1 >= max = sum
  | otherwise = solve (sum + addSum) n1 (n0+n1) max
  where
    addSum
      | even(n1) = n1
      | otherwise = 0

main :: IO ()
main = do putStrLn . show $ (solve 0 1 2 4000000)
