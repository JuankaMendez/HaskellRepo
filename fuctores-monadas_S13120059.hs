instance Functor ((->) r) where
    fmap = (.)
    
 --   ghci> :t fmap (*3) (+100)
--fmap (*3) (+100) :: (Num a) => a -> a
--ghci> fmap (*3) (+100) 1
--303
--ghci> (*3) `fmap` (+100) $ 1
--303
--ghci> (*3) . (+100) $ 1
--303
--ghci> fmap (show . (*3)) (*100) 1
--"300"

instance Monad Maybe where
    return x = Just x
    Nothing >>= f = Nothing
    Just x >>= f  = f x
    fail _ = Nothing
    
    
    