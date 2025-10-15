let xor a b = ( a && not b) || ( not a && b);;

assert (xor false true = true);;

let xorif a b = if a then not b else b;;

let xorpatternmatch a b = match (a, b) with 
    (false, false) -> false
  | (false, true) -> true
  | (true, false) -> true
  | (true, true) -> false;;

let xorpatternmatch a b = match (a, b) with 
  | (false, false)|(true, true) -> false
  | (false, true) | (true, false) -> true;;