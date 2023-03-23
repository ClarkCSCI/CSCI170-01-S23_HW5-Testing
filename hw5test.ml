open Deque

(* test empty *)
let at_empty = TwoListDeque.empty;;
assert(0=(TwoListDeque.size at_empty));;

(* test is_empty *)
assert(true=TwoListDeque.is_empty at_empty);;

(* test add_first and add_last *)
let at_add_first_last = TwoListDeque.add_first 2 TwoListDeque.empty |> TwoListDeque.add_first 1 |> TwoListDeque.add_last 3 |> TwoListDeque.add_last 4;;
assert([1; 2; 3; 4]=TwoListDeque.to_list at_add_first_last);;
assert(4=TwoListDeque.size at_add_first_last);;

(* test peek_first and peek_last and remove_first and remove_last *)

let at_peek1 = TwoListDeque.peek_first at_add_first_last;;
assert(at_peek1 = 1);;
let at_peek2 = TwoListDeque.peek_last at_add_first_last;;
assert(at_peek2 = 4);;

let at_peak_case1 = TwoListDeque.add_last 2 TwoListDeque.empty |> TwoListDeque.add_first 1 |> TwoListDeque.add_last 20 |> TwoListDeque.add_first 7;;
assert([7;1;2;20]=TwoListDeque.to_list at_peak_case1);;
assert(4=TwoListDeque.size at_peak_case1);;
assert(7=TwoListDeque.peek_first at_peak_case1);;
assert(20=TwoListDeque.peek_last at_peak_case1);;

let at_remove_last_1 = TwoListDeque.remove_last at_peak_case1;;
assert([7;1;2]=TwoListDeque.to_list at_remove_last_1);;
assert(3=TwoListDeque.size at_remove_last_1);;
assert(7=TwoListDeque.peek_first at_remove_last_1);;
assert(2=TwoListDeque.peek_last at_remove_last_1);;

let at_remove_last_2 = TwoListDeque.remove_last at_remove_last_1;;
assert([7;1]=TwoListDeque.to_list at_remove_last_2);;
assert(2=TwoListDeque.size at_remove_last_2);;
assert(7=TwoListDeque.peek_first at_remove_last_2);;
assert(1=TwoListDeque.peek_last at_remove_last_2);;

let at_peak_case2 = TwoListDeque.add_last 800 at_peak_case1;;
assert([7;1;2;20;800]=TwoListDeque.to_list at_peak_case2);;
assert(5=TwoListDeque.size at_peak_case2);;
assert(7=TwoListDeque.peek_first at_peak_case2);;
assert(800=TwoListDeque.peek_last at_peak_case2);;

let at_remove_last_3 = TwoListDeque.remove_last at_peak_case2;;
assert([7;1;2;20]=TwoListDeque.to_list at_remove_last_3);;
assert(4=TwoListDeque.size at_remove_last_3);;
assert(7=TwoListDeque.peek_first at_remove_last_3);;
assert(20=TwoListDeque.peek_last at_remove_last_3);;

let at_peak_case3 = TwoListDeque.add_first 1 TwoListDeque.empty |> TwoListDeque.add_last 2 |> TwoListDeque.add_last 3 |> TwoListDeque.add_last 4;;
assert([1;2;3;4]=TwoListDeque.to_list at_peak_case3);;
assert(4=TwoListDeque.size at_peak_case3);;
assert(1=TwoListDeque.peek_first at_peak_case3);;
assert(4=TwoListDeque.peek_last at_peak_case3);;

let at_remove_first_1 = TwoListDeque.remove_first at_peak_case3;;
assert([2;3;4]=TwoListDeque.to_list at_remove_first_1);;
assert(3=TwoListDeque.size at_remove_first_1);;
assert(2=TwoListDeque.peek_first at_remove_first_1);;
assert(4=TwoListDeque.peek_last at_remove_first_1);;

let at_peak_case4 = TwoListDeque.add_first 1 TwoListDeque.empty |> TwoListDeque.add_last 2;;
assert([1;2]=TwoListDeque.to_list at_peak_case4);;
assert(2=TwoListDeque.size at_peak_case4);;
assert(1=TwoListDeque.peek_first at_peak_case4);;
assert(2=TwoListDeque.peek_last at_peak_case4);;

