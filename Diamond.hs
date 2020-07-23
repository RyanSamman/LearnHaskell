import Data.List

-- // TODO Add Maybe 
diamond :: Int -> [Char]
diamond n 
    -- Return Nothing
    | n `mod` 2 == 0 = ""
    -- to return the string
    -- | intercalate "\n" [layer n x | x <- [0..(n - 1)]] 
    | otherwise = unlines $ [layer n x | x <- [0..(n - 1)]]
    where
        -- Is there a way not to re-calculate this every time? (constant)
        -- Or does the compiler handle it?
        midpoint :: Int -> Int
        midpoint n = (n - 1) `quot` 2 

        spaces :: Int -> Int -> Int
        spaces n x = abs (x - midpoint n)

        filled :: Int -> Int -> Int
        filled n x = n - 2 * abs(x - midpoint n)

        layer :: Int -> Int -> [Char]
        layer n x = (concat (replicate (spaces n x) " ")) ++ (concat (replicate (filled n x) "*"))

main = putStr (diamond 11)
