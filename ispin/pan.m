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

		 /* PROC :init: */
	case 3: // STATE 1 - test.pml:461 - [isLanding = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[6][1] = 1;
		(trpt+1)->bup.oval = ((int)((P6 *)_this)->_26_11_isLanding);
		((P6 *)_this)->_26_11_isLanding = 1;
#ifdef VAR_RANGES
		logval(":init::isLanding", ((int)((P6 *)_this)->_26_11_isLanding));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - test.pml:463 - [isEmergency = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[6][2] = 1;
		(trpt+1)->bup.oval = ((int)((P6 *)_this)->_26_11_isEmergency);
		((P6 *)_this)->_26_11_isEmergency = 1;
#ifdef VAR_RANGES
		logval(":init::isEmergency", ((int)((P6 *)_this)->_26_11_isEmergency));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - test.pml:463 - [(run ControlTower())] (0:0:0 - 0)
		IfNotBlocked
		reached[6][3] = 1;
		if (!(addproc(II, 1, 5, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - test.pml:466 - [(run Plane(1,isLanding,isEmergency))] (0:0:0 - 0)
		IfNotBlocked
		reached[6][4] = 1;
		if (!(addproc(II, 1, 3, 1, ((int)((P6 *)_this)->_26_11_isLanding), ((int)((P6 *)_this)->_26_11_isEmergency), 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - test.pml:467 - [(run Plane(2,!(isLanding),!(isEmergency)))] (0:0:0 - 0)
		IfNotBlocked
		reached[6][5] = 1;
		if (!(addproc(II, 1, 3, 2,  !(((int)((P6 *)_this)->_26_11_isLanding)),  !(((int)((P6 *)_this)->_26_11_isEmergency)), 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - test.pml:468 - [(run Plane(3,isLanding,!(isEmergency)))] (0:0:0 - 0)
		IfNotBlocked
		reached[6][6] = 1;
		if (!(addproc(II, 1, 3, 3, ((int)((P6 *)_this)->_26_11_isLanding),  !(((int)((P6 *)_this)->_26_11_isEmergency)), 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 7 - test.pml:469 - [(run Plane(4,!(isLanding),!(isEmergency)))] (0:0:0 - 0)
		IfNotBlocked
		reached[6][7] = 1;
		if (!(addproc(II, 1, 3, 4,  !(((int)((P6 *)_this)->_26_11_isLanding)),  !(((int)((P6 *)_this)->_26_11_isEmergency)), 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 8 - test.pml:470 - [(run Plane(5,isLanding,!(isEmergency)))] (0:0:0 - 0)
		IfNotBlocked
		reached[6][8] = 1;
		if (!(addproc(II, 1, 3, 5, ((int)((P6 *)_this)->_26_11_isLanding),  !(((int)((P6 *)_this)->_26_11_isEmergency)), 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 9 - test.pml:471 - [(run Plane(6,!(isLanding),!(isEmergency)))] (0:0:0 - 0)
		IfNotBlocked
		reached[6][9] = 1;
		if (!(addproc(II, 1, 3, 6,  !(((int)((P6 *)_this)->_26_11_isLanding)),  !(((int)((P6 *)_this)->_26_11_isEmergency)), 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 10 - test.pml:472 - [(run Plane(7,isLanding,!(isEmergency)))] (0:0:0 - 0)
		IfNotBlocked
		reached[6][10] = 1;
		if (!(addproc(II, 1, 3, 7, ((int)((P6 *)_this)->_26_11_isLanding),  !(((int)((P6 *)_this)->_26_11_isEmergency)), 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 11 - test.pml:473 - [(run Plane(8,!(isLanding),!(isEmergency)))] (0:0:0 - 0)
		IfNotBlocked
		reached[6][11] = 1;
		if (!(addproc(II, 1, 3, 8,  !(((int)((P6 *)_this)->_26_11_isLanding)),  !(((int)((P6 *)_this)->_26_11_isEmergency)), 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 12 - test.pml:474 - [(run Plane(9,isLanding,!(isEmergency)))] (0:0:2 - 0)
		IfNotBlocked
		reached[6][12] = 1;
		if (!(addproc(II, 1, 3, 9, ((int)((P6 *)_this)->_26_11_isLanding),  !(((int)((P6 *)_this)->_26_11_isEmergency)), 0)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _26_11_isLanding */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P6 *)_this)->_26_11_isLanding;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P6 *)_this)->_26_11_isLanding = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _26_11_isEmergency */  (trpt+1)->bup.ovals[1] = ((P6 *)_this)->_26_11_isEmergency;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P6 *)_this)->_26_11_isEmergency = 0;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 14 - test.pml:477 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[6][14] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ControlTower */
	case 16: // STATE 1 - test.pml:415 - [(((len(c_request_emergency)>0)&&(runway_occupied==0)))] (0:0:0 - 0)
		IfNotBlocked
		reached[5][1] = 1;
		if (!(((q_len(now.c_request_emergency)>0)&&(((int)now.runway_occupied)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 2 - test.pml:417 - [runway_occupied = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[5][2] = 1;
		(trpt+1)->bup.oval = ((int)now.runway_occupied);
		now.runway_occupied = 1;
#ifdef VAR_RANGES
		logval("runway_occupied", ((int)now.runway_occupied));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 3 - test.pml:419 - [c_request_emergency?<plane_id,op>] (0:0:3 - 0)
		reached[5][3] = 1;
		if (q_len(now.c_request_emergency) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P5 *)_this)->plane_id;
		(trpt+1)->bup.ovals[1] = ((P5 *)_this)->op;
		;
		((P5 *)_this)->plane_id = qrecv(now.c_request_emergency, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("ControlTower:plane_id", ((P5 *)_this)->plane_id);
#endif
		;
		((P5 *)_this)->op = qrecv(now.c_request_emergency, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("ControlTower:op", ((P5 *)_this)->op);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.c_request_emergency);
			sprintf(simtmp, "%d", ((P5 *)_this)->plane_id); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((P5 *)_this)->op); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 19: // STATE 4 - test.pml:420 - [printf('Tower: Check emergency request: plane %d %e\\n',plane_id,op)] (0:0:0 - 0)
		IfNotBlocked
		reached[5][4] = 1;
		Printf("Tower: Check emergency request: plane %d %e\n", ((P5 *)_this)->plane_id, ((P5 *)_this)->op);
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 5 - test.pml:422 - [printf('Tower: Lock runway for emergency\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[5][5] = 1;
		Printf("Tower: Lock runway for emergency\n");
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 6 - test.pml:423 - [c_tower_log!plane_id,2,2] (0:0:0 - 0)
		IfNotBlocked
		reached[5][6] = 1;
		if (q_full(now.c_tower_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_tower_log);
		sprintf(simtmp, "%d", ((P5 *)_this)->plane_id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_tower_log, 0, ((P5 *)_this)->plane_id, 2, 2, 3);
		_m = 2; goto P999; /* 0 */
	case 22: // STATE 7 - test.pml:425 - [((op==3))] (0:0:1 - 0)
		IfNotBlocked
		reached[5][7] = 1;
		if (!((((P5 *)_this)->op==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: op */  (trpt+1)->bup.oval = ((P5 *)_this)->op;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P5 *)_this)->op = 0;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 8 - test.pml:426 - [printf('Tower: Handle emergency landing request\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[5][8] = 1;
		Printf("Tower: Handle emergency landing request\n");
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 9 - test.pml:427 - [(run TowerOperationRequestHandler(plane_id,c_request_emergency,c_reply_emergency,3))] (0:0:1 - 0)
		IfNotBlocked
		reached[5][9] = 1;
		if (!(addproc(II, 1, 4, ((P5 *)_this)->plane_id, now.c_request_emergency, now.c_reply_emergency, 3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: plane_id */  (trpt+1)->bup.oval = ((P5 *)_this)->plane_id;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P5 *)_this)->plane_id = 0;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 11 - test.pml:430 - [((op==4))] (0:0:1 - 0)
		IfNotBlocked
		reached[5][11] = 1;
		if (!((((P5 *)_this)->op==4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: op */  (trpt+1)->bup.oval = ((P5 *)_this)->op;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P5 *)_this)->op = 0;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 12 - test.pml:431 - [printf('Tower: Handle emergency takeoff request\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[5][12] = 1;
		Printf("Tower: Handle emergency takeoff request\n");
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 13 - test.pml:432 - [(run TowerOperationRequestHandler(plane_id,c_request_emergency,c_reply_emergency,4))] (0:0:1 - 0)
		IfNotBlocked
		reached[5][13] = 1;
		if (!(addproc(II, 1, 4, ((P5 *)_this)->plane_id, now.c_request_emergency, now.c_reply_emergency, 4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: plane_id */  (trpt+1)->bup.oval = ((P5 *)_this)->plane_id;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P5 *)_this)->plane_id = 0;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 19 - test.pml:437 - [(((len(c_request_emergency)<=0)&&(runway_occupied==0)))] (0:0:0 - 0)
		IfNotBlocked
		reached[5][19] = 1;
		if (!(((q_len(now.c_request_emergency)<=0)&&(((int)now.runway_occupied)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 20 - test.pml:440 - [c_request_landing?<plane_id>] (0:0:2 - 0)
		reached[5][20] = 1;
		if (q_len(now.c_request_landing) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P5 *)_this)->plane_id;
		;
		((P5 *)_this)->plane_id = qrecv(now.c_request_landing, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("ControlTower:plane_id", ((P5 *)_this)->plane_id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.c_request_landing);
			sprintf(simtmp, "%d", ((P5 *)_this)->plane_id); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 30: // STATE 21 - test.pml:441 - [(run TowerOperationRequestHandler(plane_id,c_request_landing,c_reply_landing,7))] (0:0:1 - 0)
		IfNotBlocked
		reached[5][21] = 1;
		if (!(addproc(II, 1, 4, ((P5 *)_this)->plane_id, now.c_request_landing, now.c_reply_landing, 7)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: plane_id */  (trpt+1)->bup.oval = ((P5 *)_this)->plane_id;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P5 *)_this)->plane_id = 0;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 23 - test.pml:444 - [c_request_takeoff?<plane_id>] (0:0:2 - 0)
		reached[5][23] = 1;
		if (q_len(now.c_request_takeoff) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P5 *)_this)->plane_id;
		;
		((P5 *)_this)->plane_id = qrecv(now.c_request_takeoff, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("ControlTower:plane_id", ((P5 *)_this)->plane_id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.c_request_takeoff);
			sprintf(simtmp, "%d", ((P5 *)_this)->plane_id); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 32: // STATE 24 - test.pml:445 - [(run TowerOperationRequestHandler(plane_id,c_request_takeoff,c_reply_takeoff,8))] (0:0:1 - 0)
		IfNotBlocked
		reached[5][24] = 1;
		if (!(addproc(II, 1, 4, ((P5 *)_this)->plane_id, now.c_request_takeoff, now.c_reply_takeoff, 8)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: plane_id */  (trpt+1)->bup.oval = ((P5 *)_this)->plane_id;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P5 *)_this)->plane_id = 0;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 26 - test.pml:448 - [((len(c_request_parking)>0))] (0:0:0 - 0)
		IfNotBlocked
		reached[5][26] = 1;
		if (!((q_len(now.c_request_parking)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 27 - test.pml:399 - [c_request_parking?plane_id] (0:0:1 - 0)
		reached[5][27] = 1;
		if (q_len(now.c_request_parking) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P5 *)_this)->plane_id;
		;
		((P5 *)_this)->plane_id = qrecv(now.c_request_parking, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("ControlTower:plane_id", ((P5 *)_this)->plane_id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.c_request_parking);
			sprintf(simtmp, "%d", ((P5 *)_this)->plane_id); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 35: // STATE 28 - test.pml:400 - [printf('Tower: Clear queue request for plane %d parking\\n',plane_id)] (0:0:0 - 0)
		IfNotBlocked
		reached[5][28] = 1;
		Printf("Tower: Clear queue request for plane %d parking\n", ((P5 *)_this)->plane_id);
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 29 - test.pml:402 - [c_reply_parking!plane_id] (0:0:0 - 0)
		IfNotBlocked
		reached[5][29] = 1;
		if (q_full(now.c_reply_parking))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_reply_parking);
		sprintf(simtmp, "%d", ((P5 *)_this)->plane_id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_reply_parking, 0, ((P5 *)_this)->plane_id, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 37: // STATE 30 - test.pml:403 - [printf('Tower: Reply to Plane %d parking\\n',plane_id)] (0:0:0 - 0)
		IfNotBlocked
		reached[5][30] = 1;
		Printf("Tower: Reply to Plane %d parking\n", ((P5 *)_this)->plane_id);
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 31 - test.pml:405 - [c_tower_log!plane_id,6,4] (0:0:0 - 0)
		IfNotBlocked
		reached[5][31] = 1;
		if (q_full(now.c_tower_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_tower_log);
		sprintf(simtmp, "%d", ((P5 *)_this)->plane_id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_tower_log, 0, ((P5 *)_this)->plane_id, 6, 4, 3);
		_m = 2; goto P999; /* 0 */
	case 39: // STATE 32 - test.pml:406 - [printf('Tower: Log plane %d parking reply\\n',plane_id)] (0:0:0 - 0)
		IfNotBlocked
		reached[5][32] = 1;
		Printf("Tower: Log plane %d parking reply\n", ((P5 *)_this)->plane_id);
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 43 - test.pml:455 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[5][43] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC TowerOperationRequestHandler */
	case 41: // STATE 1 - test.pml:360 - [(((runway_occupied==1)&&((op==3)||(op==4))))] (0:0:0 - 0)
		IfNotBlocked
		reached[4][1] = 1;
		if (!(((((int)now.runway_occupied)==1)&&((((P4 *)_this)->op==3)||(((P4 *)_this)->op==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 2 - test.pml:362 - [((op==3))] (0:0:1 - 0)
		IfNotBlocked
		reached[4][2] = 1;
		if (!((((P4 *)_this)->op==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: op */  (trpt+1)->bup.oval = ((P4 *)_this)->op;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->op = 0;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 3 - test.pml:344 - [c_request?plane_id,3] (0:0:1 - 0)
		reached[4][3] = 1;
		if (q_len(((P4 *)_this)->c_request) == 0) continue;

		XX=1;
		if (3 != qrecv(((P4 *)_this)->c_request, 0, 1, 0)) continue;
		(trpt+1)->bup.oval = ((P4 *)_this)->plane_id;
		;
		((P4 *)_this)->plane_id = qrecv(((P4 *)_this)->c_request, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("TowerOperationRequestHandler:plane_id", ((P4 *)_this)->plane_id);
#endif
		;
		qrecv(((P4 *)_this)->c_request, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P4 *)_this)->c_request);
			sprintf(simtmp, "%d", ((P4 *)_this)->plane_id); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 44: // STATE 4 - test.pml:345 - [printf('Tower: Clear queue request for plane %d %e\\n',plane_id,3)] (0:0:0 - 0)
		IfNotBlocked
		reached[4][4] = 1;
		Printf("Tower: Clear queue request for plane %d %e\n", ((P4 *)_this)->plane_id, 3);
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 5 - test.pml:347 - [c_reply!plane_id,3] (0:0:0 - 0)
		IfNotBlocked
		reached[4][5] = 1;
		if (q_full(((P4 *)_this)->c_reply))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P4 *)_this)->c_reply);
		sprintf(simtmp, "%d", ((P4 *)_this)->plane_id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P4 *)_this)->c_reply, 0, ((P4 *)_this)->plane_id, 3, 0, 2);
		_m = 2; goto P999; /* 0 */
	case 46: // STATE 6 - test.pml:348 - [printf('Tower: Reply to plane %d %e\\n',plane_id,3)] (0:0:0 - 0)
		IfNotBlocked
		reached[4][6] = 1;
		Printf("Tower: Reply to plane %d %e\n", ((P4 *)_this)->plane_id, 3);
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 7 - test.pml:350 - [c_tower_reply_log!plane_id,3,4] (0:0:0 - 0)
		IfNotBlocked
		reached[4][7] = 1;
		if (q_full(now.c_tower_reply_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_tower_reply_log);
		sprintf(simtmp, "%d", ((P4 *)_this)->plane_id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_tower_reply_log, 0, ((P4 *)_this)->plane_id, 3, 4, 3);
		_m = 2; goto P999; /* 0 */
	case 48: // STATE 8 - test.pml:351 - [c_tower_log!plane_id,3,4] (0:0:0 - 0)
		IfNotBlocked
		reached[4][8] = 1;
		if (q_full(now.c_tower_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_tower_log);
		sprintf(simtmp, "%d", ((P4 *)_this)->plane_id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_tower_log, 0, ((P4 *)_this)->plane_id, 3, 4, 3);
		_m = 2; goto P999; /* 0 */
	case 49: // STATE 9 - test.pml:352 - [c_emergency_log!plane_id,3,4] (0:0:0 - 0)
		IfNotBlocked
		reached[4][9] = 1;
		if (q_full(now.c_emergency_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_emergency_log);
		sprintf(simtmp, "%d", ((P4 *)_this)->plane_id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_emergency_log, 0, ((P4 *)_this)->plane_id, 3, 4, 3);
		_m = 2; goto P999; /* 0 */
	case 50: // STATE 10 - test.pml:353 - [printf('Tower: Log plane %d %e reply\\n',plane_id,3)] (0:0:0 - 0)
		IfNotBlocked
		reached[4][10] = 1;
		Printf("Tower: Log plane %d %e reply\n", ((P4 *)_this)->plane_id, 3);
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 14 - test.pml:366 - [((op==4))] (0:0:1 - 0)
		IfNotBlocked
		reached[4][14] = 1;
		if (!((((P4 *)_this)->op==4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: op */  (trpt+1)->bup.oval = ((P4 *)_this)->op;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->op = 0;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 15 - test.pml:344 - [c_request?plane_id,4] (0:0:1 - 0)
		reached[4][15] = 1;
		if (q_len(((P4 *)_this)->c_request) == 0) continue;

		XX=1;
		if (4 != qrecv(((P4 *)_this)->c_request, 0, 1, 0)) continue;
		(trpt+1)->bup.oval = ((P4 *)_this)->plane_id;
		;
		((P4 *)_this)->plane_id = qrecv(((P4 *)_this)->c_request, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("TowerOperationRequestHandler:plane_id", ((P4 *)_this)->plane_id);
#endif
		;
		qrecv(((P4 *)_this)->c_request, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P4 *)_this)->c_request);
			sprintf(simtmp, "%d", ((P4 *)_this)->plane_id); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 53: // STATE 16 - test.pml:345 - [printf('Tower: Clear queue request for plane %d %e\\n',plane_id,4)] (0:0:0 - 0)
		IfNotBlocked
		reached[4][16] = 1;
		Printf("Tower: Clear queue request for plane %d %e\n", ((P4 *)_this)->plane_id, 4);
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 17 - test.pml:347 - [c_reply!plane_id,4] (0:0:0 - 0)
		IfNotBlocked
		reached[4][17] = 1;
		if (q_full(((P4 *)_this)->c_reply))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P4 *)_this)->c_reply);
		sprintf(simtmp, "%d", ((P4 *)_this)->plane_id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P4 *)_this)->c_reply, 0, ((P4 *)_this)->plane_id, 4, 0, 2);
		_m = 2; goto P999; /* 0 */
	case 55: // STATE 18 - test.pml:348 - [printf('Tower: Reply to plane %d %e\\n',plane_id,4)] (0:0:0 - 0)
		IfNotBlocked
		reached[4][18] = 1;
		Printf("Tower: Reply to plane %d %e\n", ((P4 *)_this)->plane_id, 4);
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 19 - test.pml:350 - [c_tower_reply_log!plane_id,4,4] (0:0:0 - 0)
		IfNotBlocked
		reached[4][19] = 1;
		if (q_full(now.c_tower_reply_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_tower_reply_log);
		sprintf(simtmp, "%d", ((P4 *)_this)->plane_id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_tower_reply_log, 0, ((P4 *)_this)->plane_id, 4, 4, 3);
		_m = 2; goto P999; /* 0 */
	case 57: // STATE 20 - test.pml:351 - [c_tower_log!plane_id,4,4] (0:0:0 - 0)
		IfNotBlocked
		reached[4][20] = 1;
		if (q_full(now.c_tower_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_tower_log);
		sprintf(simtmp, "%d", ((P4 *)_this)->plane_id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_tower_log, 0, ((P4 *)_this)->plane_id, 4, 4, 3);
		_m = 2; goto P999; /* 0 */
	case 58: // STATE 21 - test.pml:352 - [c_emergency_log!plane_id,4,4] (0:0:0 - 0)
		IfNotBlocked
		reached[4][21] = 1;
		if (q_full(now.c_emergency_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_emergency_log);
		sprintf(simtmp, "%d", ((P4 *)_this)->plane_id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_emergency_log, 0, ((P4 *)_this)->plane_id, 4, 4, 3);
		_m = 2; goto P999; /* 0 */
	case 59: // STATE 22 - test.pml:353 - [printf('Tower: Log plane %d %e reply\\n',plane_id,4)] (0:0:0 - 0)
		IfNotBlocked
		reached[4][22] = 1;
		Printf("Tower: Log plane %d %e reply\n", ((P4 *)_this)->plane_id, 4);
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 29 - test.pml:372 - [((((runway_occupied==0)&&((op!=3)&&(op!=4)))&&(len(c_request_emergency)<=0)))] (0:0:0 - 0)
		IfNotBlocked
		reached[4][29] = 1;
		if (!((((((int)now.runway_occupied)==0)&&((((P4 *)_this)->op!=3)&&(((P4 *)_this)->op!=4)))&&(q_len(now.c_request_emergency)<=0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 30 - test.pml:374 - [((op==7))] (0:0:1 - 0)
		IfNotBlocked
		reached[4][30] = 1;
		if (!((((P4 *)_this)->op==7)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: op */  (trpt+1)->bup.oval = ((P4 *)_this)->op;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->op = 0;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 31 - test.pml:316 - [c_request?plane_id] (0:0:1 - 0)
		reached[4][31] = 1;
		if (q_len(((P4 *)_this)->c_request) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P4 *)_this)->plane_id;
		;
		((P4 *)_this)->plane_id = qrecv(((P4 *)_this)->c_request, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("TowerOperationRequestHandler:plane_id", ((P4 *)_this)->plane_id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P4 *)_this)->c_request);
			sprintf(simtmp, "%d", ((P4 *)_this)->plane_id); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 63: // STATE 32 - test.pml:317 - [printf('Tower: Clear queue request for plane %d landing\\n',plane_id)] (0:0:0 - 0)
		IfNotBlocked
		reached[4][32] = 1;
		Printf("Tower: Clear queue request for plane %d landing\n", ((P4 *)_this)->plane_id);
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 33 - test.pml:319 - [c_reply!plane_id] (0:0:0 - 0)
		IfNotBlocked
		reached[4][33] = 1;
		if (q_full(((P4 *)_this)->c_reply))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P4 *)_this)->c_reply);
		sprintf(simtmp, "%d", ((P4 *)_this)->plane_id); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P4 *)_this)->c_reply, 0, ((P4 *)_this)->plane_id, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 65: // STATE 34 - test.pml:320 - [printf('Tower: Reply to plane %d landing\\n',plane_id)] (0:0:0 - 0)
		IfNotBlocked
		reached[4][34] = 1;
		Printf("Tower: Reply to plane %d landing\n", ((P4 *)_this)->plane_id);
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 35 - test.pml:322 - [c_tower_reply_log!plane_id,7,4] (0:0:0 - 0)
		IfNotBlocked
		reached[4][35] = 1;
		if (q_full(now.c_tower_reply_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_tower_reply_log);
		sprintf(simtmp, "%d", ((P4 *)_this)->plane_id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_tower_reply_log, 0, ((P4 *)_this)->plane_id, 7, 4, 3);
		_m = 2; goto P999; /* 0 */
	case 67: // STATE 36 - test.pml:323 - [c_tower_log!plane_id,7,4] (0:0:0 - 0)
		IfNotBlocked
		reached[4][36] = 1;
		if (q_full(now.c_tower_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_tower_log);
		sprintf(simtmp, "%d", ((P4 *)_this)->plane_id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_tower_log, 0, ((P4 *)_this)->plane_id, 7, 4, 3);
		_m = 2; goto P999; /* 0 */
	case 68: // STATE 37 - test.pml:324 - [printf('Tower: Log plane %d landing reply\\n',plane_id)] (0:0:0 - 0)
		IfNotBlocked
		reached[4][37] = 1;
		Printf("Tower: Log plane %d landing reply\n", ((P4 *)_this)->plane_id);
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 41 - test.pml:377 - [((op==8))] (0:0:1 - 0)
		IfNotBlocked
		reached[4][41] = 1;
		if (!((((P4 *)_this)->op==8)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: op */  (trpt+1)->bup.oval = ((P4 *)_this)->op;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->op = 0;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 42 - test.pml:330 - [c_request?plane_id] (0:0:1 - 0)
		reached[4][42] = 1;
		if (q_len(((P4 *)_this)->c_request) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P4 *)_this)->plane_id;
		;
		((P4 *)_this)->plane_id = qrecv(((P4 *)_this)->c_request, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("TowerOperationRequestHandler:plane_id", ((P4 *)_this)->plane_id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P4 *)_this)->c_request);
			sprintf(simtmp, "%d", ((P4 *)_this)->plane_id); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 71: // STATE 43 - test.pml:331 - [printf('Tower: Clear queue request for plane %d takeoff\\n',plane_id)] (0:0:0 - 0)
		IfNotBlocked
		reached[4][43] = 1;
		Printf("Tower: Clear queue request for plane %d takeoff\n", ((P4 *)_this)->plane_id);
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 44 - test.pml:333 - [c_reply!plane_id] (0:0:0 - 0)
		IfNotBlocked
		reached[4][44] = 1;
		if (q_full(((P4 *)_this)->c_reply))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P4 *)_this)->c_reply);
		sprintf(simtmp, "%d", ((P4 *)_this)->plane_id); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P4 *)_this)->c_reply, 0, ((P4 *)_this)->plane_id, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 73: // STATE 45 - test.pml:334 - [printf('Tower: Reply to plane %d takeoff\\n',plane_id)] (0:0:0 - 0)
		IfNotBlocked
		reached[4][45] = 1;
		Printf("Tower: Reply to plane %d takeoff\n", ((P4 *)_this)->plane_id);
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 46 - test.pml:336 - [c_tower_reply_log!plane_id,8,4] (0:0:0 - 0)
		IfNotBlocked
		reached[4][46] = 1;
		if (q_full(now.c_tower_reply_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_tower_reply_log);
		sprintf(simtmp, "%d", ((P4 *)_this)->plane_id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_tower_reply_log, 0, ((P4 *)_this)->plane_id, 8, 4, 3);
		_m = 2; goto P999; /* 0 */
	case 75: // STATE 47 - test.pml:337 - [c_tower_log!plane_id,8,4] (0:0:0 - 0)
		IfNotBlocked
		reached[4][47] = 1;
		if (q_full(now.c_tower_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_tower_log);
		sprintf(simtmp, "%d", ((P4 *)_this)->plane_id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_tower_log, 0, ((P4 *)_this)->plane_id, 8, 4, 3);
		_m = 2; goto P999; /* 0 */
	case 76: // STATE 48 - test.pml:338 - [printf('Tower: Log plane %d takeoff reply\\n',plane_id)] (0:0:0 - 0)
		IfNotBlocked
		reached[4][48] = 1;
		Printf("Tower: Log plane %d takeoff reply\n", ((P4 *)_this)->plane_id);
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 55 - test.pml:383 - [((((runway_occupied==1)&&((op!=3)&&(op!=4)))||(len(c_reply_emergency)>0)))] (0:0:0 - 0)
		IfNotBlocked
		reached[4][55] = 1;
		if (!((((((int)now.runway_occupied)==1)&&((((P4 *)_this)->op!=3)&&(((P4 *)_this)->op!=4)))||(q_len(now.c_reply_emergency)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 56 - test.pml:385 - [((op==7))] (0:0:1 - 0)
		IfNotBlocked
		reached[4][56] = 1;
		if (!((((P4 *)_this)->op==7)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: op */  (trpt+1)->bup.oval = ((P4 *)_this)->op;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->op = 0;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 57 - test.pml:386 - [printf('Tower: Runway busy, cannot reply for plane %d landing',plane_id)] (0:0:0 - 0)
		IfNotBlocked
		reached[4][57] = 1;
		Printf("Tower: Runway busy, cannot reply for plane %d landing", ((P4 *)_this)->plane_id);
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 59 - test.pml:388 - [((op==8))] (0:0:1 - 0)
		IfNotBlocked
		reached[4][59] = 1;
		if (!((((P4 *)_this)->op==8)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: op */  (trpt+1)->bup.oval = ((P4 *)_this)->op;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->op = 0;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 60 - test.pml:389 - [printf('Tower: Runway busy, cannot reply for plane %d takeoff',plane_id)] (0:0:0 - 0)
		IfNotBlocked
		reached[4][60] = 1;
		Printf("Tower: Runway busy, cannot reply for plane %d takeoff", ((P4 *)_this)->plane_id);
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 68 - test.pml:395 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[4][68] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Plane */
	case 83: // STATE 1 - test.pml:304 - [plane_timer = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[3][1] = 1;
		(trpt+1)->bup.oval = ((P3 *)_this)->plane_timer;
		((P3 *)_this)->plane_timer = 1;
#ifdef VAR_RANGES
		logval("Plane:plane_timer", ((P3 *)_this)->plane_timer);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 2 - test.pml:304 - [((plane_timer<10))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][2] = 1;
		if (!((((P3 *)_this)->plane_timer<10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 3 - test.pml:304 - [plane_timer = (plane_timer+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[3][3] = 1;
		(trpt+1)->bup.oval = ((P3 *)_this)->plane_timer;
		((P3 *)_this)->plane_timer = (((P3 *)_this)->plane_timer+1);
#ifdef VAR_RANGES
		logval("Plane:plane_timer", ((P3 *)_this)->plane_timer);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 8 - test.pml:305 - [printf('Plane %d: timer: %d (s)\\n',id,plane_timer)] (0:0:0 - 0)
		IfNotBlocked
		reached[3][8] = 1;
		Printf("Plane %d: timer: %d (s)\n", ((P3 *)_this)->id, ((P3 *)_this)->plane_timer);
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 9 - test.pml:307 - [(run RequestSubmitHandler(isLanding,isEmergency,id))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][9] = 1;
		if (!(addproc(II, 1, 0, ((int)((P3 *)_this)->isLanding), ((int)((P3 *)_this)->isEmergency), ((P3 *)_this)->id, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 10 - test.pml:309 - [(run RunwayProceduresHandler(isLanding,isEmergency,id,plane_timer))] (0:0:3 - 0)
		IfNotBlocked
		reached[3][10] = 1;
		if (!(addproc(II, 1, 2, ((int)((P3 *)_this)->isLanding), ((int)((P3 *)_this)->isEmergency), ((P3 *)_this)->id, ((P3 *)_this)->plane_timer)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isLanding */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P3 *)_this)->isLanding;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->isLanding = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isEmergency */  (trpt+1)->bup.ovals[1] = ((P3 *)_this)->isEmergency;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->isEmergency = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: plane_timer */  (trpt+1)->bup.ovals[2] = ((P3 *)_this)->plane_timer;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->plane_timer = 0;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 11 - test.pml:311 - [(run PlaneParkingReplyHandler(isParking,id,rep_parking))] (0:0:3 - 0)
		IfNotBlocked
		reached[3][11] = 1;
		if (!(addproc(II, 1, 1, ((int)((P3 *)_this)->isParking), ((P3 *)_this)->id, ((P3 *)_this)->rep_parking, 0)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isParking */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P3 *)_this)->isParking;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->isParking = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: id */  (trpt+1)->bup.ovals[1] = ((P3 *)_this)->id;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->id = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: rep_parking */  (trpt+1)->bup.ovals[2] = ((P3 *)_this)->rep_parking;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->rep_parking = 0;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 12 - test.pml:312 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[3][12] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC RunwayProceduresHandler */
	case 91: // STATE 1 - test.pml:203 - [((isLanding&&isEmergency))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][1] = 1;
		if (!((((int)((P2 *)_this)->isLanding)&&((int)((P2 *)_this)->isEmergency))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 2 - test.pml:205 - [c_reply_emergency?<temp_id,temp_op>] (0:0:3 - 0)
		reached[2][2] = 1;
		if (q_len(now.c_reply_emergency) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->temp_id;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->temp_op;
		;
		((P2 *)_this)->temp_id = qrecv(now.c_reply_emergency, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("RunwayProceduresHandler:temp_id", ((P2 *)_this)->temp_id);
#endif
		;
		((P2 *)_this)->temp_op = qrecv(now.c_reply_emergency, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("RunwayProceduresHandler:temp_op", ((P2 *)_this)->temp_op);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.c_reply_emergency);
			sprintf(simtmp, "%d", ((P2 *)_this)->temp_id); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((P2 *)_this)->temp_op); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 93: // STATE 3 - test.pml:207 - [(((temp_id==id)&&(temp_op==3)))] (0:0:1 - 0)
		IfNotBlocked
		reached[2][3] = 1;
		if (!(((((P2 *)_this)->temp_id==((P2 *)_this)->id)&&(((P2 *)_this)->temp_op==3))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: id */  (trpt+1)->bup.oval = ((P2 *)_this)->id;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->id = 0;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 4 - test.pml:208 - [c_reply_emergency?id,3] (0:0:1 - 0)
		reached[2][4] = 1;
		if (q_len(now.c_reply_emergency) == 0) continue;

		XX=1;
		if (3 != qrecv(now.c_reply_emergency, 0, 1, 0)) continue;
		(trpt+1)->bup.oval = ((P2 *)_this)->id;
		;
		((P2 *)_this)->id = qrecv(now.c_reply_emergency, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("RunwayProceduresHandler:id", ((P2 *)_this)->id);
#endif
		;
		qrecv(now.c_reply_emergency, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.c_reply_emergency);
			sprintf(simtmp, "%d", ((P2 *)_this)->id); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 95: // STATE 5 - test.pml:209 - [printf('Plane %d: Clear queue emergency landing reply\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][5] = 1;
		Printf("Plane %d: Clear queue emergency landing reply\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 7 - test.pml:212 - [(((temp_id!=id)||(temp_op!=3)))] (0:0:1 - 0)
		IfNotBlocked
		reached[2][7] = 1;
		if (!(((((P2 *)_this)->temp_id!=((P2 *)_this)->id)||(((P2 *)_this)->temp_op!=3))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: temp_id */  (trpt+1)->bup.oval = ((P2 *)_this)->temp_id;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->temp_id = 0;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 8 - test.pml:213 - [printf('Plane %d: Waiting for emergency landing reply\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][8] = 1;
		Printf("Plane %d: Waiting for emergency landing reply\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 14 - test.pml:218 - [((!(isLanding)&&isEmergency))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][14] = 1;
		if (!(( !(((int)((P2 *)_this)->isLanding))&&((int)((P2 *)_this)->isEmergency))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 15 - test.pml:219 - [c_reply_emergency?<temp_id,temp_op>] (0:0:3 - 0)
		reached[2][15] = 1;
		if (q_len(now.c_reply_emergency) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->temp_id;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->temp_op;
		;
		((P2 *)_this)->temp_id = qrecv(now.c_reply_emergency, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("RunwayProceduresHandler:temp_id", ((P2 *)_this)->temp_id);
#endif
		;
		((P2 *)_this)->temp_op = qrecv(now.c_reply_emergency, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("RunwayProceduresHandler:temp_op", ((P2 *)_this)->temp_op);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.c_reply_emergency);
			sprintf(simtmp, "%d", ((P2 *)_this)->temp_id); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((P2 *)_this)->temp_op); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 100: // STATE 16 - test.pml:221 - [(((id==temp_id)&&(temp_op==4)))] (0:0:1 - 0)
		IfNotBlocked
		reached[2][16] = 1;
		if (!(((((P2 *)_this)->id==((P2 *)_this)->temp_id)&&(((P2 *)_this)->temp_op==4))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: id */  (trpt+1)->bup.oval = ((P2 *)_this)->id;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->id = 0;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 17 - test.pml:222 - [c_reply_emergency?id,4] (0:0:1 - 0)
		reached[2][17] = 1;
		if (q_len(now.c_reply_emergency) == 0) continue;

		XX=1;
		if (4 != qrecv(now.c_reply_emergency, 0, 1, 0)) continue;
		(trpt+1)->bup.oval = ((P2 *)_this)->id;
		;
		((P2 *)_this)->id = qrecv(now.c_reply_emergency, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("RunwayProceduresHandler:id", ((P2 *)_this)->id);
#endif
		;
		qrecv(now.c_reply_emergency, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.c_reply_emergency);
			sprintf(simtmp, "%d", ((P2 *)_this)->id); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 102: // STATE 18 - test.pml:223 - [printf('Plane %d: Clear queue emergency takeoff reply\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][18] = 1;
		Printf("Plane %d: Clear queue emergency takeoff reply\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 20 - test.pml:226 - [(((temp_id!=id)||(temp_op!=4)))] (0:0:1 - 0)
		IfNotBlocked
		reached[2][20] = 1;
		if (!(((((P2 *)_this)->temp_id!=((P2 *)_this)->id)||(((P2 *)_this)->temp_op!=4))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: temp_id */  (trpt+1)->bup.oval = ((P2 *)_this)->temp_id;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->temp_id = 0;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 21 - test.pml:227 - [printf('Plane %d: Waiting for emergency takeoff reply\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][21] = 1;
		Printf("Plane %d: Waiting for emergency takeoff reply\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 27 - test.pml:233 - [((isLanding&&!(isEmergency)))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][27] = 1;
		if (!((((int)((P2 *)_this)->isLanding)&& !(((int)((P2 *)_this)->isEmergency)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 28 - test.pml:235 - [c_reply_landing?<temp_id>] (0:0:2 - 0)
		reached[2][28] = 1;
		if (q_len(now.c_reply_landing) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->temp_id;
		;
		((P2 *)_this)->temp_id = qrecv(now.c_reply_landing, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("RunwayProceduresHandler:temp_id", ((P2 *)_this)->temp_id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.c_reply_landing);
			sprintf(simtmp, "%d", ((P2 *)_this)->temp_id); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 107: // STATE 29 - test.pml:237 - [((temp_id==id))] (0:0:1 - 0)
		IfNotBlocked
		reached[2][29] = 1;
		if (!((((P2 *)_this)->temp_id==((P2 *)_this)->id)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: id */  (trpt+1)->bup.oval = ((P2 *)_this)->id;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->id = 0;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 30 - test.pml:238 - [c_reply_landing?id] (0:0:1 - 0)
		reached[2][30] = 1;
		if (q_len(now.c_reply_landing) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P2 *)_this)->id;
		;
		((P2 *)_this)->id = qrecv(now.c_reply_landing, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("RunwayProceduresHandler:id", ((P2 *)_this)->id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.c_reply_landing);
			sprintf(simtmp, "%d", ((P2 *)_this)->id); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 109: // STATE 31 - test.pml:239 - [printf('Plane %d: Clear queue landing reply\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][31] = 1;
		Printf("Plane %d: Clear queue landing reply\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 33 - test.pml:241 - [((temp_id!=id))] (0:0:1 - 0)
		IfNotBlocked
		reached[2][33] = 1;
		if (!((((P2 *)_this)->temp_id!=((P2 *)_this)->id)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: temp_id */  (trpt+1)->bup.oval = ((P2 *)_this)->temp_id;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->temp_id = 0;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 34 - test.pml:242 - [printf('Plane %d: Waiting for landing reply\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][34] = 1;
		Printf("Plane %d: Waiting for landing reply\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 40 - test.pml:248 - [((!(isLanding)&&!(isEmergency)))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][40] = 1;
		if (!(( !(((int)((P2 *)_this)->isLanding))&& !(((int)((P2 *)_this)->isEmergency)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 41 - test.pml:250 - [c_reply_takeoff?<temp_id>] (0:0:2 - 0)
		reached[2][41] = 1;
		if (q_len(now.c_reply_takeoff) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->temp_id;
		;
		((P2 *)_this)->temp_id = qrecv(now.c_reply_takeoff, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("RunwayProceduresHandler:temp_id", ((P2 *)_this)->temp_id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.c_reply_takeoff);
			sprintf(simtmp, "%d", ((P2 *)_this)->temp_id); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 114: // STATE 42 - test.pml:252 - [((temp_id==id))] (0:0:1 - 0)
		IfNotBlocked
		reached[2][42] = 1;
		if (!((((P2 *)_this)->temp_id==((P2 *)_this)->id)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: id */  (trpt+1)->bup.oval = ((P2 *)_this)->id;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->id = 0;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 43 - test.pml:253 - [c_reply_takeoff?id] (0:0:1 - 0)
		reached[2][43] = 1;
		if (q_len(now.c_reply_takeoff) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P2 *)_this)->id;
		;
		((P2 *)_this)->id = qrecv(now.c_reply_takeoff, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("RunwayProceduresHandler:id", ((P2 *)_this)->id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.c_reply_takeoff);
			sprintf(simtmp, "%d", ((P2 *)_this)->id); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 116: // STATE 44 - test.pml:254 - [printf('Plane %d: Clear queue takeoff reply\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][44] = 1;
		Printf("Plane %d: Clear queue takeoff reply\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 46 - test.pml:256 - [((temp_id!=id))] (0:0:1 - 0)
		IfNotBlocked
		reached[2][46] = 1;
		if (!((((P2 *)_this)->temp_id!=((P2 *)_this)->id)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: temp_id */  (trpt+1)->bup.oval = ((P2 *)_this)->temp_id;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->temp_id = 0;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 47 - test.pml:257 - [printf('Plane %d: Waiting for takeoff reply\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][47] = 1;
		Printf("Plane %d: Waiting for takeoff reply\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 56 - test.pml:267 - [((((temp_id==id)&&(temp_op==3))&&(runway_occupied==1)))] (0:0:1 - 0)
		IfNotBlocked
		reached[2][56] = 1;
		if (!((((((P2 *)_this)->temp_id==((P2 *)_this)->id)&&(((P2 *)_this)->temp_op==3))&&(((int)now.runway_occupied)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: temp_id */  (trpt+1)->bup.oval = ((P2 *)_this)->temp_id;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->temp_id = 0;
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 57 - test.pml:269 - [printf('Plane %d: RunwayProcedures: %e\\n',id,temp_op)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][57] = 1;
		Printf("Plane %d: RunwayProcedures: %e\n", ((P2 *)_this)->id, ((P2 *)_this)->temp_op);
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 58 - test.pml:37 - [runway_occupied = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[2][58] = 1;
		(trpt+1)->bup.oval = ((int)now.runway_occupied);
		now.runway_occupied = 1;
#ifdef VAR_RANGES
		logval("runway_occupied", ((int)now.runway_occupied));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 59 - test.pml:39 - [c_plane_runway_log!id,3,2] (0:0:0 - 0)
		IfNotBlocked
		reached[2][59] = 1;
		if (q_full(now.c_plane_runway_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_runway_log);
		sprintf(simtmp, "%d", ((P2 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_runway_log, 0, ((P2 *)_this)->id, 3, 2, 3);
		_m = 2; goto P999; /* 0 */
	case 123: // STATE 60 - test.pml:40 - [c_plane_log!id,5,2] (0:0:0 - 0)
		IfNotBlocked
		reached[2][60] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P2 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P2 *)_this)->id, 5, 2, 3);
		_m = 2; goto P999; /* 0 */
	case 124: // STATE 61 - test.pml:41 - [printf('Plane %d: Log runway lock\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][61] = 1;
		Printf("Plane %d: Log runway lock\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 62 - test.pml:43 - [((3==3))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][62] = 1;
		if (!((3==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 63 - test.pml:44 - [printf('Plane %d is using the runway for emergency landing\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][63] = 1;
		Printf("Plane %d is using the runway for emergency landing\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 65 - test.pml:47 - [((3==4))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][65] = 1;
		if (!((3==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 66 - test.pml:48 - [printf('Plane %d is using the runway for emergency take off\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][66] = 1;
		Printf("Plane %d is using the runway for emergency take off\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 68 - test.pml:51 - [((3==7))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][68] = 1;
		if (!((3==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 69 - test.pml:52 - [printf('Plane %d is using the runway for landing\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][69] = 1;
		Printf("Plane %d is using the runway for landing\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 71 - test.pml:55 - [((3==8))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][71] = 1;
		if (!((3==8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 72 - test.pml:56 - [printf('Plane %d is using the runway for take off\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][72] = 1;
		Printf("Plane %d is using the runway for take off\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 76 - test.pml:62 - [((plane_timer>0))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][76] = 1;
		if (!((((P2 *)_this)->plane_timer>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 77 - test.pml:63 - [printf('Plane %d: Timer %d (s) counts down 1s ...\\n',id,plane_timer)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][77] = 1;
		Printf("Plane %d: Timer %d (s) counts down 1s ...\n", ((P2 *)_this)->id, ((P2 *)_this)->plane_timer);
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 78 - test.pml:64 - [plane_timer = (plane_timer-1)] (0:0:1 - 0)
		IfNotBlocked
		reached[2][78] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->plane_timer;
		((P2 *)_this)->plane_timer = (((P2 *)_this)->plane_timer-1);
#ifdef VAR_RANGES
		logval("RunwayProceduresHandler:plane_timer", ((P2 *)_this)->plane_timer);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 80 - test.pml:65 - [printf('Plane %d: Finish countdown\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][80] = 1;
		Printf("Plane %d: Finish countdown\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 85 - test.pml:68 - [printf('Plane %d: Has finished using the runway\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][85] = 1;
		Printf("Plane %d: Has finished using the runway\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 138: // STATE 86 - test.pml:70 - [runway_occupied = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[2][86] = 1;
		(trpt+1)->bup.oval = ((int)now.runway_occupied);
		now.runway_occupied = 0;
#ifdef VAR_RANGES
		logval("runway_occupied", ((int)now.runway_occupied));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 87 - test.pml:71 - [printf('Plane %d: Has left the runway\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][87] = 1;
		Printf("Plane %d: Has left the runway\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 140: // STATE 88 - test.pml:74 - [(((3==7)||(3==3)))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][88] = 1;
		if (!(((3==7)||(3==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 141: // STATE 89 - test.pml:74 - [c_request_parking!id] (0:0:0 - 0)
		IfNotBlocked
		reached[2][89] = 1;
		if (q_full(now.c_request_parking))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_request_parking);
		sprintf(simtmp, "%d", ((P2 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_request_parking, 0, ((P2 *)_this)->id, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 142: // STATE 90 - test.pml:74 - [printf('Plane %d: Request parking after %e\\n',id,3)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][90] = 1;
		Printf("Plane %d: Request parking after %e\n", ((P2 *)_this)->id, 3);
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 99 - test.pml:274 - [((((temp_id==id)&&(temp_op==4))&&(runway_occupied==1)))] (0:0:1 - 0)
		IfNotBlocked
		reached[2][99] = 1;
		if (!((((((P2 *)_this)->temp_id==((P2 *)_this)->id)&&(((P2 *)_this)->temp_op==4))&&(((int)now.runway_occupied)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: temp_id */  (trpt+1)->bup.oval = ((P2 *)_this)->temp_id;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->temp_id = 0;
		_m = 3; goto P999; /* 0 */
	case 144: // STATE 100 - test.pml:276 - [printf('Plane %d: RunwayProcedures: %e\\n',id,temp_op)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][100] = 1;
		Printf("Plane %d: RunwayProcedures: %e\n", ((P2 *)_this)->id, ((P2 *)_this)->temp_op);
		_m = 3; goto P999; /* 0 */
	case 145: // STATE 101 - test.pml:37 - [runway_occupied = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[2][101] = 1;
		(trpt+1)->bup.oval = ((int)now.runway_occupied);
		now.runway_occupied = 1;
#ifdef VAR_RANGES
		logval("runway_occupied", ((int)now.runway_occupied));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 146: // STATE 102 - test.pml:39 - [c_plane_runway_log!id,4,2] (0:0:0 - 0)
		IfNotBlocked
		reached[2][102] = 1;
		if (q_full(now.c_plane_runway_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_runway_log);
		sprintf(simtmp, "%d", ((P2 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_runway_log, 0, ((P2 *)_this)->id, 4, 2, 3);
		_m = 2; goto P999; /* 0 */
	case 147: // STATE 103 - test.pml:40 - [c_plane_log!id,5,2] (0:0:0 - 0)
		IfNotBlocked
		reached[2][103] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P2 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P2 *)_this)->id, 5, 2, 3);
		_m = 2; goto P999; /* 0 */
	case 148: // STATE 104 - test.pml:41 - [printf('Plane %d: Log runway lock\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][104] = 1;
		Printf("Plane %d: Log runway lock\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 105 - test.pml:43 - [((4==3))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][105] = 1;
		if (!((4==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 150: // STATE 106 - test.pml:44 - [printf('Plane %d is using the runway for emergency landing\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][106] = 1;
		Printf("Plane %d is using the runway for emergency landing\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 151: // STATE 108 - test.pml:47 - [((4==4))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][108] = 1;
		if (!((4==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 152: // STATE 109 - test.pml:48 - [printf('Plane %d is using the runway for emergency take off\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][109] = 1;
		Printf("Plane %d is using the runway for emergency take off\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 111 - test.pml:51 - [((4==7))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][111] = 1;
		if (!((4==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 154: // STATE 112 - test.pml:52 - [printf('Plane %d is using the runway for landing\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][112] = 1;
		Printf("Plane %d is using the runway for landing\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 155: // STATE 114 - test.pml:55 - [((4==8))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][114] = 1;
		if (!((4==8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 156: // STATE 115 - test.pml:56 - [printf('Plane %d is using the runway for take off\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][115] = 1;
		Printf("Plane %d is using the runway for take off\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 157: // STATE 119 - test.pml:62 - [((plane_timer>0))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][119] = 1;
		if (!((((P2 *)_this)->plane_timer>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 158: // STATE 120 - test.pml:63 - [printf('Plane %d: Timer %d (s) counts down 1s ...\\n',id,plane_timer)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][120] = 1;
		Printf("Plane %d: Timer %d (s) counts down 1s ...\n", ((P2 *)_this)->id, ((P2 *)_this)->plane_timer);
		_m = 3; goto P999; /* 0 */
	case 159: // STATE 121 - test.pml:64 - [plane_timer = (plane_timer-1)] (0:0:1 - 0)
		IfNotBlocked
		reached[2][121] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->plane_timer;
		((P2 *)_this)->plane_timer = (((P2 *)_this)->plane_timer-1);
#ifdef VAR_RANGES
		logval("RunwayProceduresHandler:plane_timer", ((P2 *)_this)->plane_timer);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 160: // STATE 123 - test.pml:65 - [printf('Plane %d: Finish countdown\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][123] = 1;
		Printf("Plane %d: Finish countdown\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 161: // STATE 128 - test.pml:68 - [printf('Plane %d: Has finished using the runway\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][128] = 1;
		Printf("Plane %d: Has finished using the runway\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 162: // STATE 129 - test.pml:70 - [runway_occupied = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[2][129] = 1;
		(trpt+1)->bup.oval = ((int)now.runway_occupied);
		now.runway_occupied = 0;
#ifdef VAR_RANGES
		logval("runway_occupied", ((int)now.runway_occupied));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 163: // STATE 130 - test.pml:71 - [printf('Plane %d: Has left the runway\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][130] = 1;
		Printf("Plane %d: Has left the runway\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 164: // STATE 131 - test.pml:74 - [(((4==7)||(4==3)))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][131] = 1;
		if (!(((4==7)||(4==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 165: // STATE 132 - test.pml:74 - [c_request_parking!id] (0:0:0 - 0)
		IfNotBlocked
		reached[2][132] = 1;
		if (q_full(now.c_request_parking))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_request_parking);
		sprintf(simtmp, "%d", ((P2 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_request_parking, 0, ((P2 *)_this)->id, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 166: // STATE 133 - test.pml:74 - [printf('Plane %d: Request parking after %e\\n',id,4)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][133] = 1;
		Printf("Plane %d: Request parking after %e\n", ((P2 *)_this)->id, 4);
		_m = 3; goto P999; /* 0 */
	case 167: // STATE 142 - test.pml:281 - [(((!(isLanding)&&(temp_id==id))&&(!(runway_occupied)==1)))] (0:0:2 - 0)
		IfNotBlocked
		reached[2][142] = 1;
		if (!((( !(((int)((P2 *)_this)->isLanding))&&(((P2 *)_this)->temp_id==((P2 *)_this)->id))&&( !(((int)now.runway_occupied))==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isLanding */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->isLanding;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->isLanding = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: temp_id */  (trpt+1)->bup.ovals[1] = ((P2 *)_this)->temp_id;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->temp_id = 0;
		_m = 3; goto P999; /* 0 */
	case 168: // STATE 143 - test.pml:283 - [printf('Plane %d: RunwayProcedures: takeoff\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][143] = 1;
		Printf("Plane %d: RunwayProcedures: takeoff\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 169: // STATE 144 - test.pml:37 - [runway_occupied = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[2][144] = 1;
		(trpt+1)->bup.oval = ((int)now.runway_occupied);
		now.runway_occupied = 1;
#ifdef VAR_RANGES
		logval("runway_occupied", ((int)now.runway_occupied));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 170: // STATE 145 - test.pml:39 - [c_plane_runway_log!id,8,2] (0:0:0 - 0)
		IfNotBlocked
		reached[2][145] = 1;
		if (q_full(now.c_plane_runway_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_runway_log);
		sprintf(simtmp, "%d", ((P2 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_runway_log, 0, ((P2 *)_this)->id, 8, 2, 3);
		_m = 2; goto P999; /* 0 */
	case 171: // STATE 146 - test.pml:40 - [c_plane_log!id,5,2] (0:0:0 - 0)
		IfNotBlocked
		reached[2][146] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P2 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P2 *)_this)->id, 5, 2, 3);
		_m = 2; goto P999; /* 0 */
	case 172: // STATE 147 - test.pml:41 - [printf('Plane %d: Log runway lock\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][147] = 1;
		Printf("Plane %d: Log runway lock\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 173: // STATE 148 - test.pml:43 - [((8==3))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][148] = 1;
		if (!((8==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 174: // STATE 149 - test.pml:44 - [printf('Plane %d is using the runway for emergency landing\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][149] = 1;
		Printf("Plane %d is using the runway for emergency landing\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 175: // STATE 151 - test.pml:47 - [((8==4))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][151] = 1;
		if (!((8==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 176: // STATE 152 - test.pml:48 - [printf('Plane %d is using the runway for emergency take off\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][152] = 1;
		Printf("Plane %d is using the runway for emergency take off\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 177: // STATE 154 - test.pml:51 - [((8==7))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][154] = 1;
		if (!((8==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 178: // STATE 155 - test.pml:52 - [printf('Plane %d is using the runway for landing\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][155] = 1;
		Printf("Plane %d is using the runway for landing\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 179: // STATE 157 - test.pml:55 - [((8==8))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][157] = 1;
		if (!((8==8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 180: // STATE 158 - test.pml:56 - [printf('Plane %d is using the runway for take off\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][158] = 1;
		Printf("Plane %d is using the runway for take off\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 181: // STATE 162 - test.pml:62 - [((plane_timer>0))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][162] = 1;
		if (!((((P2 *)_this)->plane_timer>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 182: // STATE 163 - test.pml:63 - [printf('Plane %d: Timer %d (s) counts down 1s ...\\n',id,plane_timer)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][163] = 1;
		Printf("Plane %d: Timer %d (s) counts down 1s ...\n", ((P2 *)_this)->id, ((P2 *)_this)->plane_timer);
		_m = 3; goto P999; /* 0 */
	case 183: // STATE 164 - test.pml:64 - [plane_timer = (plane_timer-1)] (0:0:1 - 0)
		IfNotBlocked
		reached[2][164] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->plane_timer;
		((P2 *)_this)->plane_timer = (((P2 *)_this)->plane_timer-1);
#ifdef VAR_RANGES
		logval("RunwayProceduresHandler:plane_timer", ((P2 *)_this)->plane_timer);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 184: // STATE 166 - test.pml:65 - [printf('Plane %d: Finish countdown\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][166] = 1;
		Printf("Plane %d: Finish countdown\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 185: // STATE 171 - test.pml:68 - [printf('Plane %d: Has finished using the runway\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][171] = 1;
		Printf("Plane %d: Has finished using the runway\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 186: // STATE 172 - test.pml:70 - [runway_occupied = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[2][172] = 1;
		(trpt+1)->bup.oval = ((int)now.runway_occupied);
		now.runway_occupied = 0;
#ifdef VAR_RANGES
		logval("runway_occupied", ((int)now.runway_occupied));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 187: // STATE 173 - test.pml:71 - [printf('Plane %d: Has left the runway\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][173] = 1;
		Printf("Plane %d: Has left the runway\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 188: // STATE 174 - test.pml:74 - [(((8==7)||(8==3)))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][174] = 1;
		if (!(((8==7)||(8==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 189: // STATE 175 - test.pml:74 - [c_request_parking!id] (0:0:0 - 0)
		IfNotBlocked
		reached[2][175] = 1;
		if (q_full(now.c_request_parking))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_request_parking);
		sprintf(simtmp, "%d", ((P2 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_request_parking, 0, ((P2 *)_this)->id, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 190: // STATE 176 - test.pml:74 - [printf('Plane %d: Request parking after %e\\n',id,8)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][176] = 1;
		Printf("Plane %d: Request parking after %e\n", ((P2 *)_this)->id, 8);
		_m = 3; goto P999; /* 0 */
	case 191: // STATE 185 - test.pml:288 - [(((isLanding&&(temp_id==id))&&(!(runway_occupied)==1)))] (0:0:2 - 0)
		IfNotBlocked
		reached[2][185] = 1;
		if (!(((((int)((P2 *)_this)->isLanding)&&(((P2 *)_this)->temp_id==((P2 *)_this)->id))&&( !(((int)now.runway_occupied))==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isLanding */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->isLanding;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->isLanding = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: temp_id */  (trpt+1)->bup.ovals[1] = ((P2 *)_this)->temp_id;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->temp_id = 0;
		_m = 3; goto P999; /* 0 */
	case 192: // STATE 186 - test.pml:290 - [printf('Plane %d: RunwayProcedures: landing\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][186] = 1;
		Printf("Plane %d: RunwayProcedures: landing\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 193: // STATE 187 - test.pml:37 - [runway_occupied = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[2][187] = 1;
		(trpt+1)->bup.oval = ((int)now.runway_occupied);
		now.runway_occupied = 1;
#ifdef VAR_RANGES
		logval("runway_occupied", ((int)now.runway_occupied));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 194: // STATE 188 - test.pml:39 - [c_plane_runway_log!id,7,2] (0:0:0 - 0)
		IfNotBlocked
		reached[2][188] = 1;
		if (q_full(now.c_plane_runway_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_runway_log);
		sprintf(simtmp, "%d", ((P2 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_runway_log, 0, ((P2 *)_this)->id, 7, 2, 3);
		_m = 2; goto P999; /* 0 */
	case 195: // STATE 189 - test.pml:40 - [c_plane_log!id,5,2] (0:0:0 - 0)
		IfNotBlocked
		reached[2][189] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P2 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P2 *)_this)->id, 5, 2, 3);
		_m = 2; goto P999; /* 0 */
	case 196: // STATE 190 - test.pml:41 - [printf('Plane %d: Log runway lock\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][190] = 1;
		Printf("Plane %d: Log runway lock\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 197: // STATE 191 - test.pml:43 - [((7==3))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][191] = 1;
		if (!((7==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 198: // STATE 192 - test.pml:44 - [printf('Plane %d is using the runway for emergency landing\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][192] = 1;
		Printf("Plane %d is using the runway for emergency landing\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 199: // STATE 194 - test.pml:47 - [((7==4))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][194] = 1;
		if (!((7==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 200: // STATE 195 - test.pml:48 - [printf('Plane %d is using the runway for emergency take off\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][195] = 1;
		Printf("Plane %d is using the runway for emergency take off\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 201: // STATE 197 - test.pml:51 - [((7==7))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][197] = 1;
		if (!((7==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 202: // STATE 198 - test.pml:52 - [printf('Plane %d is using the runway for landing\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][198] = 1;
		Printf("Plane %d is using the runway for landing\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 203: // STATE 200 - test.pml:55 - [((7==8))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][200] = 1;
		if (!((7==8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 204: // STATE 201 - test.pml:56 - [printf('Plane %d is using the runway for take off\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][201] = 1;
		Printf("Plane %d is using the runway for take off\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 205: // STATE 205 - test.pml:62 - [((plane_timer>0))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][205] = 1;
		if (!((((P2 *)_this)->plane_timer>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 206: // STATE 206 - test.pml:63 - [printf('Plane %d: Timer %d (s) counts down 1s ...\\n',id,plane_timer)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][206] = 1;
		Printf("Plane %d: Timer %d (s) counts down 1s ...\n", ((P2 *)_this)->id, ((P2 *)_this)->plane_timer);
		_m = 3; goto P999; /* 0 */
	case 207: // STATE 207 - test.pml:64 - [plane_timer = (plane_timer-1)] (0:0:1 - 0)
		IfNotBlocked
		reached[2][207] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->plane_timer;
		((P2 *)_this)->plane_timer = (((P2 *)_this)->plane_timer-1);
#ifdef VAR_RANGES
		logval("RunwayProceduresHandler:plane_timer", ((P2 *)_this)->plane_timer);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 208: // STATE 209 - test.pml:65 - [printf('Plane %d: Finish countdown\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][209] = 1;
		Printf("Plane %d: Finish countdown\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 209: // STATE 214 - test.pml:68 - [printf('Plane %d: Has finished using the runway\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][214] = 1;
		Printf("Plane %d: Has finished using the runway\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 210: // STATE 215 - test.pml:70 - [runway_occupied = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[2][215] = 1;
		(trpt+1)->bup.oval = ((int)now.runway_occupied);
		now.runway_occupied = 0;
#ifdef VAR_RANGES
		logval("runway_occupied", ((int)now.runway_occupied));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 211: // STATE 216 - test.pml:71 - [printf('Plane %d: Has left the runway\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][216] = 1;
		Printf("Plane %d: Has left the runway\n", ((P2 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 212: // STATE 217 - test.pml:74 - [(((7==7)||(7==3)))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][217] = 1;
		if (!(((7==7)||(7==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 213: // STATE 218 - test.pml:74 - [c_request_parking!id] (0:0:0 - 0)
		IfNotBlocked
		reached[2][218] = 1;
		if (q_full(now.c_request_parking))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_request_parking);
		sprintf(simtmp, "%d", ((P2 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_request_parking, 0, ((P2 *)_this)->id, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 214: // STATE 219 - test.pml:74 - [printf('Plane %d: Request parking after %e\\n',id,7)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][219] = 1;
		Printf("Plane %d: Request parking after %e\n", ((P2 *)_this)->id, 7);
		_m = 3; goto P999; /* 0 */
	case 215: // STATE 232 - test.pml:297 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[2][232] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC PlaneParkingReplyHandler */
	case 216: // STATE 1 - test.pml:180 - [(isParking)] (0:0:1 - 0)
		IfNotBlocked
		reached[1][1] = 1;
		if (!(((int)((P1 *)_this)->isParking)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isParking */  (trpt+1)->bup.oval = ((P1 *)_this)->isParking;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->isParking = 0;
		_m = 3; goto P999; /* 0 */
	case 217: // STATE 2 - test.pml:181 - [c_reply_parking??id] (0:0:2 - 0)
		reached[1][2] = 1;
		if (q_len(now.c_reply_parking) == 0) continue;

		XX=1;
		if (!(XX = Q_has(now.c_reply_parking, 0, 0, 0, 0, 0, 0))) continue;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = XX;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->id;
		;
		((P1 *)_this)->id = qrecv(now.c_reply_parking, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("PlaneParkingReplyHandler:id", ((P1 *)_this)->id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.c_reply_parking);
			sprintf(simtmp, "%d", ((P1 *)_this)->id); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 218: // STATE 3 - test.pml:182 - [rep_parking = id] (0:0:1 - 0)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->rep_parking;
		((P1 *)_this)->rep_parking = ((P1 *)_this)->id;
#ifdef VAR_RANGES
		logval("PlaneParkingReplyHandler:rep_parking", ((P1 *)_this)->rep_parking);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 219: // STATE 4 - test.pml:183 - [printf('Plane %d: Clear queue parking reply of number %d\\n',id,rep_parking)] (0:0:0 - 0)
		IfNotBlocked
		reached[1][4] = 1;
		Printf("Plane %d: Clear queue parking reply of number %d\n", ((P1 *)_this)->id, ((P1 *)_this)->rep_parking);
		_m = 3; goto P999; /* 0 */
	case 220: // STATE 6 - test.pml:185 - [(!(isParking))] (0:0:1 - 0)
		IfNotBlocked
		reached[1][6] = 1;
		if (!( !(((int)((P1 *)_this)->isParking))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isParking */  (trpt+1)->bup.oval = ((P1 *)_this)->isParking;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->isParking = 0;
		_m = 3; goto P999; /* 0 */
	case 221: // STATE 10 - test.pml:190 - [(((rep_parking==id)&&(!(parking_occupied)==1)))] (0:0:1 - 0)
		IfNotBlocked
		reached[1][10] = 1;
		if (!(((((P1 *)_this)->rep_parking==((P1 *)_this)->id)&&( !(((int)now.parking_occupied))==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: id */  (trpt+1)->bup.oval = ((P1 *)_this)->id;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->id = 0;
		_m = 3; goto P999; /* 0 */
	case 222: // STATE 11 - test.pml:150 - [((len(hangar)<3))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][11] = 1;
		if (!((q_len(now.hangar)<3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 223: // STATE 12 - test.pml:151 - [parking_occupied = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[1][12] = 1;
		(trpt+1)->bup.oval = ((int)now.parking_occupied);
		now.parking_occupied = 1;
#ifdef VAR_RANGES
		logval("parking_occupied", ((int)now.parking_occupied));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 224: // STATE 13 - test.pml:152 - [c_plane_log!rep_parking,6,2] (0:0:0 - 0)
		IfNotBlocked
		reached[1][13] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P1 *)_this)->rep_parking); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P1 *)_this)->rep_parking, 6, 2, 3);
		_m = 2; goto P999; /* 0 */
	case 225: // STATE 14 - test.pml:153 - [printf('Plane %d: Take parking lock\\n',rep_parking)] (0:0:0 - 0)
		IfNotBlocked
		reached[1][14] = 1;
		Printf("Plane %d: Take parking lock\n", ((P1 *)_this)->rep_parking);
		_m = 3; goto P999; /* 0 */
	case 226: // STATE 15 - test.pml:155 - [printf('Plane %d: Hangar size: %d\\n',rep_parking,len(hangar))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][15] = 1;
		Printf("Plane %d: Hangar size: %d\n", ((P1 *)_this)->rep_parking, q_len(now.hangar));
		_m = 3; goto P999; /* 0 */
	case 227: // STATE 16 - test.pml:156 - [hangar!rep_parking] (0:0:0 - 0)
		IfNotBlocked
		reached[1][16] = 1;
		if (q_full(now.hangar))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.hangar);
		sprintf(simtmp, "%d", ((P1 *)_this)->rep_parking); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.hangar, 0, ((P1 *)_this)->rep_parking, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 228: // STATE 17 - test.pml:158 - [c_plane_parking_log!rep_parking,6,5] (0:0:0 - 0)
		IfNotBlocked
		reached[1][17] = 1;
		if (q_full(now.c_plane_parking_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_parking_log);
		sprintf(simtmp, "%d", ((P1 *)_this)->rep_parking); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_parking_log, 0, ((P1 *)_this)->rep_parking, 6, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 229: // STATE 18 - test.pml:159 - [printf('Plane %d: Has parked. Increase hangar size: %d\\n',rep_parking,len(hangar))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][18] = 1;
		Printf("Plane %d: Has parked. Increase hangar size: %d\n", ((P1 *)_this)->rep_parking, q_len(now.hangar));
		_m = 3; goto P999; /* 0 */
	case 230: // STATE 19 - test.pml:160 - [parking_occupied = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[1][19] = 1;
		(trpt+1)->bup.oval = ((int)now.parking_occupied);
		now.parking_occupied = 0;
#ifdef VAR_RANGES
		logval("parking_occupied", ((int)now.parking_occupied));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 231: // STATE 20 - test.pml:162 - [((len(hangar)>=3))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][20] = 1;
		if (!((q_len(now.hangar)>=3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 232: // STATE 21 - test.pml:163 - [parking_occupied = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[1][21] = 1;
		(trpt+1)->bup.oval = ((int)now.parking_occupied);
		now.parking_occupied = 1;
#ifdef VAR_RANGES
		logval("parking_occupied", ((int)now.parking_occupied));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 233: // STATE 22 - test.pml:164 - [c_plane_log!rep_parking,6,2] (0:0:0 - 0)
		IfNotBlocked
		reached[1][22] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P1 *)_this)->rep_parking); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P1 *)_this)->rep_parking, 6, 2, 3);
		_m = 2; goto P999; /* 0 */
	case 234: // STATE 23 - test.pml:165 - [printf('Hangar is full, plane %d is waiting\\n',rep_parking)] (0:0:0 - 0)
		IfNotBlocked
		reached[1][23] = 1;
		Printf("Hangar is full, plane %d is waiting\n", ((P1 *)_this)->rep_parking);
		_m = 3; goto P999; /* 0 */
	case 235: // STATE 24 - test.pml:167 - [c_waiting_parking!rep_parking] (0:0:0 - 0)
		IfNotBlocked
		reached[1][24] = 1;
		if (q_full(now.c_waiting_parking))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_waiting_parking);
		sprintf(simtmp, "%d", ((P1 *)_this)->rep_parking); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_waiting_parking, 0, ((P1 *)_this)->rep_parking, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 236: // STATE 25 - test.pml:168 - [printf('Plane %d: Send parking request to waiting list\\n',rep_parking)] (0:0:0 - 0)
		IfNotBlocked
		reached[1][25] = 1;
		Printf("Plane %d: Send parking request to waiting list\n", ((P1 *)_this)->rep_parking);
		_m = 3; goto P999; /* 0 */
	case 237: // STATE 26 - test.pml:170 - [c_plane_log!rep_parking,6,3] (0:0:0 - 0)
		IfNotBlocked
		reached[1][26] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P1 *)_this)->rep_parking); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P1 *)_this)->rep_parking, 6, 3, 3);
		_m = 2; goto P999; /* 0 */
	case 238: // STATE 27 - test.pml:171 - [c_plane_parking_log!rep_parking,6,3] (0:0:0 - 0)
		IfNotBlocked
		reached[1][27] = 1;
		if (q_full(now.c_plane_parking_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_parking_log);
		sprintf(simtmp, "%d", ((P1 *)_this)->rep_parking); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_parking_log, 0, ((P1 *)_this)->rep_parking, 6, 3, 3);
		_m = 2; goto P999; /* 0 */
	case 239: // STATE 28 - test.pml:172 - [parking_occupied = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[1][28] = 1;
		(trpt+1)->bup.oval = ((int)now.parking_occupied);
		now.parking_occupied = 0;
#ifdef VAR_RANGES
		logval("parking_occupied", ((int)now.parking_occupied));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 240: // STATE 38 - test.pml:195 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[1][38] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC RequestSubmitHandler */
	case 241: // STATE 1 - test.pml:128 - [((isLanding&&isEmergency))] (0:0:2 - 0)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)((P0 *)_this)->isLanding)&&((int)((P0 *)_this)->isEmergency))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isLanding */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->isLanding;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->isLanding = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isEmergency */  (trpt+1)->bup.ovals[1] = ((P0 *)_this)->isEmergency;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->isEmergency = 0;
		_m = 3; goto P999; /* 0 */
	case 242: // STATE 2 - test.pml:84 - [((3==3))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((3==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 243: // STATE 3 - test.pml:85 - [c_request_emergency!id,3] (0:0:0 - 0)
		IfNotBlocked
		reached[0][3] = 1;
		if (q_full(now.c_request_emergency))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_request_emergency);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_request_emergency, 0, ((P0 *)_this)->id, 3, 0, 2);
		_m = 2; goto P999; /* 0 */
	case 244: // STATE 4 - test.pml:86 - [printf('Plane %d: Request to emergency landing\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][4] = 1;
		Printf("Plane %d: Request to emergency landing\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 245: // STATE 5 - test.pml:88 - [c_plane_request_log!id,3,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][5] = 1;
		if (q_full(now.c_plane_request_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_request_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_request_log, 0, ((P0 *)_this)->id, 3, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 246: // STATE 6 - test.pml:89 - [c_plane_log!id,3,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][6] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P0 *)_this)->id, 3, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 247: // STATE 7 - test.pml:90 - [c_emergency_log!id,3,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][7] = 1;
		if (q_full(now.c_emergency_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_emergency_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_emergency_log, 0, ((P0 *)_this)->id, 3, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 248: // STATE 8 - test.pml:91 - [printf('Plane %d: Log emergency landing request\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][8] = 1;
		Printf("Plane %d: Log emergency landing request\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 249: // STATE 10 - test.pml:94 - [((3==4))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((3==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 250: // STATE 11 - test.pml:95 - [c_request_emergency!id,4] (0:0:0 - 0)
		IfNotBlocked
		reached[0][11] = 1;
		if (q_full(now.c_request_emergency))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_request_emergency);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_request_emergency, 0, ((P0 *)_this)->id, 4, 0, 2);
		_m = 2; goto P999; /* 0 */
	case 251: // STATE 12 - test.pml:96 - [printf('Plane %d: Request to emergency takeoff\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][12] = 1;
		Printf("Plane %d: Request to emergency takeoff\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 252: // STATE 13 - test.pml:98 - [c_plane_request_log!id,4,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][13] = 1;
		if (q_full(now.c_plane_request_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_request_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_request_log, 0, ((P0 *)_this)->id, 4, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 253: // STATE 14 - test.pml:99 - [c_plane_log!id,4,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][14] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P0 *)_this)->id, 4, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 254: // STATE 15 - test.pml:100 - [c_emergency_log!id,4,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][15] = 1;
		if (q_full(now.c_emergency_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_emergency_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_emergency_log, 0, ((P0 *)_this)->id, 4, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 255: // STATE 16 - test.pml:101 - [printf('Plane %d: Log emergency takeoff request\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][16] = 1;
		Printf("Plane %d: Log emergency takeoff request\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 256: // STATE 18 - test.pml:104 - [((3==7))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][18] = 1;
		if (!((3==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 257: // STATE 19 - test.pml:105 - [c_request_landing!id] (0:0:0 - 0)
		IfNotBlocked
		reached[0][19] = 1;
		if (q_full(now.c_request_landing))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_request_landing);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_request_landing, 0, ((P0 *)_this)->id, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 258: // STATE 20 - test.pml:106 - [printf('Plane %d: Request to land\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][20] = 1;
		Printf("Plane %d: Request to land\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 259: // STATE 21 - test.pml:108 - [c_plane_request_log!id,7,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][21] = 1;
		if (q_full(now.c_plane_request_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_request_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_request_log, 0, ((P0 *)_this)->id, 7, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 260: // STATE 22 - test.pml:109 - [c_plane_log!id,7,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][22] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P0 *)_this)->id, 7, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 261: // STATE 23 - test.pml:110 - [printf('Plane %d: Log landing request\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][23] = 1;
		Printf("Plane %d: Log landing request\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 262: // STATE 25 - test.pml:113 - [((3==8))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][25] = 1;
		if (!((3==8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 263: // STATE 26 - test.pml:114 - [c_request_takeoff!id] (0:0:0 - 0)
		IfNotBlocked
		reached[0][26] = 1;
		if (q_full(now.c_request_takeoff))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_request_takeoff);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_request_takeoff, 0, ((P0 *)_this)->id, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 264: // STATE 27 - test.pml:115 - [printf('Plane %d: Request to takeoff\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][27] = 1;
		Printf("Plane %d: Request to takeoff\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 265: // STATE 28 - test.pml:117 - [c_plane_request_log!id,8,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][28] = 1;
		if (q_full(now.c_plane_request_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_request_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_request_log, 0, ((P0 *)_this)->id, 8, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 266: // STATE 29 - test.pml:118 - [c_plane_log!id,8,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][29] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P0 *)_this)->id, 8, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 267: // STATE 30 - test.pml:119 - [printf('Plane %d: Log takeoff request\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][30] = 1;
		Printf("Plane %d: Log takeoff request\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 268: // STATE 37 - test.pml:132 - [((!(isLanding)&&isEmergency))] (0:0:2 - 0)
		IfNotBlocked
		reached[0][37] = 1;
		if (!(( !(((int)((P0 *)_this)->isLanding))&&((int)((P0 *)_this)->isEmergency))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isLanding */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->isLanding;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->isLanding = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isEmergency */  (trpt+1)->bup.ovals[1] = ((P0 *)_this)->isEmergency;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->isEmergency = 0;
		_m = 3; goto P999; /* 0 */
	case 269: // STATE 38 - test.pml:84 - [((4==3))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][38] = 1;
		if (!((4==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 270: // STATE 39 - test.pml:85 - [c_request_emergency!id,3] (0:0:0 - 0)
		IfNotBlocked
		reached[0][39] = 1;
		if (q_full(now.c_request_emergency))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_request_emergency);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_request_emergency, 0, ((P0 *)_this)->id, 3, 0, 2);
		_m = 2; goto P999; /* 0 */
	case 271: // STATE 40 - test.pml:86 - [printf('Plane %d: Request to emergency landing\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][40] = 1;
		Printf("Plane %d: Request to emergency landing\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 272: // STATE 41 - test.pml:88 - [c_plane_request_log!id,3,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][41] = 1;
		if (q_full(now.c_plane_request_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_request_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_request_log, 0, ((P0 *)_this)->id, 3, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 273: // STATE 42 - test.pml:89 - [c_plane_log!id,3,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][42] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P0 *)_this)->id, 3, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 274: // STATE 43 - test.pml:90 - [c_emergency_log!id,3,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][43] = 1;
		if (q_full(now.c_emergency_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_emergency_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_emergency_log, 0, ((P0 *)_this)->id, 3, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 275: // STATE 44 - test.pml:91 - [printf('Plane %d: Log emergency landing request\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][44] = 1;
		Printf("Plane %d: Log emergency landing request\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 276: // STATE 46 - test.pml:94 - [((4==4))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][46] = 1;
		if (!((4==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 277: // STATE 47 - test.pml:95 - [c_request_emergency!id,4] (0:0:0 - 0)
		IfNotBlocked
		reached[0][47] = 1;
		if (q_full(now.c_request_emergency))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_request_emergency);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_request_emergency, 0, ((P0 *)_this)->id, 4, 0, 2);
		_m = 2; goto P999; /* 0 */
	case 278: // STATE 48 - test.pml:96 - [printf('Plane %d: Request to emergency takeoff\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][48] = 1;
		Printf("Plane %d: Request to emergency takeoff\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 279: // STATE 49 - test.pml:98 - [c_plane_request_log!id,4,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][49] = 1;
		if (q_full(now.c_plane_request_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_request_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_request_log, 0, ((P0 *)_this)->id, 4, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 280: // STATE 50 - test.pml:99 - [c_plane_log!id,4,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][50] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P0 *)_this)->id, 4, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 281: // STATE 51 - test.pml:100 - [c_emergency_log!id,4,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][51] = 1;
		if (q_full(now.c_emergency_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_emergency_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_emergency_log, 0, ((P0 *)_this)->id, 4, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 282: // STATE 52 - test.pml:101 - [printf('Plane %d: Log emergency takeoff request\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][52] = 1;
		Printf("Plane %d: Log emergency takeoff request\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 283: // STATE 54 - test.pml:104 - [((4==7))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][54] = 1;
		if (!((4==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 284: // STATE 55 - test.pml:105 - [c_request_landing!id] (0:0:0 - 0)
		IfNotBlocked
		reached[0][55] = 1;
		if (q_full(now.c_request_landing))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_request_landing);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_request_landing, 0, ((P0 *)_this)->id, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 285: // STATE 56 - test.pml:106 - [printf('Plane %d: Request to land\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][56] = 1;
		Printf("Plane %d: Request to land\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 286: // STATE 57 - test.pml:108 - [c_plane_request_log!id,7,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][57] = 1;
		if (q_full(now.c_plane_request_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_request_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_request_log, 0, ((P0 *)_this)->id, 7, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 287: // STATE 58 - test.pml:109 - [c_plane_log!id,7,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][58] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P0 *)_this)->id, 7, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 288: // STATE 59 - test.pml:110 - [printf('Plane %d: Log landing request\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][59] = 1;
		Printf("Plane %d: Log landing request\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 289: // STATE 61 - test.pml:113 - [((4==8))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][61] = 1;
		if (!((4==8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 290: // STATE 62 - test.pml:114 - [c_request_takeoff!id] (0:0:0 - 0)
		IfNotBlocked
		reached[0][62] = 1;
		if (q_full(now.c_request_takeoff))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_request_takeoff);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_request_takeoff, 0, ((P0 *)_this)->id, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 291: // STATE 63 - test.pml:115 - [printf('Plane %d: Request to takeoff\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][63] = 1;
		Printf("Plane %d: Request to takeoff\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 292: // STATE 64 - test.pml:117 - [c_plane_request_log!id,8,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][64] = 1;
		if (q_full(now.c_plane_request_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_request_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_request_log, 0, ((P0 *)_this)->id, 8, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 293: // STATE 65 - test.pml:118 - [c_plane_log!id,8,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][65] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P0 *)_this)->id, 8, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 294: // STATE 66 - test.pml:119 - [printf('Plane %d: Log takeoff request\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][66] = 1;
		Printf("Plane %d: Log takeoff request\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 295: // STATE 73 - test.pml:136 - [((isLanding&&!(isEmergency)))] (0:0:2 - 0)
		IfNotBlocked
		reached[0][73] = 1;
		if (!((((int)((P0 *)_this)->isLanding)&& !(((int)((P0 *)_this)->isEmergency)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isLanding */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->isLanding;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->isLanding = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isEmergency */  (trpt+1)->bup.ovals[1] = ((P0 *)_this)->isEmergency;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->isEmergency = 0;
		_m = 3; goto P999; /* 0 */
	case 296: // STATE 74 - test.pml:84 - [((7==3))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][74] = 1;
		if (!((7==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 297: // STATE 75 - test.pml:85 - [c_request_emergency!id,3] (0:0:0 - 0)
		IfNotBlocked
		reached[0][75] = 1;
		if (q_full(now.c_request_emergency))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_request_emergency);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_request_emergency, 0, ((P0 *)_this)->id, 3, 0, 2);
		_m = 2; goto P999; /* 0 */
	case 298: // STATE 76 - test.pml:86 - [printf('Plane %d: Request to emergency landing\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][76] = 1;
		Printf("Plane %d: Request to emergency landing\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 299: // STATE 77 - test.pml:88 - [c_plane_request_log!id,3,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][77] = 1;
		if (q_full(now.c_plane_request_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_request_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_request_log, 0, ((P0 *)_this)->id, 3, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 300: // STATE 78 - test.pml:89 - [c_plane_log!id,3,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][78] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P0 *)_this)->id, 3, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 301: // STATE 79 - test.pml:90 - [c_emergency_log!id,3,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][79] = 1;
		if (q_full(now.c_emergency_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_emergency_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_emergency_log, 0, ((P0 *)_this)->id, 3, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 302: // STATE 80 - test.pml:91 - [printf('Plane %d: Log emergency landing request\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][80] = 1;
		Printf("Plane %d: Log emergency landing request\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 303: // STATE 82 - test.pml:94 - [((7==4))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][82] = 1;
		if (!((7==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 304: // STATE 83 - test.pml:95 - [c_request_emergency!id,4] (0:0:0 - 0)
		IfNotBlocked
		reached[0][83] = 1;
		if (q_full(now.c_request_emergency))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_request_emergency);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_request_emergency, 0, ((P0 *)_this)->id, 4, 0, 2);
		_m = 2; goto P999; /* 0 */
	case 305: // STATE 84 - test.pml:96 - [printf('Plane %d: Request to emergency takeoff\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][84] = 1;
		Printf("Plane %d: Request to emergency takeoff\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 306: // STATE 85 - test.pml:98 - [c_plane_request_log!id,4,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][85] = 1;
		if (q_full(now.c_plane_request_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_request_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_request_log, 0, ((P0 *)_this)->id, 4, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 307: // STATE 86 - test.pml:99 - [c_plane_log!id,4,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][86] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P0 *)_this)->id, 4, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 308: // STATE 87 - test.pml:100 - [c_emergency_log!id,4,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][87] = 1;
		if (q_full(now.c_emergency_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_emergency_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_emergency_log, 0, ((P0 *)_this)->id, 4, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 309: // STATE 88 - test.pml:101 - [printf('Plane %d: Log emergency takeoff request\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][88] = 1;
		Printf("Plane %d: Log emergency takeoff request\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 310: // STATE 90 - test.pml:104 - [((7==7))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][90] = 1;
		if (!((7==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 311: // STATE 91 - test.pml:105 - [c_request_landing!id] (0:0:0 - 0)
		IfNotBlocked
		reached[0][91] = 1;
		if (q_full(now.c_request_landing))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_request_landing);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_request_landing, 0, ((P0 *)_this)->id, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 312: // STATE 92 - test.pml:106 - [printf('Plane %d: Request to land\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][92] = 1;
		Printf("Plane %d: Request to land\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 313: // STATE 93 - test.pml:108 - [c_plane_request_log!id,7,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][93] = 1;
		if (q_full(now.c_plane_request_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_request_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_request_log, 0, ((P0 *)_this)->id, 7, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 314: // STATE 94 - test.pml:109 - [c_plane_log!id,7,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][94] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P0 *)_this)->id, 7, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 315: // STATE 95 - test.pml:110 - [printf('Plane %d: Log landing request\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][95] = 1;
		Printf("Plane %d: Log landing request\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 316: // STATE 97 - test.pml:113 - [((7==8))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][97] = 1;
		if (!((7==8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 317: // STATE 98 - test.pml:114 - [c_request_takeoff!id] (0:0:0 - 0)
		IfNotBlocked
		reached[0][98] = 1;
		if (q_full(now.c_request_takeoff))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_request_takeoff);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_request_takeoff, 0, ((P0 *)_this)->id, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 318: // STATE 99 - test.pml:115 - [printf('Plane %d: Request to takeoff\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][99] = 1;
		Printf("Plane %d: Request to takeoff\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 319: // STATE 100 - test.pml:117 - [c_plane_request_log!id,8,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][100] = 1;
		if (q_full(now.c_plane_request_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_request_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_request_log, 0, ((P0 *)_this)->id, 8, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 320: // STATE 101 - test.pml:118 - [c_plane_log!id,8,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][101] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P0 *)_this)->id, 8, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 321: // STATE 102 - test.pml:119 - [printf('Plane %d: Log takeoff request\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][102] = 1;
		Printf("Plane %d: Log takeoff request\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 322: // STATE 109 - test.pml:140 - [((!(isLanding)&&!(isEmergency)))] (0:0:2 - 0)
		IfNotBlocked
		reached[0][109] = 1;
		if (!(( !(((int)((P0 *)_this)->isLanding))&& !(((int)((P0 *)_this)->isEmergency)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isLanding */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->isLanding;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->isLanding = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isEmergency */  (trpt+1)->bup.ovals[1] = ((P0 *)_this)->isEmergency;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->isEmergency = 0;
		_m = 3; goto P999; /* 0 */
	case 323: // STATE 110 - test.pml:84 - [((8==3))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][110] = 1;
		if (!((8==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 324: // STATE 111 - test.pml:85 - [c_request_emergency!id,3] (0:0:0 - 0)
		IfNotBlocked
		reached[0][111] = 1;
		if (q_full(now.c_request_emergency))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_request_emergency);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_request_emergency, 0, ((P0 *)_this)->id, 3, 0, 2);
		_m = 2; goto P999; /* 0 */
	case 325: // STATE 112 - test.pml:86 - [printf('Plane %d: Request to emergency landing\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][112] = 1;
		Printf("Plane %d: Request to emergency landing\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 326: // STATE 113 - test.pml:88 - [c_plane_request_log!id,3,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][113] = 1;
		if (q_full(now.c_plane_request_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_request_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_request_log, 0, ((P0 *)_this)->id, 3, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 327: // STATE 114 - test.pml:89 - [c_plane_log!id,3,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][114] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P0 *)_this)->id, 3, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 328: // STATE 115 - test.pml:90 - [c_emergency_log!id,3,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][115] = 1;
		if (q_full(now.c_emergency_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_emergency_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_emergency_log, 0, ((P0 *)_this)->id, 3, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 329: // STATE 116 - test.pml:91 - [printf('Plane %d: Log emergency landing request\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][116] = 1;
		Printf("Plane %d: Log emergency landing request\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 330: // STATE 118 - test.pml:94 - [((8==4))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][118] = 1;
		if (!((8==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 331: // STATE 119 - test.pml:95 - [c_request_emergency!id,4] (0:0:0 - 0)
		IfNotBlocked
		reached[0][119] = 1;
		if (q_full(now.c_request_emergency))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_request_emergency);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_request_emergency, 0, ((P0 *)_this)->id, 4, 0, 2);
		_m = 2; goto P999; /* 0 */
	case 332: // STATE 120 - test.pml:96 - [printf('Plane %d: Request to emergency takeoff\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][120] = 1;
		Printf("Plane %d: Request to emergency takeoff\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 333: // STATE 121 - test.pml:98 - [c_plane_request_log!id,4,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][121] = 1;
		if (q_full(now.c_plane_request_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_request_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_request_log, 0, ((P0 *)_this)->id, 4, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 334: // STATE 122 - test.pml:99 - [c_plane_log!id,4,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][122] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P0 *)_this)->id, 4, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 335: // STATE 123 - test.pml:100 - [c_emergency_log!id,4,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][123] = 1;
		if (q_full(now.c_emergency_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_emergency_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_emergency_log, 0, ((P0 *)_this)->id, 4, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 336: // STATE 124 - test.pml:101 - [printf('Plane %d: Log emergency takeoff request\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][124] = 1;
		Printf("Plane %d: Log emergency takeoff request\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 337: // STATE 126 - test.pml:104 - [((8==7))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][126] = 1;
		if (!((8==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 338: // STATE 127 - test.pml:105 - [c_request_landing!id] (0:0:0 - 0)
		IfNotBlocked
		reached[0][127] = 1;
		if (q_full(now.c_request_landing))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_request_landing);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_request_landing, 0, ((P0 *)_this)->id, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 339: // STATE 128 - test.pml:106 - [printf('Plane %d: Request to land\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][128] = 1;
		Printf("Plane %d: Request to land\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 340: // STATE 129 - test.pml:108 - [c_plane_request_log!id,7,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][129] = 1;
		if (q_full(now.c_plane_request_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_request_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_request_log, 0, ((P0 *)_this)->id, 7, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 341: // STATE 130 - test.pml:109 - [c_plane_log!id,7,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][130] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P0 *)_this)->id, 7, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 342: // STATE 131 - test.pml:110 - [printf('Plane %d: Log landing request\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][131] = 1;
		Printf("Plane %d: Log landing request\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 343: // STATE 133 - test.pml:113 - [((8==8))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][133] = 1;
		if (!((8==8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 344: // STATE 134 - test.pml:114 - [c_request_takeoff!id] (0:0:0 - 0)
		IfNotBlocked
		reached[0][134] = 1;
		if (q_full(now.c_request_takeoff))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_request_takeoff);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_request_takeoff, 0, ((P0 *)_this)->id, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 345: // STATE 135 - test.pml:115 - [printf('Plane %d: Request to takeoff\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][135] = 1;
		Printf("Plane %d: Request to takeoff\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 346: // STATE 136 - test.pml:117 - [c_plane_request_log!id,8,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][136] = 1;
		if (q_full(now.c_plane_request_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_request_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_request_log, 0, ((P0 *)_this)->id, 8, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 347: // STATE 137 - test.pml:118 - [c_plane_log!id,8,5] (0:0:0 - 0)
		IfNotBlocked
		reached[0][137] = 1;
		if (q_full(now.c_plane_log))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c_plane_log);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c_plane_log, 0, ((P0 *)_this)->id, 8, 5, 3);
		_m = 2; goto P999; /* 0 */
	case 348: // STATE 138 - test.pml:119 - [printf('Plane %d: Log takeoff request\\n',id)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][138] = 1;
		Printf("Plane %d: Log takeoff request\n", ((P0 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 349: // STATE 148 - test.pml:145 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[0][148] = 1;
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

