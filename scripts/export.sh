#!/usr/bin/env nix-shell
#! nix-shell -p xz -p nix -p findutils -i bash

set -xeuo pipefail

input=$1
output=$2

nix-store -qR "$input" |  \
    tee /dev/stderr | \
    xargs nix-store --export | \
    xz -v > "$output"