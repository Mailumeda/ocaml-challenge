let parrot_truble s t = 
if(t < 0 || t > 23) then None else
 match s with
| true -> if(t < 7 || t > 20) then Some true else Some false
| false -> Some false