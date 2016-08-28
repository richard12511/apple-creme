module Module2
where
  import Data.List
  import Data.Char
  import Data.Function

  message = "hey guys it's me"
  defaultWords = words message
  newWords = filter (not.any isSpace) . groupBy ((==) `on` isSpace) $ message
