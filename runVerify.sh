clear
cat ./code/processes.pml ./code/check.pml > ./code/verify.pml
spin -a ./code/verify.pml
gcc -o pan pan.c
./pan -f -a -N $1
mv ./verify.pml.trail ./code/verify.pml.trail
spin -t -p ./code/verify.pml
