(*Best Offer: tutor*)

let best_offer (o1 : int option) o2 o3 = match (o1, o2, o3) with
  | (None, None, None) -> None
  | (Some a, None, None) -> Some a
  | (None, Some b, None) -> Some b
  | (None, None, Some c) -> Some c
  | (Some a, Some b, None) -> if a >= b then Some a else Some b
  | (Some a, None, Some c) -> if a >= c then Some a else Some c
  | (None, Some b, Some c) -> if b >= c then Some b else Some c
  | (Some a, Some b, Some c) -> if a>=b && a>= c then Some a 
      else if b>=a && b>=c then Some b else Some c;;

assert (best_offer (Some 100) (Some 150) None = Some 150);;
assert (best_offer None (Some 200) (Some 180) = Some 200);;


(*Soluzione collega*)

let best_offer (o1 : int option) o2 o3 = match (o1, o2, o3) with
|(None, None, None) -> None
|_->max(max o1 o2) o3;;

assert (best_offer (Some 100) (Some 150) None = Some 150);;
assert (best_offer None (Some 200) (Some 180) = Some 200);;