let at_remove_first_2 = TwoListDeque.remove_first at_peak_case4;;
assert([2]=TwoListDeque.to_list at_remove_first_2);;
assert(1=TwoListDeque.size at_remove_first_2);;
assert(2=TwoListDeque.peek_first at_remove_first_2);;
assert(2=TwoListDeque.peek_last at_remove_first_2);;

let at_peak_case4 = TwoListDeque.add_first 2 TwoListDeque.empty |> TwoListDeque.add_first 1 |> TwoListDeque.add_last 4;;
assert([1;2;4]=TwoListDeque.to_list at_peak_case4);;
assert(3=TwoListDeque.size at_peak_case4);;
assert(1=TwoListDeque.peek_first at_peak_case4);;
assert(4=TwoListDeque.peek_last at_peak_case4);;

let at_remove_first_3 = TwoListDeque.remove_first at_peak_case4;;
assert([2;4]=TwoListDeque.to_list at_remove_first_3);;
assert(2=TwoListDeque.size at_remove_first_3);;
assert(2=TwoListDeque.peek_first at_remove_first_3);;
assert(4=TwoListDeque.peek_last at_remove_first_3);;

let at_remove_first_4 = TwoListDeque.remove_first at_remove_first_3;;
assert([4]=TwoListDeque.to_list at_remove_first_4);;
assert(1=TwoListDeque.size at_remove_first_4);;
assert(4=TwoListDeque.peek_first at_remove_first_4);;
assert(4=TwoListDeque.peek_last at_remove_first_4);;

let at_peak_case5 = TwoListDeque.add_first 2 TwoListDeque.empty |> TwoListDeque.add_first 1 |> TwoListDeque.add_first 4;;
assert([4;1;2]=TwoListDeque.to_list at_peak_case5);;
assert(3=TwoListDeque.size at_peak_case5);;
assert(4=TwoListDeque.peek_first at_peak_case5);;
assert(2=TwoListDeque.peek_last at_peak_case5);;

let at_remove_last_4 = TwoListDeque.remove_last at_peak_case5;;
assert([4;1]=TwoListDeque.to_list at_remove_last_4);;
assert(2=TwoListDeque.size at_remove_last_4);;
assert(4=TwoListDeque.peek_first at_remove_last_4);;
assert(1=TwoListDeque.peek_last at_remove_last_4);;

let at_remove_last_5 = TwoListDeque.remove_last at_remove_last_4;;
assert([4]=TwoListDeque.to_list at_remove_last_5);;
assert(1=TwoListDeque.size at_remove_last_5);;
assert(4=TwoListDeque.peek_first at_remove_last_5);;
assert(4=TwoListDeque.peek_last at_remove_last_5);;

let at_peak_case6 = TwoListDeque.add_first "2" TwoListDeque.empty |> TwoListDeque.add_first "1" |> TwoListDeque.add_first "4" |> TwoListDeque.add_first "10";;
assert(["10";"4";"1";"2"]=TwoListDeque.to_list at_peak_case6);;
assert(4 =TwoListDeque.size at_peak_case6);;
assert("10"=TwoListDeque.peek_first at_peak_case6);;
assert("2"=TwoListDeque.peek_last at_peak_case6);;

let at_remove_last_6 = TwoListDeque.remove_last at_peak_case6;;
assert(["10";"4";"1"]=TwoListDeque.to_list at_remove_last_6);;
assert(3=TwoListDeque.size at_remove_last_6);;
assert("10"=TwoListDeque.peek_first at_remove_last_6);;
assert("1"=TwoListDeque.peek_last at_remove_last_6);;

(*test case ex 1*)
let at_example_1 = TwoListDeque.add_first 1 TwoListDeque.empty;;
assert([1]=TwoListDeque.to_list at_example_1);;
assert(1 =TwoListDeque.size at_example_1);;
assert(1=TwoListDeque.peek_first at_example_1);;
assert(1=TwoListDeque.peek_last at_example_1);;

let at_example_1_removeF = TwoListDeque.remove_first at_example_1;;
assert([]=TwoListDeque.to_list at_example_1_removeF);;
assert(0 =TwoListDeque.size at_example_1_removeF);;

let at_example_1_removeL = TwoListDeque.remove_last at_example_1;;
assert([]=TwoListDeque.to_list at_example_1_removeL);;
assert(0 =TwoListDeque.size at_example_1_removeL);;

