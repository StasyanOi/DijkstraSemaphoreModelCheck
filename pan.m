#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM task4 */
	case 3: // STATE 1 - _spin_nvr.tmp:28 - [(!((semaphoreTokens==-(1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!( !((now.semaphoreTokens== -(1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - _spin_nvr.tmp:29 - [(!((semaphoreTokens<=3)))] (8:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][3] = 1;
		if (!( !((now.semaphoreTokens<=3))))
			continue;
		/* merge: assert(!(!((semaphoreTokens<=3))))(0, 4, 8) */
		reached[4][4] = 1;
		spin_assert( !( !((now.semaphoreTokens<=3))), " !( !((semaphoreTokens<=3)))", II, tt, t);
		/* merge: .(goto)(0, 9, 8) */
		reached[4][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 5: // STATE 11 - _spin_nvr.tmp:34 - [(!((semaphoreTokens==-(1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][11] = 1;
		if (!( !((now.semaphoreTokens== -(1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 16 - _spin_nvr.tmp:38 - [(!((semaphoreTokens<=3)))] (21:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported16 = 0;
			if (verbose && !reported16)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported16 = 0;
			if (verbose && !reported16)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][16] = 1;
		if (!( !((now.semaphoreTokens<=3))))
			continue;
		/* merge: assert(!(!((semaphoreTokens<=3))))(0, 17, 21) */
		reached[4][17] = 1;
		spin_assert( !( !((now.semaphoreTokens<=3))), " !( !((semaphoreTokens<=3)))", II, tt, t);
		/* merge: .(goto)(0, 22, 21) */
		reached[4][22] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 7: // STATE 25 - _spin_nvr.tmp:43 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported25 = 0;
			if (verbose && !reported25)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported25 = 0;
			if (verbose && !reported25)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][25] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM task3 */
	case 8: // STATE 1 - _spin_nvr.tmp:19 - [((!((semaphoreTokens!=-(1)))||!((semaphoreTokens<=3))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!(( !((now.semaphoreTokens!= -(1)))|| !((now.semaphoreTokens<=3)))))
			continue;
		/* merge: assert(!((!((semaphoreTokens!=-(1)))||!((semaphoreTokens<=3)))))(0, 2, 6) */
		reached[3][2] = 1;
		spin_assert( !(( !((now.semaphoreTokens!= -(1)))|| !((now.semaphoreTokens<=3)))), " !(( !((semaphoreTokens!= -(1)))|| !((semaphoreTokens<=3))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[3][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 9: // STATE 10 - _spin_nvr.tmp:24 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM task2 */
	case 10: // STATE 1 - _spin_nvr.tmp:13 - [(!((((((wasInCriticalSection[0]==1)&&(wasInCriticalSection[1]==1))&&(wasInCriticalSection[2]==1))&&(wasInCriticalSection[3]==1))&&(wasInCriticalSection[4]==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][1] = 1;
		if (!( !((((((now.wasInCriticalSection[0]==1)&&(now.wasInCriticalSection[1]==1))&&(now.wasInCriticalSection[2]==1))&&(now.wasInCriticalSection[3]==1))&&(now.wasInCriticalSection[4]==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 6 - _spin_nvr.tmp:15 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM task1 */
	case 12: // STATE 1 - _spin_nvr.tmp:3 - [((!((semaphoreThreshold==1))||!((semaphoreTokens<=1))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][1] = 1;
		if (!(( !((now.semaphoreThreshold==1))|| !((now.semaphoreTokens<=1)))))
			continue;
		/* merge: assert(!((!((semaphoreThreshold==1))||!((semaphoreTokens<=1)))))(0, 2, 6) */
		reached[1][2] = 1;
		spin_assert( !(( !((now.semaphoreThreshold==1))|| !((now.semaphoreTokens<=1)))), " !(( !((semaphoreThreshold==1))|| !((semaphoreTokens<=1))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[1][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 13: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC main */
	case 14: // STATE 1 - ./code/processes.pml:62 - [printf('%d\\n',_pid)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		Printf("%d\n", ((int)((P0 *)_this)->_pid));
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 2 - ./code/processes.pml:16 - [((semaphoreTokens>0))] (17:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.semaphoreTokens>0)))
			continue;
		/* merge: semaphoreTokens = (semaphoreTokens-1)(17, 3, 17) */
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.semaphoreTokens;
		now.semaphoreTokens = (now.semaphoreTokens-1);
#ifdef VAR_RANGES
		logval("semaphoreTokens", now.semaphoreTokens);
#endif
		;
		/* merge: printf('Acquire token. Tokens left %d\\n',semaphoreTokens)(17, 4, 17) */
		reached[0][4] = 1;
		Printf("Acquire token. Tokens left %d\n", now.semaphoreTokens);
		_m = 3; goto P999; /* 2 */
	case 16: // STATE 7 - ./code/processes.pml:39 - [count = 100] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_1_1_2_2_count;
		((P0 *)_this)->_1_1_2_2_count = 100;
#ifdef VAR_RANGES
		logval("main:count", ((P0 *)_this)->_1_1_2_2_count);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 8 - ./code/processes.pml:40 - [((count>0))] (12:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!((((P0 *)_this)->_1_1_2_2_count>0)))
			continue;
		/* merge: count = (count-1)(0, 9, 12) */
		reached[0][9] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_1_1_2_2_count;
		((P0 *)_this)->_1_1_2_2_count = (((P0 *)_this)->_1_1_2_2_count-1);
#ifdef VAR_RANGES
		logval("main:count", ((P0 *)_this)->_1_1_2_2_count);
#endif
		;
		/* merge: .(goto)(0, 13, 12) */
		reached[0][13] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 18: // STATE 10 - ./code/processes.pml:41 - [((count==0))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((((P0 *)_this)->_1_1_2_2_count==0)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _1_1_2_2_count */  (trpt+1)->bup.oval = ((P0 *)_this)->_1_1_2_2_count;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_1_1_2_2_count = 0;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 16 - ./code/processes.pml:47 - [wasInCriticalSection[_pid] = 1] (0:0:1 - 3)
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = now.wasInCriticalSection[ Index(((int)((P0 *)_this)->_pid), 5) ];
		now.wasInCriticalSection[ Index(((P0 *)_this)->_pid, 5) ] = 1;
#ifdef VAR_RANGES
		logval("wasInCriticalSection[_pid]", now.wasInCriticalSection[ Index(((int)((P0 *)_this)->_pid), 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 18 - ./code/processes.pml:24 - [semaphoreTokens = (semaphoreTokens+1)] (0:23:1 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = now.semaphoreTokens;
		now.semaphoreTokens = (now.semaphoreTokens+1);
#ifdef VAR_RANGES
		logval("semaphoreTokens", now.semaphoreTokens);
#endif
		;
		/* merge: printf('Release token. Tokens left %d\\n',semaphoreTokens)(23, 19, 23) */
		reached[0][19] = 1;
		Printf("Release token. Tokens left %d\n", now.semaphoreTokens);
		_m = 3; goto P999; /* 1 */
	case 21: // STATE 23 - ./code/processes.pml:64 - [printf('end\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		Printf("end\n");
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 24 - ./code/processes.pml:65 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

