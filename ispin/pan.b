	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		((P6 *)_this)->_26_11_isLanding = trpt->bup.oval;
		;
		goto R999;

	case 4: // STATE 2
		;
		((P6 *)_this)->_26_11_isEmergency = trpt->bup.oval;
		;
		goto R999;

	case 5: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 6: // STATE 4
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 7: // STATE 5
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 8: // STATE 6
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 9: // STATE 7
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 10: // STATE 8
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 11: // STATE 9
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 12: // STATE 10
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 13: // STATE 11
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 14: // STATE 12
		;
	/* 1 */	((P6 *)_this)->_26_11_isEmergency = trpt->bup.ovals[1];
	/* 0 */	((P6 *)_this)->_26_11_isLanding = trpt->bup.ovals[0];
		;
		delproc(0, now._nr_pr-1);
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 15: // STATE 14
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC ControlTower */
;
		;
		
	case 17: // STATE 2
		;
		now.runway_occupied = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 3
		;
		XX = 1;
		((P5 *)_this)->plane_id = trpt->bup.ovals[0];
		((P5 *)_this)->op = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 21: // STATE 6
		;
		_m = unsend(now.c_tower_log);
		;
		goto R999;

	case 22: // STATE 7
		;
	/* 0 */	((P5 *)_this)->op = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 24: // STATE 9
		;
	/* 0 */	((P5 *)_this)->plane_id = trpt->bup.oval;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 25: // STATE 11
		;
	/* 0 */	((P5 *)_this)->op = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 27: // STATE 13
		;
	/* 0 */	((P5 *)_this)->plane_id = trpt->bup.oval;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;
;
		;
		
	case 29: // STATE 20
		;
		XX = 1;
		((P5 *)_this)->plane_id = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 30: // STATE 21
		;
	/* 0 */	((P5 *)_this)->plane_id = trpt->bup.oval;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 31: // STATE 23
		;
		XX = 1;
		((P5 *)_this)->plane_id = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 32: // STATE 24
		;
	/* 0 */	((P5 *)_this)->plane_id = trpt->bup.oval;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;
;
		;
		
	case 34: // STATE 27
		;
		XX = 1;
		unrecv(now.c_request_parking, XX-1, 0, ((P5 *)_this)->plane_id, 1);
		((P5 *)_this)->plane_id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 36: // STATE 29
		;
		_m = unsend(now.c_reply_parking);
		;
		goto R999;
;
		;
		
	case 38: // STATE 31
		;
		_m = unsend(now.c_tower_log);
		;
		goto R999;
;
		;
		
	case 40: // STATE 43
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC TowerOperationRequestHandler */
;
		;
		
	case 42: // STATE 2
		;
	/* 0 */	((P4 *)_this)->op = trpt->bup.oval;
		;
		;
		goto R999;

	case 43: // STATE 3
		;
		XX = 1;
		unrecv(((P4 *)_this)->c_request, XX-1, 0, ((P4 *)_this)->plane_id, 1);
		unrecv(((P4 *)_this)->c_request, XX-1, 1, 3, 0);
		((P4 *)_this)->plane_id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 45: // STATE 5
		;
		_m = unsend(((P4 *)_this)->c_reply);
		;
		goto R999;
;
		;
		
	case 47: // STATE 7
		;
		_m = unsend(now.c_tower_reply_log);
		;
		goto R999;

	case 48: // STATE 8
		;
		_m = unsend(now.c_tower_log);
		;
		goto R999;

	case 49: // STATE 9
		;
		_m = unsend(now.c_emergency_log);
		;
		goto R999;
;
		;
		
	case 51: // STATE 14
		;
	/* 0 */	((P4 *)_this)->op = trpt->bup.oval;
		;
		;
		goto R999;

	case 52: // STATE 15
		;
		XX = 1;
		unrecv(((P4 *)_this)->c_request, XX-1, 0, ((P4 *)_this)->plane_id, 1);
		unrecv(((P4 *)_this)->c_request, XX-1, 1, 4, 0);
		((P4 *)_this)->plane_id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 54: // STATE 17
		;
		_m = unsend(((P4 *)_this)->c_reply);
		;
		goto R999;
