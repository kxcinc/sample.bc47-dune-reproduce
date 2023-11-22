#!/bin/bash

set -xe

# opam switch create . 5.1.0
eval $(opam env --switch=. --set-switch)

opam install -y dune.3.11.0 camomile.2.0.0
dune build

# file identical to _build/default/hello.exe, which runs file
# if copied manually (e.g. using the cp command), it runs without problem
./hello.exe # Killed: 9 (with exit code 137)
