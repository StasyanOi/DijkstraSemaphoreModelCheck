clear
cat ./code/processes.pml ./code/check.pml > ./code/verify.pml
spin -a ./code/verify.pml
gcc -o pan pan.c
./pan -a -N p1
rm ./code/verify.pml
rm pan
rm pan.*
rm *.tmp