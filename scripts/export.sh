#!/usr/bin/env nix-shell
#! nix-shell -p zstd -p nix -p coreutils -p findutils -i bash

set -xeuo pipefail

input=$1
output=$2

tmpf=$(mktemp /tmp/out-XXXXXXX)

nix-store -qR "$input" |  \
    tee /dev/stderr | \
    xargs nix-store --export | \
    zstd -9v > "$tmpf"
mv -v "$tmpf" "$output".zst