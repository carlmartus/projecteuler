import Data.List

is_even n = all check [1..20]
  where check divider = (rem n divider) == 0

main :: IO ()
main = do putStrLn . show $ find is_even (drop 1 [0,20..])

