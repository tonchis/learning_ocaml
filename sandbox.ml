(*
 * Chapter 4
 *)

let rec _length _list accum =
  match _list with
    [] -> accum
  | _::tail -> _length tail (accum + 1)
;;

let length _list = _length _list 0;;

length [1; 2; 3; 4]

(* Question 1 *)

let rec evens _list =
  match _list with
    _::a::tail -> a :: evens tail
  | _ -> []
;;

(* Question 2 *)

let rec tail_rec_count_true _list accum =
  match _list with
    [] -> accum
  | true::tail -> tail_rec_count_true tail (accum + 1)
  | false::tail -> tail_rec_count_true tail accum
;;

let count_true _list = tail_rec_count_true _list 0;;

(* Question 3 *)

let rec tail_rec_rev _list accum =
  match _list with
    [] -> accum
  | a::_tail -> tail_rec_rev _tail (a::accum)
;;

let rev _list = tail_rec_rev _list [];;

let tail _list =
  match _list with
    [] -> []
  | a::tail -> tail
;;

let palindromize _list =
  match _list with
    [] -> []
  | a::_tail -> _list @ let l = a::_tail in tail (rev l)
;;

(* Question 4 *)

let rec drop_last _list =
  match _list with
    [] -> []
  | [a] -> []
  | a::b::_tail ->
      let l = a::b::_tail in rev (tail (rev l))
;;

(* Question 5 *)

let rec tail_rec_member element _list found =
  match found with
    true -> true
  | false ->
      match _list with
        [] -> false
      | a::_tail -> tail_rec_member element _tail (a = element)
;;

let member element _list = tail_rec_member element _list false;;
