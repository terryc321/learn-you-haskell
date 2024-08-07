
-- chapter 2 type classes

{-
use ghci to determine type of something
:t "hello"

theType = :t "hello"
will not work , cannot talk aobut types with variables
why?

intellij haskell plugin ?
--- setup your editor here ... weeeks go bye bye ...

-}

--removeNonUppercase :: [Char] -> [Char]
removeNonUppercase :: [Char] -> [Char]  
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]


--- 1 cannot get indentation coorect in emacs
-- 2 does not suggest things to type in 
addThree :: Int -> Int -> Int -> Int  
addThree x y z = x + y + z


factorial :: Integer -> Integer  
factorial n = product [1..n]  

fac1 = factorial 50

circumference :: Float -> Float  
circumference r = 2 * pi * r

cir1 = circumference 4.0

circumference' :: Double -> Double  
circumference' r = 2 * pi * r

{- types of common list procedures

:t head
head :: GHC.Stack.Types.HasCallStack => [a] -> a

:t tail
tail :: GHC.Stack.Types.HasCallStack => [a] -> [a]

typeclasses

what is the type of equivalences
:t (==)
(==) :: Eq a => a -> a -> Bool

=> means class constraint
(==) puts a constraint on a such that it must be a class of Eq
takes two types and returns a boolean

:t elem
elem :: (Foldable t, Eq a) => a -> t a -> Bool



-}

---comparisons                    
cmp1 = 5 == 5  

-- /= means not equal to
cmp2 = 5 /= 5
cmp3 = 'a' == 'a' 
cmp4 = "Ho Ho" == "Ho Ho"  
cmp5 = 3.432 == 3.432 

{-
-- Ord is for types that have an ordering.

(>) :: Ord a => a -> a -> Bool

editor
if region is single line --
otherwise use block comment


nested block comments ?

-}

cmp6 = "Abrakadabra" < "Zebra"
cmp7 = "Abrakadabra" `compare` "Zebra"
-- 5 more than or equal to 2 
cmp8 = 5 >= 2
cmp9 = 5 `compare` 3  

show 3

-- this is a single line comment 

{- 
this is a line
this is alline
this is a line
-}

-- hoogle haskell google ?

{- 
Members of Show can be presented as strings.
All types covered so far except for functions are a part of Show.
The most used function that deals with the Show typeclass is show.
It takes a value whose type is a member of Show and presents it to us as a string.
-}

{- 
undo redo
where is hydra also ... how do we config that spicy nut sack
do we have haskell lsp for emacs installation ?
-}


