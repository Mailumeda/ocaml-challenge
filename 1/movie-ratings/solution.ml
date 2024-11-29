let movie_rating cr1 cr2 cr3 =
    if ((cr1 < 0 || cr1 < 5) || (cr2 < 0 || cr2 < 5) || (cr3 < 0 || cr3 < 5))
        then failwith("Input outside range")
else 
    match cr1, cr2, cr3 with
    |5, 5, 5 -> "Masterpiece"
    |cr1, 5, 5 when (cr1 >= 4) -> "Highly Recommended"
    |5, cr2, 5 when (cr2 >= 4) -> "Highly Recommended"
    |5, 5, cr3 when (cr3 >= 4) -> "Highly Recommended"
    |cr1, cr2, cr3 when cr1 >= 4 && cr2 >= 4 && cr3 >= 3 -> "Recommended"
    |cr1, cr2, cr3 when cr1 >= 4 && cr2 >= 3 && cr3 >= 4 -> "Recommended"
    |cr1, cr2, cr3 when cr1 >= 3 && cr2 >= 4 && cr3 >= 4 -> "Recommended"
    |_ -> "Mixed Reviews";;