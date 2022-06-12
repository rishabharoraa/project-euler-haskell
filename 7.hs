import Data.List

factorsOf :: Int -> [Int]
factorsOf n = sort $ concat [ [x, div n  x] | x <- [1..(ceiling . sqrt . fromIntegral) n], n `mod` x == 0]

isPrime :: Int -> Bool
isPrime n = map head (group . sort $ factorsOf n) == [1,n]

arr = [x | x <- [2..], isPrime x]

main :: IO ()
main = print $ arr !! 10000