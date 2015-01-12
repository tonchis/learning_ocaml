open OUnit2
(*
 * Chapter 4
 *)

let refute expression = assert (not expression)
let length_list_test _ =
  assert_equal 3 (Sandbox.length [1; 2; 3])

let evens_list_test _ =
  assert_equal [4; 4] (Sandbox.evens [2; 4; 2; 4; 2])

let count_true_test _ =
  assert_equal 2 (Sandbox.count_true [true; false; true])

let rev_test _ =
  assert_equal [3; 2; 1] (Sandbox.rev [1; 2; 3])

let palindromize_list_test _ =
  assert_equal [1; 2; 3; 2; 1] (Sandbox.palindromize [1; 2; 3])

let drop_last_test _ =
  assert_equal [1; 2; 3] (Sandbox.drop_last [1; 2; 3; 4])

let member_test _ =
  assert (Sandbox.member 2 [1; 2]);
  refute (Sandbox.member 3 [1; 2])

let make_set_test _ =
  assert_equal [1; 2; 3] (Sandbox.make_set [1; 1; 2; 3; 3])

(*
 * Chapter 6
 *)

let calm_test _ =
  assert_equal ['H'; 'e'; 'l'; 'p'; '.'; ' '; 'F'; 'i'; 'r'; 'e'; '.'] (Sandbox.calm ['H'; 'e'; 'l'; 'p'; '!'; ' '; 'F'; 'i'; 'r'; 'e'; '!'])

let calm_with_map_test _ =
  assert_equal ['H'; 'e'; 'l'; 'p'; '.'; ' '; 'F'; 'i'; 'r'; 'e'; '.'] (Sandbox.map_calm ['H'; 'e'; 'l'; 'p'; '!'; ' '; 'F'; 'i'; 'r'; 'e'; '!'])

let suite =
  "suite" >::: [
    "list length" >:: length_list_test;
    "get even elements of a list" >:: evens_list_test;
    "count occurences of true in a list" >:: count_true_test;
    "reverse list" >:: rev_test;
    "palindromize list" >:: palindromize_list_test;
    "drop last item of a list" >:: drop_last_test;
    "member" >:: member_test;
    "make a set from a list" >:: make_set_test;
    "keep calm and ocalm on" >:: calm_test;
    "calm with map" >:: calm_with_map_test;
  ]

let () = run_test_tt_main suite
