clear
cat ./code/processes.pml ./code/check.pml > ./code/verify.pml
spin -a ./code/verify.pml
gcc -o pan pan.c
spin -search -ltl $1 ./code/verify.pml