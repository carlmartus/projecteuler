is_palindome :: String -> Bool
is_palindome str = half str == (half . reverse) str
  where
    half = take half_len
    half_len = div (length str) 2

numbers = [(x, y) | x <- [100..999], y <- [100..999], x <= y]
generate = [x*y | (x, y) <- numbers, is_palindome . show $ x*y]

main :: IO ()
main = do putStrLn . show $ (foldl1 max generate)
