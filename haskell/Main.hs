import System.Random
import Text.Printf

-- Define o valor máximo de cores e tamanho do circulo
maxRGB, maxSize :: Int
maxRGB = 255
maxSize = 300

-- r, cx, cy
type Circ = (Int, Int, Int)

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg enable-background='255,0,0' width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

-- Strings SVG
-- Strings SVG
svgCircle :: (Int,Int,Int) -> String -> String
svgCircle (cx, cy, r) style = printf "<circle cx='%d' cy='%d' r='%d' %s />\n" cx cy r style

-- Atributos de estilo
svgStyle :: (Int, Int, Int) -> String
svgStyle (r, g, b) = printf "style='fill:rgb(%d,%d,%d);stroke-width:3;stroke:rgb(%d,%d,%d)'" r g b r g b

-- Nova função = gera os círculos com cores aleatórias
randomPalette :: StdGen -> Int -> [(Int,Int,Int)]
randomPalette gen n =
  let allrandoms = take (3*n) (randomRs (0, maxRGB) gen::[Int])
      rs = take n allrandoms
      gs = slice n (2*n-1) allrandoms
      bs = slice (2*n) (3*n) allrandoms
      in zipWith3 (\r g b -> (r,g,b)) rs gs bs
  where

slice :: Int -> Int -> [a] -> [a]
slice from to xs = take (to - from + 1) (drop from xs)

-- Gerando também os valores de tamanho e posição dos círculos de forma aleatória
genRandomCirc :: StdGen -> Int -> [(Int, Int, Int)]
genRandomCirc gen n =
  let (gen1, gen2) = split gen
      cx = take n (randomRs (0, maxSize) gen::[Int])
      cy = take n (randomRs (0, maxSize) gen1::[Int])
      r = take n (randomRs (1, 100) gen2::[Int])
    in zipWith3 (\cx cy r -> (cx,cy,r)) cx cy r
  
main :: IO ()
main = do
  genColors <- newStdGen
  genPos <- newStdGen
  let n = randomPalette genColors 5 :: [(Int,Int,Int)]
      g = genRandomCirc genPos 5
      svgfigs = concat $ zipWith svgCircle g (map svgStyle n)
      f = svgStyle (0,0,0)
      j = svgCircle (0,0,1000) f
      svgstring = svgBegin 300 300 ++ j ++svgfigs ++ svgEnd
    in writeFile "output.svg" svgstring