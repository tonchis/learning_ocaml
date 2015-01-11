open OUnit2;;

(*
 * Chapter 4
 *)

let length_list_test _ =
  assert_equal 3 (Sandbox.length [1; 2; 3])
;;

let evens_list_test _ =
  assert_equal [4; 4] (Sandbox.evens [2; 4; 2; 4; 2])
;;

let count_true_test _ =
  assert_equal 2 (Sandbox.count_true [true; false; true])
;;

let rev_test _ =
  assert_equal [3; 2; 1] (Sandbox.rev [1; 2; 3])
;;

let palindromize_list_test _ =
  assert_equal [1; 2; 3; 2; 1] (Sandbox.palindromize [1; 2; 3])
;;

let suite =
  "Chapter 4 suite" >::: [
    "list length" >:: length_list_test;
    "get even elements of a list" >:: evens_list_test;
    "count occurences of true in a list" >:: count_true_test;
    "reverse list" >:: rev_test;
    "palindromize list" >:: palindromize_list_test
  ]
;;

let () = run_test_tt_main suite;;
