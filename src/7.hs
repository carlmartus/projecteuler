import Data.List
import Data.Maybe

accumPrimes primes num = if is_prime then ((num:primes), Just num) else (primes, Nothing)
    where
        is_prime = all (\prime -> (num `rem` prime) > 0) half_primes
        half_primes = drop ((length primes) `div` 2) primes

solve n = fromJust . last . (take n) . (filter isJust) . snd . (mapAccumL accumPrimes []) $  [2..]

main :: IO ()
main = do putStrLn . show . solve $ 10001
