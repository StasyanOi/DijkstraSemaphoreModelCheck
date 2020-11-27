///////////////////////
//СЕМАФОР/////////////////////////////////////////////////////////////////////
///////////////////////

//ИНИЦИАЛИЗАЦИЯ СЕМАФОРА
int semaphoreThreshold = 3;

//СОЗДАНИЕ ТАЛОНОВ
int semaphoreTokens = semaphoreThreshold;

//ФЛАГИ ДЛЯ ПРОЦЕССОВ ВНУТРИ КРИТ. СЕКЦИИ
int wasInCriticalSection [5];

inline takeSemaphoreToken() {
    atomic {
            (semaphoreTokens > 0);
            semaphoreTokens = semaphoreTokens - 1;
            printf("Acquire token. Tokens left %d\n", semaphoreTokens);
        }
}

inline releaseSemaphoreToken() {
    atomic {
            semaphoreTokens = semaphoreTokens + 1;
            printf("Release token. Tokens left %d\n", semaphoreTokens);
        }
}

///////////////////////
//СЕМАФОР/////////////////////////////////////////////////////////////////////
///////////////////////

///////////////////////
//ОХРАНЯЕМЫЙ РЕСУРС///////////////////////////////////////////////////////////////////////////////
///////////////////////

inline doWork() {
    local int count = 100;
    do
    	:: (count > 0) -> count--
    	:: (count == 0) -> break
    od
}

inline criticalSectionBlock(processId) {
    doWork();
    wasInCriticalSection[processId] = 1;
}

inline useResource(processId) {
    takeSemaphoreToken();
    criticalSectionBlock(processId);
    releaseSemaphoreToken();
}
///////////////////////
//ОХРАНЯЕМЫЙ РЕСУРС///////////////////////////////////////////////////////////////////////////////
///////////////////////

//ШАБЛОН ПРОЦЕССА
active [5] proctype main(){

    printf("%d\n", _pid);
    useResource(_pid);
    end: printf("end\n");
};



////////////////////////////////////////////////////////////////////////
//ФОРМУЛЫ ЗАДАНИЯ
////////////////////////////////////////////////////////////////////////

ltl task1
{ ([] (semaphoreThreshold == 1))
    &&
  ([] (semaphoreTokens <= 1))
}

////////////////////////////////////////////////////////////////////////

ltl task2
{ (<>(wasInCriticalSection[0] == 1 &&
     wasInCriticalSection[1] == 1 &&
     wasInCriticalSection[2] == 1 &&
     wasInCriticalSection[3] == 1 &&
     wasInCriticalSection[4] == 1))
}

////////////////////////////////////////////////////////////////////////

ltl task3
{
    ([] (semaphoreTokens >= 0)) && ([] (semaphoreTokens <= 3))
}

////////////////////////////////////////////////////////////////////////

ltl task4
{
   (<> (semaphoreTokens == -1))
}


