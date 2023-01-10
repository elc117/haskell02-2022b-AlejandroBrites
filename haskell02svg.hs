import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll = 
  svgBegin 500 500 ++ 
  (svgCircle 250 250 240 "rgb(255, 0, 0, 1)") ++ 
  (svgCircle 222 250 212 "rgb(255, 127, 0, 1)") ++ 
  (svgCircle 194 250 184  "rgb(255, 255, 0, 1)") ++ 
  (svgCircle 166 250 156 "rgb(0, 255, 0, 1") ++
  (svgCircle 138 250 128 "rgb(0, 255, 255, 1)") ++ 
  (svgCircle 110 250 100 "rgb(0, 0, 255, 1)") ++
  (svgCircle 82 250 72 "rgb(200, 0, 255, 1)") ++
  (svgCircle 54 250 44 "rgb(255, 255, 255, 1)") ++
  svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll