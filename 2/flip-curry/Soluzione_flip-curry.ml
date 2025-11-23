(*Soluzione flip-curry*)

(*La funzione flip prende una funzione che prende due argomenti e gli inverte quindi applica prima y e poi x*)
let flip f = fun y -> fun x -> f x y

let sub x y = x - y;;
let flipped_sub = flip sub;;
assert (flipped_sub 3 10 = 7);;
assert (flipped_sub 10 3 = -7);;