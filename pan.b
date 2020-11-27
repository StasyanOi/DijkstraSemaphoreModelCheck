	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM task4 */
;
		;
		;
		
	case 4: // STATE 3
		goto R999;
;
		;
		;
		
	case 6: // STATE 16
		goto R999;

	case 7: // STATE 25
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM task3 */
;
		
	case 8: // STATE 1
		goto R999;

	case 9: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM task2 */
;
		;
		
	case 11: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM task1 */
;
		
	case 12: // STATE 1
		goto R999;

	case 13: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC main */
;
		;
		
	case 15: // STATE 3
		;
		now.semaphoreTokens = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 7
		;
		((P0 *)_this)->_1_1_2_2_count = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 9
		;
		((P0 *)_this)->_1_1_2_2_count = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 10
		;
	/* 0 */	((P0 *)_this)->_1_1_2_2_count = trpt->bup.oval;
		;
		;
		goto R999;

	case 19: // STATE 16
		;
		now.wasInCriticalSection[ Index(((P0 *)_this)->_pid, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 18
		;
		now.semaphoreTokens = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 22: // STATE 24
		;
		p_restor(II);
		;
		;
		goto R999;
	}

