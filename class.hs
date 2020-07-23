-- https://www.youtube.com/watch?v=1jZ7j21g028
data OS = Windows | OSX | Linux | Unix

-- bootup :: OS -> [Char]
-- bootup Unix = "Up and Running"
-- x = bootup 

instance Show OS where
    show Unix    = "Unix"
    show Linux   = "Linux"
    show OSX     = "OSX"
    show Windows = "Windows"

class Bootable a where
    boot :: a -> [Char]

instance Bootable OS where
    boot Unix    = "Up and running"
    boot Linux   = "Well, I was actually never down..."
    boot OSX     = "Non-sufficient Starbucks coffe, please refill"
    boot Windows = "Upgrading to windows 10, this should take a second..."

-- x = boot Unix
-- main = print x

main = print Unix
