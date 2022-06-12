import Data.List

-- need not check for dupes here
factorsOf :: Int -> [Int]
factorsOf n = sort $ concat [ [x, div n  x] | x <- [1..(ceiling . sqrt . fromIntegral) n], n `mod` x == 0]

isPrime :: Int -> Bool
isPrime n = factorsOf n == [1,n]

something :: [Int]
something = filter isPrime (factorsOf 600851475143)

main :: IO ()
main = print something