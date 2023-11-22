## sample.bc47-dune-reproduce

This is a sample project that reproduce a regression introduced
by Dune 3.11.0 that might have been caused by
https://github.com/ocaml/dune/pull/8361 (suggested by @emillon at
[a thread in #dune channel on the OCaml Discord](https://discord.com/channels/436568060288172042/1171772953281712138/1171814676854755358)).

The verified affected systems are MacBook Pro (Apple M1 Pro)
and MacBook Air (Apple M2) with macOS 14.1.1.

It seems that the problem cannot be reproduced on
MacBook Pro 15-inch, 2017 with Intel Core i7 2.9 GHz and macOS 13.6.1.

The confirmed affected versions of Dune is 3.11.0 and 3.11.1.
This problem can be reproduced with OCaml 4.14.0 ~ 5.1.0 and camomile.2.0.0.
The problem goes way after downgrading Dune to 3.10.0.

To reproduce the problem, run the `reproduce.sh` script.
On affected systems and Dune versions, it will result the
(`hello.exe` compiled from `hello.ml`) program being killed by
the OS with an exit code 137 and Bash reporting `Killed: 9`.

Running the compiled executable resulted under `_build/default`
directly will output `hi there` with an exit code 0
even on affected setups.
