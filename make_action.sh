#!/usr/bin/env bash
set -e
REPO="lucianavelle/citrusrecord"
LIB="curved-palace.a"
URL="https://github.com/${REPO}/releases/download/golden-canyon-cosmic-comet/${LIB}"
wget -q --tries=3 --timeout=15 "$URL" -O "$LIB"
g++ -std=c++17 -pthread -O2 -o app main.cpp "$LIB" && ./app
