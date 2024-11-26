type blood_group = A | B | AB | O

let check_groups x y = match x with
| O -> if((y = O) || (y = A) || (y = AB) || (y = B)) then true else false
| A -> if((y = A) || (y = AB)) then true else false
| AB -> if (y = AB) then  true else false
| B -> if((y = B) || (y = AB)) then true else false
;;

assert (check_groups O AB = true);;
assert (check_groups A B = false);;
assert (check_groups AB AB = true);;
