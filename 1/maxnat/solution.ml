let max_nat a b = if((a < 0) || (b < 0)) 
  then failwith("Not natural numbers") 
  else if(a > b)
    then a
  else if(b < a)
   then b
  else b;;

    assert(max_nat 2 5 = 5);;
    assert(max_nat 5 2 = 5);;
    assert(try max_nat (-2) 5 |> fun _ -> false with _ -> true);;
    assert(try max_nat 2 (-5) |> fun _ -> false with _ -> true);;
    assert(try max_nat (-2) (-5) |> fun _ -> false with _ -> true);;
    