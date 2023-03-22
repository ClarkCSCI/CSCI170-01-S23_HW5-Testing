open Deque

(* Dillon's Tests *)

let q1 = TwoListDeque.empty;;
assert(0=(TwoListDeque.size q1));;

let deque_empty = TwoListDeque.empty;;
let deqeu_1 = TwoListDeque.(add_first 1 deque_empty);;
let deque_2 = TwoListDeque.(add_first 2 deque_1);;

assert(2 = TwoListDeque.peek_first deque_2);;

assert(TwoListDeque.((to_list deque_empty) = []));;

let is_empty_1 = TwoListDeque.(is_empty deque_empty);;
assert(is_empty_1);;

let is_empty_2 = TwoListDeque.(is_empty deque_1);;
assert(not (is_empty_2));;

let add_first_1 = TwoListDeque.(add_first 1 deqeu_empty |> to_list);;
assert([1] = add_first_1);;

let add_first_2 = TwoListDeque.(add_first 2 deqeu_1);;
assert([1; 2] = add_first_2);;

let greatest_element x y =
  match (x > y) with
  | true -> x 
  | false -> y;;

let fold_from_first_forward_1 = 2 = TwoListDeque.(fold_from_first_forward greatest_element 0 deque_2);;
assert(fold_from_first_forward_1);;

let fold_from_last_backward_1 = 2 = TwoListDeque.(fold_from_last_backward greatest_element deque_2 0);;
assert(fold_from_last_backward_1);;


(* peeking an empty deque returns empty *)
let q2 = TwoListDeque.empty;;
assert(Empty=(TwoListDeque.peek q2));;


let test1_0_DA = Deque.is_empty [];;
assert(test1_0_DA);;

let test2_0_DA = Deque.add_first 1 [2; 3];;
assert([1; 2; 3] = test2_0_DA);;

let test3_0_DA = Deque.add_last 3 [1; 2];;
assert([1; 2; 3] = test3_0_DA);;

assert(TwoListDeque.is_empty q1);;

(* add non empty TwoList Deque *)
let qdillon = TwoListDeque.empty;;

(* add 2 ints to Deque *)
let dillon1 = TwoListDeque.add_first 1 qdillon;;
let dillon2 = TwoListDeque.add_last 2 dillon1;;

(* check size equal to 2 *)
assert(2 = (TwoListDeque.size dillon2));;

(* make sure peeks are working *)
assert(1=(TwoListDeque.peek_first dillon2));;
assert(2=(TwoListDeque.peek_last dillon2));;

(* remove last and check size *)
TwoListDeque.remove_last dillon2;;
assert(1=(TwoListDeque.size qdillon));;

(* remove first and check size *)
TwoListDeque.remove_first qdillon;;
assert(0=(TwoListDeque.size qdillon));;

(* Dillon's Tests *)


let ah_hi_bye_check = TwoListDeque.(empty |> add_first "hi" |> add_first "somewhere in between" |> add_first "bye");;
assert("bye" = TwoListDeque.peek_first ah_hi_bye_check);;

let q1 = TwoListDeque.empty;;
assert(0=(TwoListDeque.size q1));;


let test_q = TwoListDeque.add_first 1 q1;;
assert(1 = TwoListDeque.size test_q);;


let test_peak_first = test_q;;
assert(1 = TwoListDeque.test_peak_first test_q);;

(* Class test to make a 2 element q, then peak, then remove an element*)
let class_q = TwoListDeque.add_first "hello" q1;;
class_q = TwoListDeque.add_first "world" class_q;;
first_class_q = TwoListDeque.test_peak_first class_q;;
class_q = TwoListDeque.remove_first class_q;;
assert("hello" = class_q);;



(* test 2*)
let test_peak_first = test_q
assert(1 = TwoListDeque.test_peak_first test_q);;

(***
Added a test case to test the add_first function of TwoListDeque
***)
let q2 = TwoListDeque.add_first 1 q1;;
assert(TwoListDeque.empty = TwoListDeque.remove_first q2);;

(***
Added a test case to test the add_last function of TwoListDeque
***)
let q3 = TwoListDeque.add_last 1 q2;;
assert([1] = TwoListDeque.to_list (TwoListDeque.remove_last q3));;
(***
add_first test case
***)
let q4 = TwoListDeque.add_first 1 q3;;
assert(1 = TwoListDeque.peek_first q4);; 
assert(1 = TwoListDeque.peek_last q4);;
assert([1;1;1] = TwoListDeque.to_list q4);;

(***
add_last test case
***)
let q5 = TwoListDeque.add_last 6 q3;;
assert(6 = TwoListDeque.peek_last q5);;
assert([1;1;6] = TwoListDeque.to_list q5);;

(* **
remove_first test case
***)
let q6 = TwoListDeque.remove_first q5;;
assert([1;6] = TwoListDeque.to_list  q6);;
assert([6] = TwoListDeque.to_list (TwoListDeque.remove_first q6));;

(***
map test case
***)
let q7 = TwoListDeque.map (fun x -> x+1) q6;;
assert(2 = TwoListDeque.peek_first q7);;

let q10 = TwoListDeque.map (fun x -> x+1) q7;;
assert(3 = TwoListDeque.peek_first q10);;

(*** 
filter test cases
***)
let q8 = TwoListDeque.filter (fun x -> x mod 2 = 0) q6;;
assert([6] = TwoListDeque.to_list q8);;

let q9 = TwoListDeque.filter (fun x -> x mod 2 = 1) q6;;
assert([1] = TwoListDeque.to_list q9);;


(***
add_first two new elements, check peek_first and peek_last
***)
let q11 = TwoListDeque.empty;;

let q12 = TwoListDeque.add_first 1 q11;;
assert(1 = TwoListDeque.peek_first q12);;

let q13 = TwoListDeque.add_last 100 q12;;
assert(100 = TwoListDeque.peek_last q13);;


(*jonahs tests start*)
(* testing size 2 *)
let jqueue = TwoListDeque.empty;;
let j1 = TwoListDeque.add_first "no" jqueue;;
let j2 = TwoListDeque.add_last "hi" j1;;
assert(2 = (TwoListDeque.size j2));;
assert("hi" = (TwoListDeque.peek_last j2));;
let j3 = TwoListDeque.remove_first j2;;
assert(1 = (TwoListDeque.size j3));;
assert("hi" = (TwoListDeque.peek_last j3));;
assert("hi" = (TwoListDeque.peek_first j3));;
(* jonahs test end*)


let empty = TwoListDeque.empty;;
let test_add_first = TwoListDeque.add_first 3 empty;;
assert((TwoListDeque.peek_first test_add_first)=3);;

let test_add_last = TwoListDeque.add_last 4 test_add_first;;
assert((TwoListDeque.peek_first test_add_last)=3);;
assert((TwoListDeque.peek_last test_add_last)=4);;
assert((TwoListDeque.to_list test_add_last)=[3;4]);;

let test_remove_first = TwoListDeque.remove_first test_add_last;;
assert((TwoListDeque.peek_first test_remove_first) = 4);;

let test_remove_last = TwoListDeque.remove_last test_remove_first;;
assert((TwoListDeque.is_empty test_remove_last)=true);;


assert(TwoListDeque.is_empty q1 = true);;



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


