
let double () =
   let d1 = Random.int(13) 
in let d2 = Random.int(13) 
in ((d1 + d2 = 7) || (d1 + d2 = 11) || (d1 = d2), d1, d2);;

