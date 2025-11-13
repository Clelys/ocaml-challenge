(*Soluzione guess a number*)

let guess5 (n : int) = if (n >= 0) && (n <= 5)
     then let r = Random.int(6) in (n = r, r) 
     else failwith "Non è nel range";;