(* test case ex 2*)
let at_example_2 = TwoListDeque.add_first 1 TwoListDeque.empty |> TwoListDeque.add_last 2;;
assert([1;2]=TwoListDeque.to_list at_example_2);;
assert(2 =TwoListDeque.size at_example_2);;
assert(1=TwoListDeque.peek_first at_example_2);;
assert(2=TwoListDeque.peek_last at_example_2);;

let at_example_2_removeF = TwoListDeque.remove_first at_example_2;;
assert([2]=TwoListDeque.to_list at_example_2_removeF);;
assert(1=TwoListDeque.size at_example_2_removeF);;
assert(2=TwoListDeque.peek_first at_example_2_removeF);;
assert(2=TwoListDeque.peek_last at_example_2_removeF);;

let at_example_2_removeL = TwoListDeque.remove_last at_example_2;;
assert([1]=TwoListDeque.to_list at_example_2_removeL);;
assert(1=TwoListDeque.size at_example_2_removeL);;
assert(1=TwoListDeque.peek_first at_example_2_removeL);;
assert(1=TwoListDeque.peek_last at_example_2_removeL);;

let at_example_2_removeFtoempty1 = TwoListDeque.remove_first at_example_2_removeF;;
assert([]=TwoListDeque.to_list at_example_2_removeFtoempty1);;
assert(0=TwoListDeque.size at_example_2_removeFtoempty1);;
let at_example_2_removeLtoempty1 = TwoListDeque.remove_last at_example_2_removeF;;
assert([]=TwoListDeque.to_list at_example_2_removeLtoempty1);;
assert(0=TwoListDeque.size at_example_2_removeLtoempty1);;

let at_example_2_removeFtoempty2 = TwoListDeque.remove_first at_example_2_removeL;;
assert([]=TwoListDeque.to_list at_example_2_removeFtoempty2);;
assert(0=TwoListDeque.size at_example_2_removeFtoempty2);;
let at_example_2_removeLtoempty2 = TwoListDeque.remove_last at_example_2_removeL;;
assert([]=TwoListDeque.to_list at_example_2_removeLtoempty2);;
assert(0=TwoListDeque.size at_example_2_removeLtoempty2);;

(* test case ex 3*)
let at_example_3 = TwoListDeque.add_first 1 TwoListDeque.empty |> TwoListDeque.add_last 2 |> TwoListDeque.add_last 3;;
assert([1;2;3]=TwoListDeque.to_list at_example_3);;
assert(3 =TwoListDeque.size at_example_3);;
assert(1=TwoListDeque.peek_first at_example_3);;
assert(3=TwoListDeque.peek_last at_example_3);;

let at_example_3_removeF = TwoListDeque.remove_first at_example_3;;
assert([2;3]=TwoListDeque.to_list at_example_3_removeF);;
assert(2=TwoListDeque.size at_example_3_removeF);;
assert(2=TwoListDeque.peek_first at_example_3_removeF);;
assert(3=TwoListDeque.peek_last at_example_3_removeF);;

let at_example_3_removeL = TwoListDeque.remove_last at_example_3;;
assert([1;2]=TwoListDeque.to_list at_example_3_removeL);;
assert(2=TwoListDeque.size at_example_3_removeL);;
assert(1=TwoListDeque.peek_first at_example_3_removeL);;
assert(2=TwoListDeque.peek_last at_example_3_removeL);;

(* test case ex 4*)
let at_example_4 = TwoListDeque.add_first 1 TwoListDeque.empty |> TwoListDeque.add_last 2 |> TwoListDeque.add_last 3 |> TwoListDeque.add_last 4;;
assert([1;2;3;4]=TwoListDeque.to_list at_example_4);;
assert(4 =TwoListDeque.size at_example_4);;
assert(1=TwoListDeque.peek_first at_example_4);;
assert(4=TwoListDeque.peek_last at_example_4);;

let at_example_4_removeF = TwoListDeque.remove_first at_example_4;;
assert([2;3;4]=TwoListDeque.to_list at_example_4_removeF);;
assert(3=TwoListDeque.size at_example_4_removeF);;
assert(2=TwoListDeque.peek_first at_example_4_removeF);;
assert(4=TwoListDeque.peek_last at_example_4_removeF);;

let at_example_4_removeL = TwoListDeque.remove_last at_example_4;;
assert([1;2;3]=TwoListDeque.to_list at_example_4_removeL);;
assert(3=TwoListDeque.size at_example_4_removeL);;
assert(1=TwoListDeque.peek_first at_example_4_removeL);;
assert(3=TwoListDeque.peek_last at_example_4_removeL);;

