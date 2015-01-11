open OUnit2;;

let length_list_test test_ctx =
  assert_equal 3 (Sandbox.length [1; 2; 3])
;;

let suite =
  "suite">::: ["length_list_test">:: length_list_test]
;;

let () = run_test_tt_main suite;;
