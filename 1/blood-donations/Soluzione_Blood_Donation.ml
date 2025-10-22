(*Blood Donation*)
type blood_group = A | B | AB | O;;

let check_groups x y = match(x,y) with 
  |(O,O) | (O,A) | (O,B) | (O, AB) | (A,A) | (A,AB) | (B,B) | (B, AB) | (AB,AB) -> true
  |_->false;;

assert (check_groups O AB = true);;
assert (check_groups A B = false);;
assert (check_groups AB AB = true);;