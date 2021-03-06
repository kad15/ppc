open Facile
open Easy

(* 
minimise x**2 + y**2
subject to x + y = 10
*)


let () = let x = Fd.interval 0 10 and y = Fd.interval 0 10 in
Cstr.post (fd2e x +~ fd2e y =~ i2e 10);


let c = Arith.e2fd (fd2e x **~   2 +~ fd2e y **~  2) in
let store = ref None in
let solution cc =
 store := Some (cc, Fd.elt_value x, Fd.elt_value y);
 Printf.printf "Found %d\n" cc in
let g = Goals.minimize (Goals.indomain x &&~ Goals.indomain y) c solution in
if Goals.solve (g ||~ Goals.success) then
 match !store with

None -> Printf.printf "No solution\n"
 | Some (best_c, best_x, best_y) ->

Printf.printf "Optimal solution: cost=%d x=%d y=%d\n" best_c best_x best_y;;





