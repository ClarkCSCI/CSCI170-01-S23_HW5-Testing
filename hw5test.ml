(* Dillon's Tests *)

let q1 = TwoListDeque.empty;;
assert(0=(TwoListDeque.size q1));;
assert(TwoListDeque.is_empty q1);;

(* add non empty TwoList Deque *)
let qdillon = TwoListDeque.add_first 1 (TwoListDeque.empty);;

let q_first_removed = TwoListDeque.remove_first qdillon;;

assert(1=(TwoListDeque.size qdillon));;

assert(0=(TwoListDeque.size q_first_removed));;

let qdillon2 = TwoListDeque.add_first 2 (qdillon);;

assert(2=(TwoListDeque.size qdillon));;

assert(2=(TwoListDeque.peek_first qdillon));;

(* Dillon's Tests *)


let ah_hi_bye_check = TwoListDeque.(empty |> add_first "hi" |> add_first "somewhere in between" |> add_first "bye");;
assert("bye" = TwoListDeque.peek_first x);;


open deque;; 
let q1 = TwoListDeque.empty;;
assert(0=(TwoListDeque.size q1));;

(***
Added a test case to test the add_first function of TwoListDeque
***)
let q2 = TwoListDeque.add_first 1 q1;;
assert([1] = TwoListDeque.remove_first q2);;

(***
Added a test case to test the add_last function of TwoListDeque
***)
let q3 = TwoListDeque.add_last 1 q2;;
assert([1] = TwoListDeque.remove_last q3);;
(***
add_first test case
***)
let q4 = TwoListDeque.add_first [1;2;3] q3;;
assert(1 = TwoListDeque.peek_first q4);; 
assert(3 = TwoListDeque.peek_last q4);;
(***
add_last test case
***)
let q5 = TwoListDeque.add_last [4;5;6] q3;;
assert(6 = TwoListDeque.size q5);;
assert(6 = TwoListDeque.peek_last q5);;
(***
remove_first test case
***)
let q6 = TwoListDeque.remove_first q5;;
assert([2;3;4;5;6] = TwoListDeque.remove_first q6);;

(***
map test case
***)
let q7 = TwoLIstDeque.map (fun x -> x+1) q6;;
assert([3] = TwoListDeque.remove_first q7);;

let q10 = TwoListDeque.map (fun x -> x+1) q7;;
assert([4] = TwoListDeque.remove_first q10);;

(*** 
filter test cases
***)
let q8 = TwoListDeque.filter (fun x -> x mod 2 = 0) q6;;
assert([2;4;6] = TwoListDeque.remove_first q8);;

let q9 = TwoListDeque.filter (fun x -> x mod 2 = 1) q6;;
assert([1;3;5] = TwoListDeque.remove_first q9);;


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
TwoListDeque.add_first "no" jqueue;;
TwoListDeque.add_last "hi" jqueue;;
assert(2 = (TwoListDeque.size jqueue));;
assert("hi" = (TwoListDeque.peek_last jqueue))
assert("no" = (TwoListDeque.peek_first jqueue))
TwoListDeque.remove_first jqueue
assert(1 = (TwoListDeque.size jqueue));;
assert("hi" = (TwoListDeque.peek_last jqueue))
assert("hi" = (TwoListDeque.peek_first jqueue))
(* jonahs test end*)


let empty = TwoListDeque.empty;;
let test_add_first = TwoListDeque.add_first 3 empty;;
assert((TwoListDeque.peek_first test_add_first)=3);;

let test_add_last = TwoListDeque.add_last 4 test_add_first;;
assert((TwoListDeque.peek_first test_add_last)=3);;
assert((TwoListDeque.peek_last test_add_last)=4);;
assert((TwoListDeque.to_list test_add_last)=[3;4])

let test_remove_first = TwoListDeque.remove_first test_add_last;;
assert((TwoListDeque.peek_first)=4);;

let test_remove_last = TwoListDeque.remove_last test_remove_first;;
assert((TwoListDeque.is_empty test_remove_last)=true)


assert(TwoListDeque.is_empty q1);;



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
