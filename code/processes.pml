byte semaphoreThreshold = 1;
byte insideCriticalSection = 0;

active proctype main1(){
loop:
    (semaphoreThreshold > 0);
    semaphoreThreshold = semaphoreThreshold - 1;
    insideCriticalSection = insideCriticalSection + 1;
    insideCriticalSection = insideCriticalSection - 1;
    semaphoreThreshold = semaphoreThreshold +1;
    goto loop;
};

active proctype main2(){
loop:
    (semaphoreThreshold > 0);
    semaphoreThreshold = semaphoreThreshold - 1;
    insideCriticalSection = insideCriticalSection + 1;
    insideCriticalSection = insideCriticalSection - 1;
    semaphoreThreshold =semaphoreThreshold + 1;
    goto loop;
};

active proctype main3(){
loop:
    (semaphoreThreshold > 0);
    semaphoreThreshold = semaphoreThreshold - 1;
    insideCriticalSection = insideCriticalSection + 1;
    insideCriticalSection = insideCriticalSection - 1;
    semaphoreThreshold = semaphoreThreshold + 1;
    goto loop;
};

active proctype main4(){
loop:
    (semaphoreThreshold > 0);
    semaphoreThreshold = semaphoreThreshold - 1;
    insideCriticalSection = insideCriticalSection + 1;
    insideCriticalSection = insideCriticalSection - 1;
    semaphoreThreshold = semaphoreThreshold + 1;
    goto loop;
};

active proctype main5(){
loop:
    (semaphoreThreshold > 0);
    semaphoreThreshold = semaphoreThreshold - 1;
    insideCriticalSection = insideCriticalSection + 1;
    insideCriticalSection = insideCriticalSection - 1;
    semaphoreThreshold =semaphoreThreshold + 1;
    goto loop;
};

atomic{
    semaphoreThreshold = semaphoreThreshold + 1;
    semaphoreThreshold = semaphoreThreshold - 1;
    insideCriticalSection = insideCriticalSection + 1;
    insideCriticalSection = insideCriticalSection - 1;
}




