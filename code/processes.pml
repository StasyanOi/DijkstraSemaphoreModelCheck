int semaphoreThreshold = 1;
int insideCriticalSection = 0;

proctype main(int procNum){
    atomic {
        (semaphoreThreshold > 0);
        semaphoreThreshold = semaphoreThreshold - 1
        printf("proc %d in\n", procNum);
    }
    insideCriticalSection = insideCriticalSection + 1;
    insideCriticalSection = insideCriticalSection - 1;
    atomic {
        semaphoreThreshold = semaphoreThreshold + 1;
        printf("proc %d out\n", procNum);
    }
};

init {
    local int counter = 100;
    do
    :: (counter != 0) -> run main(counter); counter--;
    :: (counter == 0) -> break
    od
}