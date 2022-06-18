perms = [(x,y,z) | x <- [0..1000], y <- [0..1000], z <- [0..1000], x < y, y < z]

trips = head $ filter (\(x,y,z) -> x^2 + y^2 == z^2 && x + y + z == 1000) perms

ans = (\(x,y,z) -> x * y * z) trips

main = print ans