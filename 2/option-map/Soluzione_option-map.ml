(*Soluzione Option Map*)

(*La funzione restituisce None se x è vuoto o non presente 
altrimenti applica la funzione f*)
let option_map f x = match x with
| None -> None
| Some x -> Some(f x);;


(*Funzioni e assert di test*)
let double x = x * 2;;
let square x = x * x;;

assert (option_map double (Some 3) = Some 6);;
assert (option_map double None = None);;
assert (option_map double (Some (square 3)) = Some 18);;
assert (option_map square (option_map double None) = None);;