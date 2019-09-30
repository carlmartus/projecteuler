solve :: Integral a => a -> a -> a -> Maybe a
solve no di pr
  | nextPr >= no = Just di
  | di > div no 2 = Nothing
  | (no `mod` di == 0) = next nextPr
  | otherwise = next pr
  where
    next = solve no (di+1)
    nextPr = pr*di

main :: IO ()
main = do putStrLn . show $ solve 600851475143 2 1
