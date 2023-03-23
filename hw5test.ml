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
|> TwoListDeque.remove_last
|> TwoListDeque.add_last 1
|> TwoListDeque.remove_first
|> TwoListDeque.add_last 1
|> TwoListDeque.remove_last
;;

(** peek testing suite *)
let test_peek_first_deque123 = (1 = TwoListDeque.peek_first deque123) in
assert(test_peek_first_deque123 = true)
;;
let test_peek_last_deque123 = (3 = TwoListDeque.peek_last deque123) in
assert(test_peek_last_deque123 = true)
;;
let test_peek_first_deque321 = (3 = TwoListDeque.peek_first deque321) in
assert(test_peek_first_deque321 = true)
;;
let test_peek_last_deque321 = (1 = TwoListDeque.peek_last deque321) in
assert(test_peek_last_deque321 = true)
;;
let test_peek_first_deque312 = (3 = TwoListDeque.peek_first deque312) in
assert(test_peek_first_deque312 = true)
;;
let test_peek_last_deque312 = (2 = TwoListDeque.peek_last deque312) in
assert(test_peek_last_deque312 = true)
;;
let test_peek_first_dequeMammaMia = (["Mamma"; "Mia"; "Here"; "We"; "Go"; "Again"] = TwoListDeque.peek_first dequeMammaMia) in
assert(test_peek_first_dequeMammaMia = true)
;;
let test_peek_last_dequeMammaMia = (["Mamma"; "Mia"; "Here"; "We"; "Go"; "Again"] = TwoListDeque.peek_last dequeMammaMia) in
assert(test_peek_last_dequeMammaMia = true)
;;

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
let test_size_dequePlusMinus = (0 = TwoListDeque.size dequePlusMinus) in
assert (test_size_dequePlusMinus = true)
;;
let test_size_dequeMammaMia = (1 = TwoListDeque.size dequeMammaMia) in
assert (test_size_dequeMammaMia = true)
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

(** testing for filter map and fold *)
let test_filter_deque123 = ([2] = (TwoListDeque.filter (fun i -> i = 2) deque123 |> TwoListDeque.to_list)) in
assert (test_filter_deque123 = true)
;;
let test_filter_dequecab = (["c"; "b"] = (TwoListDeque.filter (fun i -> i != "a") dequecab |> TwoListDeque.to_list)) in
assert (test_filter_dequecab = true)
;;
let test_map_deque123 = ([2; 4; 6] = (TwoListDeque.map (fun i -> i * 2) deque123 |> TwoListDeque.to_list)) in
assert (test_map_deque123 = true)
;;
let test_fold_first_dequecab = ("cab" = (TwoListDeque.fold_from_first_forward (^) "" dequecab)) in
assert (test_fold_first_dequecab = true)
;;
let test_fold_last_dequecab = ("cab" = (TwoListDeque.fold_from_last_backward (^) dequecab "")) in
assert (test_fold_last_dequecab = true)
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