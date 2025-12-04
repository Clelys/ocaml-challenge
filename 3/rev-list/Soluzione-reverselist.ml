
let rec rev l = match l with 
  | [] -> []
  | a::tl -> (rev tl) @ [a];;

[1;2;3];;

(* 
(rev [2;3]) @ [1];;

(rev [3]) @ [2];;
*)

