safeDiv x y =
    let q = div x y        -- safe as q never evaluated if y == 0
    in if y == 0 then 0 else q
main = print (safeDiv 1 0) -- prints 0