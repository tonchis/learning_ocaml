(*
 * Chapter 4
 *)

let rec _length _list accum =
  match _list with
  | [] -> accum
  | _::tail -> _length tail (accum + 1)

let length _list = _length _list 0

(* Question 1 *)

let rec evens _list =
  match _list with
  | _::a::tail -> a :: evens tail
  | _ -> []

(* Question 2 *)

let rec tail_rec_count_true _list accum =
  match _list with
  | [] -> accum
  | true::tail -> tail_rec_count_true tail (accum + 1)
  | false::tail -> tail_rec_count_true tail accum

let count_true _list = tail_rec_count_true _list 0

(* Question 3 *)

let rec tail_rec_rev _list accum =
  match _list with
  | [] -> accum
  | a::_tail -> tail_rec_rev _tail (a::accum)

let rev _list = tail_rec_rev _list []
let tail _list =
  match _list with
  | [] -> []
  | a::tail -> tail

let palindromize _list =
  match _list with
  | [] -> []
  | a::_tail -> _list @ let l = a::_tail in tail (rev l)

(* Question 4 *)

let rec tail_rec_drop_last _list accum =
  match _list with
  | [] -> accum
  | [a] -> accum
  | a::b::_tail -> tail_rec_drop_last (b::_tail) (accum @ [a])

let rec drop_last _list = tail_rec_drop_last _list []

(* Question 5 *)

let rec tail_rec_member element _list found =
  match found with
  | true -> true
  | false ->
      match _list with
      | [] -> false
      | a::_tail -> tail_rec_member element _tail (a = element)

let member element _list = tail_rec_member element _list false

(* Question 6 *)

let rec tail_rec_make_set _list accum =
  match _list with
  | [] -> accum
  | a::_tail ->
      tail_rec_make_set _tail (if member a accum then accum else accum @ [a])

let make_set _list = tail_rec_make_set _list []

(*
 * Chapter 6
 *)

(* Question 1 *)

let rec calm _list =
  match _list with
  | [] -> []
  | a::_tail -> (if a = '!' then '.' else a)::calm _tail

let rec tail_rec_map f _list accum =
  match _list with
  | [] -> accum
  | a::_tail -> tail_rec_map f _tail (accum @ [f a])

let map f _list = tail_rec_map f _list []

let map_calm _list =
  map (fun a -> if a = '!' then '.' else a) _list

