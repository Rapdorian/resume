#! /bin/bash

sed 's/^#/##/' < resume.md |
    sed 's/^---//' |
    sed 's/ \\hfill /, /' |
    sed 's/^name: \(.*\)$/# \1   /' |
    sed 's/^phone: \(.*\)$/\1  /' |
    sed 's/^email: \(.*\)$/\1  /' |
    sed 's/^github: \(.*\)$/\1\n\n---/' > README.md
