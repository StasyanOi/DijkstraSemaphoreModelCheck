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

		 /* CLAIM task5 */
	case 3: // STATE 1 - _spin_nvr.tmp:43 - [(!((processesInsideCriticalSection>9)))] (0:0:0 - 1)
		
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
		reached[5][1] = 1;
		if (!( !((now.processesInsideCriticalSection>9))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 6 - _spin_nvr.tmp:45 - [-end-] (0:0:0 - 1)
		
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
		reached[5][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM task4 */
	case 5: // STATE 1 - _spin_nvr.tmp:33 - [(!((!((semaphoreThreshold==3))||!((processesInsideCriticalSection==4)))))] (6:0:0 - 1)
		
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
		if (!( !(( !((now.semaphoreThreshold==3))|| !((now.processesInsideCriticalSection==4))))))
			continue;
		/* merge: assert(!(!((!((semaphoreThreshold==3))||!((processesInsideCriticalSection==4))))))(0, 2, 6) */
		reached[4][2] = 1;
		spin_assert( !( !(( !((now.semaphoreThreshold==3))|| !((now.processesInsideCriticalSection==4))))), " !( !(( !((semaphoreThreshold==3))|| !((processesInsideCriticalSection==4)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[4][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 6: // STATE 10 - _spin_nvr.tmp:38 - [-end-] (0:0:0 - 1)
		
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
		reached[4][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM task3 */
	case 7: // STATE 1 - _spin_nvr.tmp:19 - [((!(!((semaphoreThreshold==3)))&&!((processesInsideCriticalSection<=3))))] (6:0:0 - 1)
		
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
		if (!(( !( !((now.semaphoreThreshold==3)))&& !((now.processesInsideCriticalSection<=3)))))
			continue;
		/* merge: assert(!((!(!((semaphoreThreshold==3)))&&!((processesInsideCriticalSection<=3)))))(0, 2, 6) */
		reached[3][2] = 1;
		spin_assert( !(( !( !((now.semaphoreThreshold==3)))&& !((now.processesInsideCriticalSection<=3)))), " !(( !( !((semaphoreThreshold==3)))&& !((processesInsideCriticalSection<=3))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[3][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 8: // STATE 4 - _spin_nvr.tmp:20 - [(!(!((semaphoreThreshold==3))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported4 = 0;
			if (verbose && !reported4)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported4 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported4 = 0;
			if (verbose && !reported4)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported4 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][4] = 1;
		if (!( !( !((now.semaphoreThreshold==3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 9 - _spin_nvr.tmp:24 - [(!((processesInsideCriticalSection<=3)))] (14:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][9] = 1;
		if (!( !((now.processesInsideCriticalSection<=3))))
			continue;
		/* merge: assert(!(!((processesInsideCriticalSection<=3))))(0, 10, 14) */
		reached[3][10] = 1;
		spin_assert( !( !((now.processesInsideCriticalSection<=3))), " !( !((processesInsideCriticalSection<=3)))", II, tt, t);
		/* merge: .(goto)(0, 15, 14) */
		reached[3][15] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 10: // STATE 18 - _spin_nvr.tmp:29 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][18] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM task2 */
	case 11: // STATE 1 - _spin_nvr.tmp:13 - [(!((((((wasInCriticalSection[0]==1)&&(wasInCriticalSection[1]==1))&&(wasInCriticalSection[2]==1))&&(wasInCriticalSection[3]==1))&&(wasInCriticalSection[4]==1))))] (0:0:0 - 1)
		
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
	case 12: // STATE 6 - _spin_nvr.tmp:15 - [-end-] (0:0:0 - 1)
		
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
	case 13: // STATE 1 - _spin_nvr.tmp:3 - [((!((processesInsideCriticalSection<=1))||!((semaphoreThreshold==1))))] (6:0:0 - 1)
		
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
		if (!(( !((now.processesInsideCriticalSection<=1))|| !((now.semaphoreThreshold==1)))))
			continue;
		/* merge: assert(!((!((processesInsideCriticalSection<=1))||!((semaphoreThreshold==1)))))(0, 2, 6) */
		reached[1][2] = 1;
		spin_assert( !(( !((now.processesInsideCriticalSection<=1))|| !((now.semaphoreThreshold==1)))), " !(( !((processesInsideCriticalSection<=1))|| !((semaphoreThreshold==1))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[1][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 14: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
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
	case 15: // STATE 1 - ./code/verify.pml:68 - [printf('%d\\n',_pid)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		Printf("%d\n", ((int)((P0 *)_this)->_pid));
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 2 - ./code/verify.pml:22 - [((semaphoreTokens>0))] (12:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.semaphoreTokens>0)))
			continue;
		/* merge: semaphoreTokens = (semaphoreTokens-1)(12, 3, 12) */
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.semaphoreTokens;
		now.semaphoreTokens = (now.semaphoreTokens-1);
#ifdef VAR_RANGES
		logval("semaphoreTokens", now.semaphoreTokens);
#endif
		;
		/* merge: printf('Acquire token. Tokens left %d\\n',semaphoreTokens)(12, 4, 12) */
		reached[0][4] = 1;
		Printf("Acquire token. Tokens left %d\n", now.semaphoreTokens);
		_m = 3; goto P999; /* 2 */
	case 17: // STATE 7 - ./code/verify.pml:45 - [processesInsideCriticalSection = (processesInsideCriticalSection+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = now.processesInsideCriticalSection;
		now.processesInsideCriticalSection = (now.processesInsideCriticalSection+1);
#ifdef VAR_RANGES
		logval("processesInsideCriticalSection", now.processesInsideCriticalSection);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 9 - ./code/verify.pml:47 - [wasInCriticalSection[_pid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = now.wasInCriticalSection[ Index(((int)((P0 *)_this)->_pid), 5) ];
		now.wasInCriticalSection[ Index(((P0 *)_this)->_pid, 5) ] = 1;
#ifdef VAR_RANGES
		logval("wasInCriticalSection[_pid]", now.wasInCriticalSection[ Index(((int)((P0 *)_this)->_pid), 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 10 - ./code/verify.pml:49 - [processesInsideCriticalSection = (processesInsideCriticalSection-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = now.processesInsideCriticalSection;
		now.processesInsideCriticalSection = (now.processesInsideCriticalSection-1);
#ifdef VAR_RANGES
		logval("processesInsideCriticalSection", now.processesInsideCriticalSection);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 13 - ./code/verify.pml:30 - [semaphoreTokens = (semaphoreTokens+1)] (0:18:1 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = now.semaphoreTokens;
		now.semaphoreTokens = (now.semaphoreTokens+1);
#ifdef VAR_RANGES
		logval("semaphoreTokens", now.semaphoreTokens);
#endif
		;
		/* merge: printf('Release token. Tokens left %d\\n',semaphoreTokens)(18, 14, 18) */
		reached[0][14] = 1;
		Printf("Release token. Tokens left %d\n", now.semaphoreTokens);
		_m = 3; goto P999; /* 1 */
	case 21: // STATE 18 - ./code/verify.pml:70 - [printf('end\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		Printf("end\n");
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 19 - ./code/verify.pml:71 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][19] = 1;
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

