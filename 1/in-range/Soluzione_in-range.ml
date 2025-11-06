(*Soluzione in-range*)

let in_range x a b = if x >= a && x <= b then true else false;;

assert(in_range 6 1 3 = false);;
assert(in_range 6 1 8 = true);;
