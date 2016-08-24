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