;
		;
		
	case 56: // STATE 19
		;
		_m = unsend(now.c_tower_reply_log);
		;
		goto R999;

	case 57: // STATE 20
		;
		_m = unsend(now.c_tower_log);
		;
		goto R999;

	case 58: // STATE 21
		;
		_m = unsend(now.c_emergency_log);
		;
		goto R999;
;
		;
		;
		;
		
	case 61: // STATE 30
		;
	/* 0 */	((P4 *)_this)->op = trpt->bup.oval;
		;
		;
		goto R999;

	case 62: // STATE 31
		;
		XX = 1;
		unrecv(((P4 *)_this)->c_request, XX-1, 0, ((P4 *)_this)->plane_id, 1);
		((P4 *)_this)->plane_id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 64: // STATE 33
		;
		_m = unsend(((P4 *)_this)->c_reply);
		;
		goto R999;
;
		;
		
	case 66: // STATE 35
		;
		_m = unsend(now.c_tower_reply_log);
		;
		goto R999;

	case 67: // STATE 36
		;
		_m = unsend(now.c_tower_log);
		;
		goto R999;
;
		;
		
	case 69: // STATE 41
		;
	/* 0 */	((P4 *)_this)->op = trpt->bup.oval;
		;
		;
		goto R999;

	case 70: // STATE 42
		;
		XX = 1;
		unrecv(((P4 *)_this)->c_request, XX-1, 0, ((P4 *)_this)->plane_id, 1);
		((P4 *)_this)->plane_id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 72: // STATE 44
		;
		_m = unsend(((P4 *)_this)->c_reply);
		;
		goto R999;
;
		;
		
	case 74: // STATE 46
		;
		_m = unsend(now.c_tower_reply_log);
		;
		goto R999;

	case 75: // STATE 47
		;
		_m = unsend(now.c_tower_log);
		;
		goto R999;
