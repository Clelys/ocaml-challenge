(*Soluzione personal data*)

(*Costruisco il tipo persona*)
type person = Person of (string * int * string option);;

(*Funzione che associa a dei dati il tipo persona*)
let make_person (name : string) (age : int) (email : string option) : person = 
  if age < 0 || age > 150 then failwith "età non valida" 
  else Person(name, age, email);;

(*Funzione se presente estrae la mail*)
let get_email (p : person) : string option = match p with
| Person (_,_,None) -> None
| Person (_,_,Some e) -> if e = "" then None   else Some e ;;

(*Funzione per identificare se la persona è maggiorenne*)
let can_send_adult_email (p : person) : bool = match p with 
    | Person (_,age,_) -> if age >= 18 then true else false;;
  

(*Definizione di persone di esempio e assert per testare*)
let gino = make_person "gino" 21 (Some "gino@gmail.com");;
let pino = make_person "pino" 23 None;;
let anna = make_person "anna" 16 (Some "anna@tiscali.it");;

assert(get_email gino = Some "gino@gmail.com");;
assert(get_email pino = None);;

assert(can_send_adult_email gino);;
assert(not (can_send_adult_email pino));;
assert(not (can_send_adult_email anna));;

(*--------------------------------------------------------------------*)
(*Soluzione con i record types*)

(*Vengono riscritte le stesse funzioni ma utilizzando i record invec dei product type*)
type person2 = 
{
  name : string;
  age : int;
  email : string option;
}

let make_person_record n a e = if a < 0 || a > 150 then failwith "età non valida" 
  else {name = n; age = a; email = e};;

let get_email_record (p : person2) : string option = match p.email with
|None -> None
|Some e -> if e = "" then None else Some e;;


let can_send_adult_email_record (p : person2) : bool = if p.age >= 18 then true else false;