
-- for rational values
-- import Data.Ratio

--- demo.hs

d1 :: Bool
d1 = True

-- d2 is of type :: Bool
-- double :: colon signify of type
d2 :: Bool
d2 = False

--- disjunction OR one OR other or both
d1b = True || False

-- conjunction and 
d2b = True && False


d3 :: Double
d3 = 3.2

d4 :: String
d4 = "hello world"

--- a float is a smaller ? double ?
d5 :: Float
d5 = 3.14

d6 :: Integer
d6 = 123456789012345678901234567890123456789012345678901234567890

d7 = succ 6

d7a = min 1 2
d7b = max 1 3

--- double a is Num class 
double :: Num a => a -> a 
double x = x + x

--
doubleMe :: Num a => a -> a 
doubleMe = double

-- if we provide no type declaration a more specific type may be assigned
-- in this case becomes
-- doubleMe2 :: Integer -> Integer
doubleMe2 = double

--- to load demo.hs haskell file using ghci
-- > :l demo

-- whitespace is significant in haskell
doubleUs x y = x*2 + y*2

doubleUs2 x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100  
                      then x  
                      else x*2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1  

-- we can have ' dash as 
-- doubleSmallNumber'-2 x = (if x > 100 then x else x*2) + 1

--- in ghci can say
--- let lostNumbers = [1,2,3]
-- wont work in script here 
lostNumbers = [4,8,15,16,23,42]

-- append 
helloWorld = "hello" ++ "World"

twoLists = [1,2,3] ++ [4,5,6]

--- : single colon haskell cons operator
-- [] empty list
-- ++ append operator
tripleList = 1:2:3:[]

--- lists of list of integers
b :: [[Integer]]
b = [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]

c :: [[Integer]]
c = b ++ [[1,1,1,1]]

d :: [[Integer]] 
d = [6,6,6]:b

--- fixnum int 
e :: Int 
e = 3


head1 = head [5,4,3,2,1]  
tail1 = tail [5,4,3,2,1]
last1 = last [5,4,3,2,1]

--- rename init to be butlast 
butlast = init

-- defaults to :: [Integer]
butlast1 :: [Int]
butlast1 = butlast [5,4,3,2,1] 

length1 = length [5,4,3,2,1]
null1 = null [1,2,3]
reverse1 = reverse [5,4,3,2,1]

take1 = take 3 [5,4,3,2,1]
take2 = take 1 [3,9,3]  
take3 = take 5 [1,2]
take4 = take 0 [6,6,6]

drop1 = drop 3 [8,4,2,1,5,6]
drop2 = drop 0 [1,2,3,4]
drop3 = drop 100 [1,2,3,4]

min1 = minimum [8,4,2,1,5,6]
max1 = maximum [1,9,2,3,4]

sum1 = sum [5,2,1,6,3,2,5,7]
prod1 = product [1,2,5,6,7,9,2,3]

elem1 = 4 `elem` [3,4,5,6]
elem2 = 10 `elem` [3,4,5,6]

range1 = [1..20]
range2 = ['a'..'z']
range3 = ['K'..'Z']

-- step by 2 
range4 = [2,4..20]  
range5 = [0.1, 0.3 .. 1]  

range6 = [13,26..24*13]

-- take 24 from sequence starts at 13 goes up each time by 13
-- 13 times table , uses two dots after value ..
range7 = take 24 [13,26..]
range8 = take 10 [13,26..]

-- cyclic lists 
range9 = take 10 (cycle [1,2,3])
-- list of characters , take 12 , list L O L _SPACE_ is 4 characters so LOL 3 times
range10 = take 12 (cycle "LOL ")

--- repeat one element indefinitely 
range11 = take 10 (repeat 5) 

-- repeat something n times 
range12 = replicate 3 10

-- list comprehensions
list1 = [x*2 | x <- [1..10]]  
list2 = [x*2 | x <- [1..10], x*2 >= 12]

-- `mod` is infix version of mod 
list3 = [ x | x <- [50..100], x `mod` 7 == 3]

-- modulo is remainder for integer division
--mod :: Integral a => a -> a -> a
mod1 = mod 12 3

-- 12 divided by 5 is 2 remainder 2 
mod2 = mod 12 5

-- integer division whole numbers
div1 = div 12 7
div2 = 17 `div` 2


-- not yet implemented / imported correct module yet 
-- rat1 : Data.Ratio
-- rat1 = 12 % 3

-- 10 booms ? 
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
boomBangs1 = boomBangs [1 .. 20]
boomBangs2 = take 10 boomBangs1
boomBangs3 = take 10 (repeat "BOOM!")

-- check if equal using basic structural equivalency
sameBangs = boomBangs2 == boomBangs3

boomBangs4 = boomBangs [7..13]  

list4 =  [ x | x <- [10..20], x /= 13, x /= 15, x /= 19]  









