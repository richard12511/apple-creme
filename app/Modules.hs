module ModuleTest
where
  import Data.List
  import Data.Function
  test = intersperse '.' "Hello"
  intercalated = intercalate "o" ["Hello1", "Hello 2"]
  --adding 3x^2 + 5x + 9, 10x^3 + 9 and 8x^3 + 5x^2 + x - 1
  polys = [[0,3,5,9],[10,0,0,9],[8,5,1,-1]]
  polys2 = [[2,1],[2,1]]
  addedPolys = map sum $ transpose polys
  areThereAny = any (>4) [1,2,3,4,5]
  areTheyAll = all (>4) [1,2,3,4,5]
  anyCapitals = any (`elem` ['A'..'Z']) "Hello Babe"
  multipliedBy2TenTimes = take 10 $ iterate (*2) 2
  --sum of all third powers under 1000
  sumOfAllThirdPowers = sum $ takeWhile (<1000) $ map (^3) [1..]
  stock = [(994.4,2008,9,1),(995.2,2008,9,2),(999.2,2008,9,3),(1001.4,2008,9,4),(998.3,2008,9,5)]
  --when did stock first go above 1000
  (price, year, month, day) = head $ dropWhile (\(price,year,month,day) -> price <= 1000) stock
  --how many times does each element appear in the list
  list = [1,4,1,1,6,2,2,2,3,3,2,2,2,5,6,7]
  numTimes = map (\l -> (head l, length l)) $ group.sort $ list
  --sum
  sum' :: (Num a) => [a] -> a
  sum' [] = 0
  sum' (x:xs) = foldl (\acc x -> acc + x) 0 xs

  elem' :: (Eq a) => a -> [a] -> Bool
  elem' y ys = foldl (\acc x -> if x == y then True else acc) False ys

  listDiff = [1..10] \\ [2,3]
  inters = [1,2,3] `intersect` [3,4,5]
  un = "hey man" `union` "man what is up"
  values = [-4.3, -2.4, -1.2, 0.4, 2.3, 5.9, 10.5, 29.1, 5.3, -2.4, -14.5, 2.9, 2.3]
  groupedValuesByNegPos = groupBy (\x y -> (x >= 0) == (y >= 0)) values
  groupedValues2 = groupBy ((==) `on` (>0)) values

  partitionedList = partition (`elem` ['A'..'Z']) "hellO There everYbody"
