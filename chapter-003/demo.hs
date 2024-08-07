
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
Ord is for types that have an ordering.

(>) :: Ord a => a -> a -> Bool

-}

cmp6 = "Abrakadabra" < "Zebra"
cmp7 = "Abrakadabra" `compare` "Zebra"
-- 5 more than or equal to 2 
cmp8 = 5 >= 2
cmp9 = 5 `compare` 3  


{- 
Members of Show can be presented as strings.
All types covered so far except for functions are a part of Show.
The most used function that deals with the Show typeclass is show.
It takes a value whose type is a member of Show and presents it to us as a string.
-}

s1 = show 3
s2 = show 5.334
s3 = show True

{- 
Read is sort of the opposite typeclass of Show.
The read function takes a string and returns a type which is a member of Read.
-}

r1 = read "True" || False
r2 = read "8.2" + 3.8
r3 = read "5" - 2
r4 = read "[1,2,3,4]" ++ [3]  

{- 
read "4"
*** Exception: Prelude.read: no parse
-}
r5 = read "4" :: Int
r6 = read "4" :: Integer
r7 = read "4" :: Float
r8 = read "4" :: Double

{- 

:t show
show :: Show a => a -> String

:t read
read :: Read a => String -> a
-}


-- we can help haskell infer the type by telling it explicitly 
r10 = read "5" :: Int
r11 = read "5" :: Float
r12 = (read "5" :: Float) * 4
r13 = read "[1,2,3,4]" :: [Int]
r14 = read "(3, 'a')" :: (Int, Char)

{- 
Enum members are sequentially ordered types — they can be enumerated.
The main advantage of the Enum typeclass is that we can use its types in list ranges.
They also have defined successors and predecesors, which you can get with the succ
and pred functions.
Types in this class: (), Bool, Char, Ordering, Int, Integer, Float and Double.

can i list all types that belong to class Enum ?
-}

e1 = ['a'..'e']
e2 = [LT .. GT]
e3 = [3 .. 5]
e4 = succ 'B'

-- Bounded members have an upper and a lower bound.
-- b for bounds
b1 = minBound :: Int  
b2 = maxBound :: Char
b3 = maxBound :: Bool
b4 = minBound :: Bool

{-
once we get used to getting types of things using :t , we will just
list the types of procedures we use 

minBound :: Bounded a => a
minBound :: Bounded a => a

Num is a numeric typeclass.
Its members have the property of being able to act like numbers.
Let's examine the type of a number.

:t 20
20 :: Num a => a

It appears that whole numbers are also polymorphic constants.
They can act like any type that's a member of the Num typeclass.


-}

c1 = 20 :: Int
c2 = 20 :: Float
c3 = 20 :: Double
c4 = 20 :: Integer

{- 
common math operators
Num class things act like numbers
Fractional class
Integral class

(*) :: Num a => a -> a -> a
(+) :: Num a => a -> a -> a
(-) :: Num a => a -> a -> a
(/) :: Fractional a => a -> a -> a
(div) :: Integral a => a -> a -> a

To join Num, a type must already be friends with Show and Eq.

Num includes all numbers, including real numbers and integral numbers,

Integral is also a numeric typeclass.
Integral includes only integral (whole) numbers.
In this typeclass are Int and Integer.

Floating includes only floating point numbers, so Float and Double.

A very useful function for dealing with numbers is fromIntegral.
It has a type declaration of fromIntegral :: (Num b, Integral a) => a -> b.
From its type signature we see that it takes an integral number and turns it into a more
general number.

That's useful when you want integral and floating point types to work together nicely.
For instance, the length function has a type declaration of length :: [a] -> Int instead
of having a more general type of (Num b) => length :: [a] -> b.

I think that's there for historical reasons or something, although in my opinion, it's pretty stupid.
Anyway, if we try to get a length of a list and then add it to 3.2, we'll get an error
because we tried to add together an Int and a floating point number.

So to get around this, we do fromIntegral (length [1,2,3,4]) + 3.2 and it all works out.

Notice that fromIntegral has several class constraints in its type signature.
That's completely valid and as you can see, the class constraints are separated by
commas inside the parentheses.

this concludes chapter 3 on types and type classes


-}



