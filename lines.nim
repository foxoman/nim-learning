## lines.nim
## Text file lines counter
## Author: Sergio Lima
## Created at: May, 28 2022
## How to compile:
##   nim c --verbosity:0 --hints:off -d:danger -d:lto --opt:speed lines.nim
## How to run
##   ./lines text_file.txt

import memfiles, os

if paramCount() < 1:
  echo "File name not found."
  quit(-1)

var i: int
for line in memSlices(memFiles.open(paramStr(1))):
  inc(i)

echo i