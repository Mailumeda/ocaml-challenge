type season = Spring | Summer | Autumn | Winter

let squirrel_play temp seas = match seas with
| Spring -> if(temp >= 15 && temp <= 30) then true else false
| Summer -> if(temp >= 15 && temp <= 35) then true else false
| Autumn -> if(temp >= 15 && temp <= 30) then true else false
| Winter -> if(temp >= 15 && temp <= 30) then true else false;;

assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;