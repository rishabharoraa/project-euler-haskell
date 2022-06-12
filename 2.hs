fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

ans = sum [x | x <- takeWhile (<= 4000000) fibs, even x]

main = print ans