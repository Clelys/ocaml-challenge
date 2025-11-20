
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