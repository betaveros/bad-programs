-- definitely not original with me, but I don't remember where I saw it
import qualified Data.Set as Set

-- this is an involution
swapZeroAndOne :: Double -> Double
swapZeroAndOne x@0  = if isNegativeZero x then -1 else 1
swapZeroAndOne 1    = 0.0
swapZeroAndOne (-1) = -0.0
swapZeroAndOne x    = x

-- Set failing to obey the functor laws in a stupid way:
main :: IO ()
main = do
    print . Set.map swapZeroAndOne . Set.map swapZeroAndOne $ Set.fromList [-1,1]
    print . Set.map (swapZeroAndOne . swapZeroAndOne) $ Set.fromList [-1,1]
