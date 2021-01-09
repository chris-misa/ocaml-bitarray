let printf = Printf.printf

let () =
    let b = Bitarray.create 1_000L in
    printf "len: %Ld\n" (Bitarray.length b);
    Bitarray.set_bit b 500L;
    printf "should be set: %b\n" (Bitarray.get_bit b 500L);
    printf "should be 1: %Ld\n" (Bitarray.num_bits_set b);
    Bitarray.toggle_all b;
    printf "num_bits_set should be 999: %Ld\n" (Bitarray.num_bits_set b);

    let ba = Bitarray.create 1_000L in
    for _ = 0 to 500_000 do
        Bitarray.set_bit ba 5L;
    done;
    printf "5 %b\n" (Bitarray.get_bit ba 5L);

    match Bitarray.find_first_set_bit b with
    | Some fsb -> printf "find_first_set_bit should be 0: %Ld\n" fsb
    | None -> printf "find_first_set_bit uh oh none set\n";

