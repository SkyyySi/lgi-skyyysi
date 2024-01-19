#!/usr/bin/env bash

cd "$(dirname "$0")" || exit 1

stylua --indent-type=Tabs --quote-style=ForceDouble --call-parentheses=NoSingleTable --collapse-simple-statement=Never --column-width=999999 -- ./**/*.lua

clang-format --verbose -i -- ./**/*.{c,h}
