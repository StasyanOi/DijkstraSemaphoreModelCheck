	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM task5 */
;
		;
		
	case 4: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM task4 */
;
		
	case 5: // STATE 1
		goto R999;

	case 6: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM task3 */
;
		
	case 7: // STATE 1
		goto R999;
;
		;
		;
		
	case 9: // STATE 9
		goto R999;

	case 10: // STATE 18
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM task2 */
;
		;
		
	case 12: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM task1 */
;
		
	case 13: // STATE 1
		goto R999;

	case 14: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC main */
;
		;
		
	case 16: // STATE 3
		;
		now.semaphoreTokens = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 7
		;
		now.processesInsideCriticalSection = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 9
		;
		now.wasInCriticalSection[ Index(((P0 *)_this)->_pid, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 10
		;
		now.processesInsideCriticalSection = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 13
		;
		now.semaphoreTokens = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 22: // STATE 19
		;
		p_restor(II);
		;
		;
		goto R999;
	}

