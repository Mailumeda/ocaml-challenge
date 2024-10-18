let f b = b || false ;; (*bool*)
let g (b: bool) = b ;; (*forzando tipo bool: b può essere solo bool*)

let nand a b = not(a && b);; (*soluzione con connettivi logici*)

let nand1 x y = match x, y with (*soluzione con pattern matching (switch case)*)
    | true, true -> false
    | _ -> true;;

let nand2 c d = if c && d then false else true;; (*soluzione con conditional expressions*)

(fun w z -> w+z) 5 4;; (*Funzione anonima -> Macro (fiftyfifty)*)