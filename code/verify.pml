///////////////////////
//СЕМАФОР/////////////////////////////////////////////////////////////////////
///////////////////////

//ИНИЦИАЛИЗАЦИЯ СЕМАФОРА
int semaphoreThreshold = 4;

//СОЗДАНИЕ ТАЛОНОВ
int semaphoreTokens = semaphoreThreshold;

//СОЗДАНИЯ СЧЕТЧИКА ПРОЦЕССОВ В КРИТ. СЕКЦИИ
int processesInsideCriticalSection = 0;

//СЧЕТЧИК РАБОТЫ
int workCounter = 0;

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

inline criticalSectionBlock(processId) {
    atomic {
        processesInsideCriticalSection = processesInsideCriticalSection + 1;
    }
    wasInCriticalSection[processId] = 1;
    atomic {
        processesInsideCriticalSection = processesInsideCriticalSection - 1;
    }
}

inline useResource(processId) {
    takeSemaphoreToken();
    criticalSectionBlock(processId);
    releaseSemaphoreToken();
}
///////////////////////
//ОХРАНЯЕМЫЙ РЕСУРС///////////////////////////////////////////////////////////////////////////////
///////////////////////

//ИНДЕКС ПРОЦЕССОВ
int globalProcIndex = 0;

//ШАБЛОН ПРОЦЕССА
active [5] proctype main(){

    printf("%d\n", _pid);
    useResource(_pid);
};


////////////////////////////////////////////////////////////////////////
//ФОРМУЛЫ ЗАДАНИЯ
////////////////////////////////////////////////////////////////////////

ltl task1
{ ([] (semaphoreThreshold == 1))
    &&
  ([] (processesInsideCriticalSection <= 1))
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
    ((semaphoreThreshold == 3) -> [] !(processesInsideCriticalSection <= 3))
}

////////////////////////////////////////////////////////////////////////

ltl task4
{
    ((semaphoreThreshold == 4) -> ([] !(processesInsideCriticalSection > 3)))
}
