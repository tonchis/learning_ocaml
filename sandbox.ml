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
let rec rev _list =
  match _list with
    [] -> []
  | a::tail -> rev tail @ [a]
;;

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

