//ПРОВЕРКА ПРИ ИНИЦИАЛИЗАЦИИ СЕМАФОРА - 1.
///////////////////////////////////////////////////////////////
//ВСЕГДА ИНИЦИАЛИЗАЦИЯ СЕМАФОРА РАВНА 1.
//ВСЕГДА НЕ БОЛЕЕ 1-ГО ПРОЦЕССА В ЗАКРЫТОЙ СЕКЦИИ.
//В КОНЕЧНОМ СЧЁТЕ ВСЕ ПРОЦЕССЫ ПОБЫВАЮТ В ЗАКРЫТОЙ СЕКЦИИ
///////////////////////////////////////////////////////////////
ltl semaphoreInit1
{ ([] (semaphoreThreshold == 1))
    &&
  ([] (processesInsideCriticalSection <= 1))
    &&
  (<>(wasInCriticalSection[0] &&
   wasInCriticalSection[1] &&
   wasInCriticalSection[2] &&
   wasInCriticalSection[3] &&
   wasInCriticalSection[4]))
  };

////////////////////////////////////////////////////////////////////////

ltl semaphoreInit2
{ ([] (semaphoreThreshold == 2))
    &&
  ([] (processesInsideCriticalSection <= 2))
    &&
  (<>(wasInCriticalSection[0] &&
   wasInCriticalSection[1] &&
   wasInCriticalSection[2] &&
   wasInCriticalSection[3] &&
   wasInCriticalSection[4]))
  };

////////////////////////////////////////////////////////////////////////

ltl semaphoreInit3
{ ([] (semaphoreThreshold == 3))
    &&
  ([] (processesInsideCriticalSection <= 3))
    &&
  (<>(wasInCriticalSection[0] &&
   wasInCriticalSection[1] &&
   wasInCriticalSection[2] &&
   wasInCriticalSection[3] &&
   wasInCriticalSection[4]))
  };

////////////////////////////////////////////////////////////////////////

ltl semaphoreInit4
{ ([] (semaphoreThreshold == 4))
    &&
  ([] (processesInsideCriticalSection <= 4))
    &&
  (<>(wasInCriticalSection[0] &&
   wasInCriticalSection[1] &&
   wasInCriticalSection[2] &&
   wasInCriticalSection[3] &&
   wasInCriticalSection[4]))
  };

////////////////////////////////////////////////////////////////////////

ltl semaphoreInit5
{ ([] (semaphoreThreshold == 5))
    &&
  ([] (processesInsideCriticalSection <= 5))
    &&
  (<>(wasInCriticalSection[0] &&
   wasInCriticalSection[1] &&
   wasInCriticalSection[2] &&
   wasInCriticalSection[3] &&
   wasInCriticalSection[4]))
  };

////////////////////////////////////////////////////////////////////////

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
{ (<>(wasInCriticalSection[0] &&
     wasInCriticalSection[1] &&
     wasInCriticalSection[2] &&
     wasInCriticalSection[3] &&
     wasInCriticalSection[4]))
}

////////////////////////////////////////////////////////////////////////

ltl task3
{
    (<>(processesInsideCriticalSection == 3))
}

////////////////////////////////////////////////////////////////////////

ltl task4
{
    (<>(processesInsideCriticalSection == 4))
}
//условие сейчас не проходит