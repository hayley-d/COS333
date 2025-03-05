let rec add_pos_even_val lst =
    match lst with
    | [] -> 0
    | head :: tail -> if head > 0 && head mod 2 = 0 then x + add_pos_even_val tail
        else add_pos_even_val tail

let get_every_third_elem lst =
    let rec helper lst idx =
        match lst with
        | [] -> []
        | head :: tail -> if idx mod 3 = 2 then head :: helper tail (idx +1)
            else helper tail (idx + 1)
        in
        helper lst 0

let () =
    print_int (add_pos_even_val []); print_newline ();
    print_int (add_pos_even_val [3; 4; 0; -8; 6]); print_newline ();
    let print_list lst =
        print_string "[";
        List.iter (fun x -> print_string (x ^ "; ")) lst;
        print_string "]\n";
    in
    print_list (get_every_third_elem []);
    print_list (get_every_third_elem ["a"; "b"; "c"; "d"; "e"; "f"; "g"]);
