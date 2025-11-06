(*Soluzione min max di 3 valori*)

(*DEfinisco una funzione che dai tre valori interi mi restituisca la coppia di valori nella quale
 l'elemento a sinistra è il più piccolo dei tre elementi e l'elemento a destra è il massimo dei tre*)

 let minmax3  (a :int) b c = (min a (min b c) , max a (max b c));;

 assert(minmax3 1 8 5 = (1,8));;
