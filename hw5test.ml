open Deque

(** testing Deques *)
let empty_deque = TwoListDeque.empty;;
let deque123 = TwoListDeque.empty 
|> TwoListDeque.add_last 1 
|> TwoListDeque.add_last 2
|> TwoListDeque.add_last 3
;; 
let deque321 = TwoListDeque.empty
|> TwoListDeque.add_first 1
|> TwoListDeque.add_first 2
|> TwoListDeque.add_first 3
;;
let deque312 = TwoListDeque.empty
|> TwoListDeque.add_last 1
|> TwoListDeque.add_last 2
|> TwoListDeque.add_first 3
;;
let dequecab = TwoListDeque.empty
|> TwoListDeque.add_first "a"
|> TwoListDeque.add_last "b"
|> TwoListDeque.add_first "c"
;;
let dequeABBA = TwoListDeque.empty
|> TwoListDeque.add_first "B"
|> TwoListDeque.add_last "B"
|> TwoListDeque.add_first "A"
|> TwoListDeque.add_last "A"
;;
let dequeMammaMia = TwoListDeque.empty
|> TwoListDeque.add_first ["Mamma"; "Mia"; "Here"; "We"; "Go"; "Again"]
;;
(** deque manipulations *)
let dequePlusMinus = TwoListDeque.empty
|> TwoListDeque.add_first 1
|> TwoListDeque.remove_first
|> TwoListDeque.add_last 1
|> TwoListDeque.remove_last
|> TwoListDeque.add_first 1
|> TwoListDeque.remove_first
|> TwoListDeque.add_first 1
|> TwoListDeque.remove_first
|> TwoListDeque.add_last 1
|> TwoListDeque.remove_last
;;

(** peek testing suite *)

(** size testing suite *)
let test_size_empty = (0 = TwoListDeque.size empty_deque) in
assert (test_size_empty = true)
;;
let test_size_deque123 = (3 = TwoListDeque.size deque123) in
assert (test_size_deque123 = true)
;;
let test_size_deque321 = (3 = TwoListDeque.size deque321) in
assert (test_size_deque321 = true)
;;
let test_size_deque312 = (3 = TwoListDeque.size deque312) in
assert (test_size_deque312 = true)
;;
let test_size_dequecab = (3 = TwoListDeque.size dequecab) in
assert (test_size_dequecab = true)
;;
let test_size_dequeABBA = (4 = TwoListDeque.size dequeABBA) in
assert (test_size_dequeABBA = true)
;;

(** deque to_list testing suite *)
let test_list_empty = ([] = TwoListDeque.to_list empty_deque) in
assert (test_list_empty = true)
;;
let test_list_deque123 = ([1; 2; 3] = TwoListDeque.to_list deque123) in
assert (test_list_deque123 = true)
;;
let test_list_deque321 = ([3; 2; 1] = TwoListDeque.to_list deque321) in
assert (test_list_deque321 = true)
;;
let test_list_deque312 = ([3; 1; 2] = TwoListDeque.to_list deque312) in
assert (test_list_deque312 = true)
;;
let test_list_dequecab = (["c"; "a"; "b"] = TwoListDeque.to_list dequecab) in
assert (test_list_dequecab = true)
;;
let test_list_dequeABBA = (["A"; "B"; "B"; "A"] = TwoListDeque.to_list dequeABBA) in
assert (test_list_dequeABBA = true)
;;

(* ! lev's tests ! *)
(* ? testing empty/is_empty *)
let test = TwoListDeque.empty

let t1 = assert(TwoListDeque.is_empty test = true)

let test = TwoListDeque.add_first 3 test

let t2 = assert(TwoListDeque.is_empty test = false)

(* ? testing add/peek *)
let t3 = assert(TwoListDeque.peek_first test = 3)

let t4 = assert(TwoListDeque.peek_last test = 3)

let test = TwoListDeque.add_last 4 test

let t5 = assert(TwoListDeque.peek_first test = 3)

let t6 = assert(TwoListDeque.peek_last test = 4)
(* ! lev's test end ! *)