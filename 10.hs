import           Data.List

primesTo :: Int -> [Int]
primesTo m = sieve [2..m]
             where
             sieve (x:xs) = x : sieve (xs \\ [x, x+x..m])
             sieve []     = []

main = print $ sum $ primesTo 2000000
