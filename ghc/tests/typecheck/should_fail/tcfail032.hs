{- This test gives the following not-very-wonderful error message.

  "tc_sig.hs", line 3: Type signature does not match the inferred type:
    Signature: t76 -> Int
    Inferred type: t75

It *is* an error, because x does not have the polytype 
	forall a. Eq a => a -> Int
becuase it is monomorphic, but the error message isn't very illuminating.
-}

module TcSig where

f x = (x :: (Eq a) => a -> Int)