;
		;
		;
		;
		
	case 78: // STATE 56
		;
	/* 0 */	((P4 *)_this)->op = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 80: // STATE 59
		;
	/* 0 */	((P4 *)_this)->op = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 82: // STATE 68
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Plane */

	case 83: // STATE 1
		;
		((P3 *)_this)->plane_timer = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 85: // STATE 3
		;
		((P3 *)_this)->plane_timer = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 87: // STATE 9
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 88: // STATE 10
		;
	/* 2 */	((P3 *)_this)->plane_timer = trpt->bup.ovals[2];
	/* 1 */	((P3 *)_this)->isEmergency = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->isLanding = trpt->bup.ovals[0];
		;
		delproc(0, now._nr_pr-1);
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 89: // STATE 11
		;
	/* 2 */	((P3 *)_this)->rep_parking = trpt->bup.ovals[2];
	/* 1 */	((P3 *)_this)->id = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->isParking = trpt->bup.ovals[0];
		;
		delproc(0, now._nr_pr-1);
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 90: // STATE 12
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC RunwayProceduresHandler */
;
		;
		
	case 92: // STATE 2
		;
		XX = 1;
		((P2 *)_this)->temp_id = trpt->bup.ovals[0];
		((P2 *)_this)->temp_op = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 93: // STATE 3
		;
	/* 0 */	((P2 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;

	case 94: // STATE 4
		;
		XX = 1;
		unrecv(now.c_reply_emergency, XX-1, 0, ((P2 *)_this)->id, 1);
		unrecv(now.c_reply_emergency, XX-1, 1, 3, 0);
		((P2 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 96: // STATE 7
		;
	/* 0 */	((P2 *)_this)->temp_id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 99: // STATE 15
		;
		XX = 1;
		((P2 *)_this)->temp_id = trpt->bup.ovals[0];
		((P2 *)_this)->temp_op = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 100: // STATE 16
		;
	/* 0 */	((P2 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;

	case 101: // STATE 17
		;
		XX = 1;
		unrecv(now.c_reply_emergency, XX-1, 0, ((P2 *)_this)->id, 1);
		unrecv(now.c_reply_emergency, XX-1, 1, 4, 0);
		((P2 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 103: // STATE 20
		;
	/* 0 */	((P2 *)_this)->temp_id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 106: // STATE 28
		;
		XX = 1;
		((P2 *)_this)->temp_id = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 107: // STATE 29
		;
	/* 0 */	((P2 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;

	case 108: // STATE 30
		;
		XX = 1;
		unrecv(now.c_reply_landing, XX-1, 0, ((P2 *)_this)->id, 1);
		((P2 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 110: // STATE 33
		;
	/* 0 */	((P2 *)_this)->temp_id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 113: // STATE 41
		;
		XX = 1;
		((P2 *)_this)->temp_id = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 114: // STATE 42
		;
	/* 0 */	((P2 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;

	case 115: // STATE 43
		;
		XX = 1;
		unrecv(now.c_reply_takeoff, XX-1, 0, ((P2 *)_this)->id, 1);
		((P2 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 117: // STATE 46
		;
	/* 0 */	((P2 *)_this)->temp_id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 119: // STATE 56
		;
	/* 0 */	((P2 *)_this)->temp_id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 121: // STATE 58
		;
		now.runway_occupied = trpt->bup.oval;
		;
		goto R999;

	case 122: // STATE 59
		;
		_m = unsend(now.c_plane_runway_log);
		;
		goto R999;

	case 123: // STATE 60
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 135: // STATE 78
		;
		((P2 *)_this)->plane_timer = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 138: // STATE 86
		;
		now.runway_occupied = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 141: // STATE 89
		;
		_m = unsend(now.c_request_parking);
		;
		goto R999;
;
		;
		
	case 143: // STATE 99
		;
	/* 0 */	((P2 *)_this)->temp_id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 145: // STATE 101
		;
		now.runway_occupied = trpt->bup.oval;
		;
		goto R999;

	case 146: // STATE 102
		;
		_m = unsend(now.c_plane_runway_log);
		;
		goto R999;

	case 147: // STATE 103
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 159: // STATE 121
		;
		((P2 *)_this)->plane_timer = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 162: // STATE 129
		;
		now.runway_occupied = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 165: // STATE 132
		;
		_m = unsend(now.c_request_parking);
		;
		goto R999;
;
		;
		
	case 167: // STATE 142
		;
	/* 1 */	((P2 *)_this)->temp_id = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->isLanding = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 169: // STATE 144
		;
		now.runway_occupied = trpt->bup.oval;
		;
		goto R999;

	case 170: // STATE 145
		;
		_m = unsend(now.c_plane_runway_log);
		;
		goto R999;

	case 171: // STATE 146
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 183: // STATE 164
		;
		((P2 *)_this)->plane_timer = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 186: // STATE 172
		;
		now.runway_occupied = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 189: // STATE 175
		;
		_m = unsend(now.c_request_parking);
		;
		goto R999;
;
		;
		
	case 191: // STATE 185
		;
	/* 1 */	((P2 *)_this)->temp_id = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->isLanding = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 193: // STATE 187
		;
		now.runway_occupied = trpt->bup.oval;
		;
		goto R999;

	case 194: // STATE 188
		;
		_m = unsend(now.c_plane_runway_log);
		;
		goto R999;

	case 195: // STATE 189
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 207: // STATE 207
		;
		((P2 *)_this)->plane_timer = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 210: // STATE 215
		;
		now.runway_occupied = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 213: // STATE 218
		;
		_m = unsend(now.c_request_parking);
		;
		goto R999;
;
		;
		
	case 215: // STATE 232
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC PlaneParkingReplyHandler */

	case 216: // STATE 1
		;
	/* 0 */	((P1 *)_this)->isParking = trpt->bup.oval;
		;
		;
		goto R999;

	case 217: // STATE 2
		;
		XX = trpt->bup.ovals[0];
		unrecv(now.c_reply_parking, XX-1, 0, ((P1 *)_this)->id, 1);
		((P1 *)_this)->id = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 218: // STATE 3
		;
		((P1 *)_this)->rep_parking = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 220: // STATE 6
		;
	/* 0 */	((P1 *)_this)->isParking = trpt->bup.oval;
		;
		;
		goto R999;

	case 221: // STATE 10
		;
	/* 0 */	((P1 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 223: // STATE 12
		;
		now.parking_occupied = trpt->bup.oval;
		;
		goto R999;

	case 224: // STATE 13
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;
;
		;
		;
		;
		
	case 227: // STATE 16
		;
		_m = unsend(now.hangar);
		;
		goto R999;

	case 228: // STATE 17
		;
		_m = unsend(now.c_plane_parking_log);
		;
		goto R999;
;
		;
		
	case 230: // STATE 19
		;
		now.parking_occupied = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 232: // STATE 21
		;
		now.parking_occupied = trpt->bup.oval;
		;
		goto R999;

	case 233: // STATE 22
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;
;
		;
		
	case 235: // STATE 24
		;
		_m = unsend(now.c_waiting_parking);
		;
		goto R999;
;
		;
		
	case 237: // STATE 26
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;

	case 238: // STATE 27
		;
		_m = unsend(now.c_plane_parking_log);
		;
		goto R999;

	case 239: // STATE 28
		;
		now.parking_occupied = trpt->bup.oval;
		;
		goto R999;

	case 240: // STATE 38
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC RequestSubmitHandler */

	case 241: // STATE 1
		;
	/* 1 */	((P0 *)_this)->isEmergency = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->isLanding = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 243: // STATE 3
		;
		_m = unsend(now.c_request_emergency);
		;
		goto R999;
;
		;
		
	case 245: // STATE 5
		;
		_m = unsend(now.c_plane_request_log);
		;
		goto R999;

	case 246: // STATE 6
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;

	case 247: // STATE 7
		;
		_m = unsend(now.c_emergency_log);
		;
		goto R999;
;
		;
		;
		;
		
	case 250: // STATE 11
		;
		_m = unsend(now.c_request_emergency);
		;
		goto R999;
;
		;
		
	case 252: // STATE 13
		;
		_m = unsend(now.c_plane_request_log);
		;
		goto R999;

	case 253: // STATE 14
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;

	case 254: // STATE 15
		;
		_m = unsend(now.c_emergency_log);
		;
		goto R999;
;
		;
		;
		;
		
	case 257: // STATE 19
		;
		_m = unsend(now.c_request_landing);
		;
		goto R999;
;
		;
		
	case 259: // STATE 21
		;
		_m = unsend(now.c_plane_request_log);
		;
		goto R999;

	case 260: // STATE 22
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;
;
		;
		;
		;
		
	case 263: // STATE 26
		;
		_m = unsend(now.c_request_takeoff);
		;
		goto R999;
;
		;
		
	case 265: // STATE 28
		;
		_m = unsend(now.c_plane_request_log);
		;
		goto R999;

	case 266: // STATE 29
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;
;
		;
		
	case 268: // STATE 37
		;
	/* 1 */	((P0 *)_this)->isEmergency = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->isLanding = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 270: // STATE 39
		;
		_m = unsend(now.c_request_emergency);
		;
		goto R999;
;
		;
		
	case 272: // STATE 41
		;
		_m = unsend(now.c_plane_request_log);
		;
		goto R999;

	case 273: // STATE 42
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;

	case 274: // STATE 43
		;
		_m = unsend(now.c_emergency_log);
		;
		goto R999;
;
		;
		;
		;
		
	case 277: // STATE 47
		;
		_m = unsend(now.c_request_emergency);
		;
		goto R999;
;
		;
		
	case 279: // STATE 49
		;
		_m = unsend(now.c_plane_request_log);
		;
		goto R999;

	case 280: // STATE 50
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;

	case 281: // STATE 51
		;
		_m = unsend(now.c_emergency_log);
		;
		goto R999;
;
		;
		;
		;
		
	case 284: // STATE 55
		;
		_m = unsend(now.c_request_landing);
		;
		goto R999;
;
		;
		
	case 286: // STATE 57
		;
		_m = unsend(now.c_plane_request_log);
		;
		goto R999;

	case 287: // STATE 58
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;
;
		;
		;
		;
		
	case 290: // STATE 62
		;
		_m = unsend(now.c_request_takeoff);
		;
		goto R999;
;
		;
		
	case 292: // STATE 64
		;
		_m = unsend(now.c_plane_request_log);
		;
		goto R999;

	case 293: // STATE 65
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;
;
		;
		
	case 295: // STATE 73
		;
	/* 1 */	((P0 *)_this)->isEmergency = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->isLanding = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 297: // STATE 75
		;
		_m = unsend(now.c_request_emergency);
		;
		goto R999;
;
		;
		
	case 299: // STATE 77
		;
		_m = unsend(now.c_plane_request_log);
		;
		goto R999;

	case 300: // STATE 78
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;

	case 301: // STATE 79
		;
		_m = unsend(now.c_emergency_log);
		;
		goto R999;
;
		;
		;
		;
		
	case 304: // STATE 83
		;
		_m = unsend(now.c_request_emergency);
		;
		goto R999;
;
		;
		
	case 306: // STATE 85
		;
		_m = unsend(now.c_plane_request_log);
		;
		goto R999;

	case 307: // STATE 86
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;

	case 308: // STATE 87
		;
		_m = unsend(now.c_emergency_log);
		;
		goto R999;
;
		;
		;
		;
		
	case 311: // STATE 91
		;
		_m = unsend(now.c_request_landing);
		;
		goto R999;
;
		;
		
	case 313: // STATE 93
		;
		_m = unsend(now.c_plane_request_log);
		;
		goto R999;

	case 314: // STATE 94
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;
;
		;
		;
		;
		
	case 317: // STATE 98
		;
		_m = unsend(now.c_request_takeoff);
		;
		goto R999;
;
		;
		
	case 319: // STATE 100
		;
		_m = unsend(now.c_plane_request_log);
		;
		goto R999;

	case 320: // STATE 101
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;
;
		;
		
	case 322: // STATE 109
		;
	/* 1 */	((P0 *)_this)->isEmergency = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->isLanding = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 324: // STATE 111
		;
		_m = unsend(now.c_request_emergency);
		;
		goto R999;
;
		;
		
	case 326: // STATE 113
		;
		_m = unsend(now.c_plane_request_log);
		;
		goto R999;

	case 327: // STATE 114
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;

	case 328: // STATE 115
		;
		_m = unsend(now.c_emergency_log);
		;
		goto R999;
;
		;
		;
		;
		
	case 331: // STATE 119
		;
		_m = unsend(now.c_request_emergency);
		;
		goto R999;
;
		;
		
	case 333: // STATE 121
		;
		_m = unsend(now.c_plane_request_log);
		;
		goto R999;

	case 334: // STATE 122
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;

	case 335: // STATE 123
		;
		_m = unsend(now.c_emergency_log);
		;
		goto R999;
;
		;
		;
		;
		
	case 338: // STATE 127
		;
		_m = unsend(now.c_request_landing);
		;
		goto R999;
;
		;
		
	case 340: // STATE 129
		;
		_m = unsend(now.c_plane_request_log);
		;
		goto R999;

	case 341: // STATE 130
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;
;
		;
		;
		;
		
	case 344: // STATE 134
		;
		_m = unsend(now.c_request_takeoff);
		;
		goto R999;
;
		;
		
	case 346: // STATE 136
		;
		_m = unsend(now.c_plane_request_log);
		;
		goto R999;

	case 347: // STATE 137
		;
		_m = unsend(now.c_plane_log);
		;
		goto R999;
;
		;
		
	case 349: // STATE 148
		;
		p_restor(II);
		;
		;
		goto R999;
	}

