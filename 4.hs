import Data.List

main = print . last . filter (\x -> reverse (show x) == show x) $ sort [x*y | x <- [100..999], y <- [100..999]]