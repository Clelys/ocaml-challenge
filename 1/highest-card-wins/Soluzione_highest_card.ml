(*Highest card wins: cg = carta giocatore, cm = carta mazziere*)

type card = Joker | Val of int;;

let win cg cm = match(cg, cm) with
  | (Val a, Val b) -> a > b 
  | (_, Joker) -> false 
  | _->true;;

assert (win (Joker) (Val 1) = true);;