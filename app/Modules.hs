module ModuleTest
where
  import Data.List
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
