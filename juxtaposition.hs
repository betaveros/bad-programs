-- inspired by a dumb meme that resurfaced in 2019
-- see https://blog.vero.site/post/multiplication for more details
{-# LANGUAGE GADTs #-}
import Control.Applicative (liftA2, (<*>))

instance (a ~ b, Num b) => Num (a -> b) where
    fromInteger = (*) . fromInteger
    (+) = liftA2 (+)
    (-) = liftA2 (-)
    (*) = (.)
    abs = (<*> signum) . (((*) . abs) .)
    signum = (<*> abs) . (((*) . signum) .)

(÷) = (/)

main = print (8÷2(2+2))
