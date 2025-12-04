
let rec sumrange a b =
  if a > b then failwith "Error"
  else 
    if a = b then a
    else a + (sumrange (a +1) b)