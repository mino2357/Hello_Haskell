infixr 5 :-:

data List a = Empty | Cons { listHead :: a, listTail :: List a}
  deriving (Show, Read, Eq, Ord)

data List1 a = Empty1 | a :-: (List1 a)
  deriving (Show, Read, Eq, Ord)

infixr 5 ^++
(^++) :: List1 a -> List1 a -> List1 a
Empty1 ^++ ys = ys
(x :-: xs) ^++ ys = x :-: (xs ^++ ys)