(* test case ex 5*)
let at_example_5 = TwoListDeque.add_first 2 TwoListDeque.empty |> TwoListDeque.add_last 3 |> TwoListDeque.add_last 4 |> TwoListDeque.add_first 1;;
assert([1;2;3;4]=TwoListDeque.to_list at_example_5);;
assert(4 =TwoListDeque.size at_example_5);;
assert(1=TwoListDeque.peek_first at_example_5);;
assert(4=TwoListDeque.peek_last at_example_5);;

let at_example_5_removeF = TwoListDeque.remove_first at_example_5;;
assert([2;3;4]=TwoListDeque.to_list at_example_5_removeF);;
assert(3=TwoListDeque.size at_example_5_removeF);;
assert(2=TwoListDeque.peek_first at_example_5_removeF);;
assert(4=TwoListDeque.peek_last at_example_5_removeF);;

let at_example_5_removeL = TwoListDeque.remove_last at_example_5;;
assert([1;2;3]=TwoListDeque.to_list at_example_5_removeL);;
assert(3=TwoListDeque.size at_example_5_removeL);;
assert(1=TwoListDeque.peek_first at_example_5_removeL);;
assert(3=TwoListDeque.peek_last at_example_5_removeL);;

(* test case ex 6*)
let at_example_6 = TwoListDeque.add_first 3 TwoListDeque.empty |> TwoListDeque.add_first 2 |> TwoListDeque.add_first 1;;
assert([1;2;3]=TwoListDeque.to_list at_example_6);;
assert(3=TwoListDeque.size at_example_6);;
assert(1=TwoListDeque.peek_first at_example_6);;
assert(3=TwoListDeque.peek_last at_example_6);;

let at_example_6_removeF = TwoListDeque.remove_first at_example_6;;
assert([2;3]=TwoListDeque.to_list at_example_6_removeF);;
assert(2=TwoListDeque.size at_example_6_removeF);;
assert(2=TwoListDeque.peek_first at_example_6_removeF);;
assert(3=TwoListDeque.peek_last at_example_6_removeF);;

let at_example_6_removeL = TwoListDeque.remove_last at_example_6;;
assert([1;2]=TwoListDeque.to_list at_example_6_removeL);;
assert(2=TwoListDeque.size at_example_6_removeL);;
assert(1=TwoListDeque.peek_first at_example_6_removeL);;
assert(2=TwoListDeque.peek_last at_example_6_removeL);;

(* test case ex 7*)
let at_example_7 = TwoListDeque.add_first 3 TwoListDeque.empty |> TwoListDeque.add_first 2 |> TwoListDeque.add_first 1 |> TwoListDeque.add_last 4;;
assert([1;2;3;4]=TwoListDeque.to_list at_example_7);;
assert(4=TwoListDeque.size at_example_7);;
assert(1=TwoListDeque.peek_first at_example_7);;
assert(4=TwoListDeque.peek_last at_example_7);;

let at_example_7_removeF = TwoListDeque.remove_first at_example_7;;
assert([2;3;4]=TwoListDeque.to_list at_example_7_removeF);;
assert(3=TwoListDeque.size at_example_7_removeF);;
assert(2=TwoListDeque.peek_first at_example_7_removeF);;
assert(4=TwoListDeque.peek_last at_example_7_removeF);;

let at_example_7_removeL = TwoListDeque.remove_last at_example_7;;
assert([1;2;3]=TwoListDeque.to_list at_example_7_removeL);;
assert(3=TwoListDeque.size at_example_7_removeL);;
assert(1=TwoListDeque.peek_first at_example_7_removeL);;
assert(3=TwoListDeque.peek_last at_example_7_removeL);;

let at_example_8 = TwoListDeque.add_first 1 TwoListDeque.empty |> TwoListDeque.add_last 10 |> TwoListDeque.add_last 20;;
assert([1;10;20]=TwoListDeque.to_list at_example_8);;
assert(3=TwoListDeque.size at_example_8);;
assert(1=TwoListDeque.peek_first at_example_8);;
assert(20=TwoListDeque.peek_last at_example_8);;

let at_example_8_foldFF = TwoListDeque.fold_from_first_forward (-) 0 at_example_8;;
assert((-31)=at_example_8_foldFF);;
let at_example_8_foldLB = TwoListDeque.fold_from_last_backward (-) at_example_8 0;;
assert((11)=at_example_8_foldLB);;


