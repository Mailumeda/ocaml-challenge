let xor a b = (a &&(not b)) || (b && (not a));; (*soluzione con connettivi logici*)

let xor1 x y = match x, y with (*soluzione con pattern matching (switch case)*)
    | true, true | false, false -> false
    | _ -> true;;

let xor1_2 x y = match x, y with (*soluzione con pattern matching usando il diverso e 'when'*)
  | x', y' when x' <> y' -> true
  | _ -> false;;

let xor2 c d = if c <> d then true else false;; (*soluzione con conditional expressions*)