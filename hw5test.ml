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