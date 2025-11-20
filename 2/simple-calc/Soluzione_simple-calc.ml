(*Soluzione simple calculator*)

type operation = 
  Add of int * int
 | Sub of int * int 
 | Mul of int * int
 | Div of int * int;;

 let eval (op : operation) = match op with 
  | Add (a, b) -> Some (a + b)
  | Sub (a, b) -> Some (a - b)
  | Mul (a, b) -> Some (a * b)
  | Div (a, b) ->
      if b = 0 then None
      else Some (a / b);;


let make_operation (c : char) (n1 : int) (n2 : int) = match c with 
      |'+' -> Add(n1, n2)
      |'-' -> Sub(n1, n2)
      |'*' -> Mul(n1, n2)
      |'/' -> if n2 = 0 then failwith "Non si può" else Div(n1, n2)
      | _ -> failwith "Carattere non valido";;


assert(make_operation '+' 5 4 = Add(5,4));

