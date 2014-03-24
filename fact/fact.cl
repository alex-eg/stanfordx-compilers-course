class Main inherits A2I {
  prompt : String <- "Input number\n";
  main(): Object { {
       (new IO)@IO.out_string(prompt);
       let input: String <-(new IO).in_string(),
           num: Int <- a2i(input),
           fact: Int <- ifact(num),
           output: String <- i2a(fact).concat("\n")
       in
           (new IO).out_string(output);
    } };

    fact(i: Int): Int {
        if (i = 0) then 1
        else i * fact(i - 1)
        fi
    };

    ifact(i: Int): Int {
      let fact: Int <- 1 in {
        while (not (i = 0)) loop {
                fact <- fact * i;
                i <- i - 1;
            } pool;
            fact;
        }
    };
};