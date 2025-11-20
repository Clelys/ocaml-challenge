
(*Soluzione point*)

type point = 
{
  x : float;
  y : float;
}

let p1 = 
{
  x = 2.5;
  y = 3.0;
}

let translate (p:point) (px : float) (py: float) = { x = p.x +. px; y = p.y +. py};;

let distance_from_origin (p : point) = sqrt(p.x *. p.x +. p.y *. p.y);;

type color = Red | Green | Blue;;

type colored_point = 
{
   position : point;
   color : color;
}

let cp1 =
{
    position = p1;
    color = Red;
}

let cp2 =
{
    position = p1;
    color = Green;
}

let same_color (cp1 : colored_point) ( cp2 : colored_point) = if cp1.color = cp2.color then true else false;;

let recolor (cp : colored_point) (c : color) = {position = cp.position; color = c};;

assert(same_color cp1 cp1 = false);;


