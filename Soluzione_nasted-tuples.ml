(*Soluzione nested tuples*)


let total_score ((name : string), ((written : int), (oral : int))) : int = written + oral;;

let passed ((name : string), ((written : int), (oral : int))) : bool = if written >= 18 && oral >= 18 then true else false;;

let string_of_result  ((name : string), ((written : int), (oral : int))) : string = 
          if passed (name,(written, oral)) 
              then name ^ " passed with total " ^ string_of_int (total_score (name,(written, oral))) 
          else name ^ " did not pass";;

let merge  ((name1 : string), ((written1 : int), (oral1 : int)))  ((name2 : string), ((written2 : int), (oral2 : int))) : (string *(int * int)) =
       if name1 <> name2 then failwith "I risultati non sono dello stesso studente"
       else  let max_w = max written1 written2 in
        let max_o = max oral1 oral2 in
        (name1,(max_w, max_o));;


assert(string_of_result ("Nicolo", (20, 30)) = "Nicolo passed with total 50");;
assert(merge ("Nicolo", (20,30)) ("Nicolo", (25,18)) = ("Nicolo", (25,30)));;
assert(merge ("Nicolo", (20,30)) ("Clelia", (25,18)) = failwith "I risultati non sono dello stesso studente");;