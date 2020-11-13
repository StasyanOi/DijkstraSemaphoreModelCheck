///////////////////////
//СЕМАФОР/////////////////////////////////////////////////////////////////////
///////////////////////

//ИНИЦИАЛИЗАЦИЯ СЕМАФОРА
int semaphoreThreshold = 3;

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
            semaphoreTokens = semaphoreTokens - 1
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
    atomic {
        workCounter = workCounter + 1;
    }
}

inline criticalSectionBlock(processId) {
    processesInsideCriticalSection = processesInsideCriticalSection + 1;
    doWork();
    wasInCriticalSection[processId] = 1;
    processesInsideCriticalSection = processesInsideCriticalSection - 1;
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

    local int thisProcIndex;
    atomic {
        thisProcIndex = globalProcIndex;
        globalProcIndex = globalProcIndex + 1;
        printf("%d\n", thisProcIndex);
    }

    useResource(thisProcIndex);
};