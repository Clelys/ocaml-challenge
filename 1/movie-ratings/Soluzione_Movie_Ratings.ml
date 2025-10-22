
let movie_rating (a : int) (b : int) (c : int) =  if (a > 1 || a < 5 ) && (b > 1 || b < 5 ) && (c > 1 || c < 5 )
  then match (a,b,c) with 
|(5,5,5) -> Some "Capolavoro"
|(5,5,4) | (5,4,5) | (4,5,5) -> Some "Altamente consigliato"
|(4,4,3) | (4,3,4) | (3,4,4) -> Some "Consigliato"
|_-> Some "Recensioni contrastanti"
else failwith "Input non consentito";;

assert (movie_rating 5 5 5 = Some "Capolavoro");;
assert (movie_rating 5 4 5 = Some "Altamente consigliato");;