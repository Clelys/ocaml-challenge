(*Soluzionne x to the ninth*)

(*Definizione funzione per il quadrato di un valore*)
let square x =  x * x;;

let exp9 x = (square (square(square(x)))) + (square (square(square(x))));;
let exp9b x = (square (square(square(x)))) * x;;

assert (exp9 2 = 512);;
assert (exp9 3 = 19683);;


