(*Soluzione both true*)

(*La funzione prende in imput due funzioni entrambe che prendono uno stesso parametro e verifica che entrambe siano 
vere sullo stesso parametro*)
let both_true p q = fun x -> p x && q x;;


(*Funzioni e assert per il test*)
let is_positive x = x > 0;;
let is_even x = x mod 2 = 0;;
let is_positive_and_even = both_true is_positive is_even;;
assert(is_positive_and_even 4 = true);;
assert(is_positive_and_even 3 = false);;