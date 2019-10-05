square_sum = sum . (map (^2))
sum_square :: (Foldable t, Integral a) => t a -> a
sum_square = (^2) . sum

nums = [1..100]

main :: IO ()
main = do putStrLn . show $ (sum_square nums) - (square_sum nums)
