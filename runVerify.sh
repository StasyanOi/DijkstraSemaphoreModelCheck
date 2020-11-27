spin -a ./code/processes.pml
gcc -o pan pan.c
./pan -a -N $1
mv ./processes.pml.trail ./code/processes.pml.trail
rm ./code/processes.pml.trail
spin -t -p ./code/processes.pml
