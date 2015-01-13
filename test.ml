open OUnit2

(* Helpers *)

let refute expression = assert (not expression)

let push _list element = _list @ [element]

(*
 * Chapter 4
 *)

let suite = []

let length_list_test _ =
  assert_equal 3 (Sandbox.length [1; 2; 3])

let suite = push suite ("length test" >:: length_list_test)

let evens_list_test _ =
  assert_equal [4; 4] (Sandbox.evens [2; 4; 2; 4; 2])

let suite = push suite ("evens list test" >:: evens_list_test)

let count_true_test _ =
  assert_equal 2 (Sandbox.count_true [true; false; true])

let suite = push suite ("count true test" >:: count_true_test)

let rev_test _ =
  assert_equal [3; 2; 1] (Sandbox.rev [1; 2; 3])

let suite = push suite ("rev test" >:: rev_test)

let palindromize_list_test _ =
  assert_equal [1; 2; 3; 2; 1] (Sandbox.palindromize [1; 2; 3])

let suite = push suite ("palindromize test" >:: palindromize_list_test)

let drop_last_test _ =
  assert_equal [1; 2; 3] (Sandbox.drop_last [1; 2; 3; 4])

let suite = push suite ("drop last test" >:: drop_last_test)

let member_test _ =
  assert (Sandbox.member 2 [1; 2]);
  refute (Sandbox.member 3 [1; 2])

let suite = push suite ("member test" >:: member_test)

let make_set_test _ =
  assert_equal [1; 2; 3] (Sandbox.make_set [1; 1; 2; 3; 3])

let suite = push suite ("make set test" >:: make_set_test)

(*
 * Chapter 6
 *)

let test_calm f _ =
  assert_equal ['H'; 'e'; 'l'; 'p'; '.'; ' '; 'F'; 'i'; 'r'; 'e'; '.'] (f ['H'; 'e'; 'l'; 'p'; '!'; ' '; 'F'; 'i'; 'r'; 'e'; '!'])

let suite = push suite ("test calm" >:: (test_calm Sandbox.calm))
let suite = push suite ("test map calm" >:: (test_calm Sandbox.map_calm))

let () = run_test_tt_main ("suite" >::: suite)
