#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#else
#define tr_2_src(m,f,l)
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(8*sizeof(Trans **));

	/* proctype 6: :init: */

	trans[6] = (Trans **) emalloc(15*sizeof(Trans *));

	T = trans[ 6][13] = settr(553,2,0,0,0,"ATOMIC", 0, 2, 0);
		/* test.pml:459 */
	T->nxt	= settr(553,2,1,0,0,"ATOMIC", 0, 2, 0);
		/* test.pml:459 */
	trans[6][1]	= settr(541,2,2,3,3,"isLanding = 1", 0, 2, 0);
		tr_2_src(3, "test.pml", 461);
	trans[6][2]	= settr(542,2,3,4,4,"isEmergency = 1", 0, 2, 0);
		tr_2_src(4, "test.pml", 463);
	trans[6][3]	= settr(543,2,4,5,5,"(run ControlTower())", 0, 2, 0);
		tr_2_src(5, "test.pml", 463);
	trans[6][4]	= settr(544,2,5,6,6,"(run Plane(1,isLanding,isEmergency))", 0, 2, 0);
		tr_2_src(6, "test.pml", 466);
	trans[6][5]	= settr(545,2,6,7,7,"(run Plane(2,!(isLanding),!(isEmergency)))", 0, 2, 0);
		tr_2_src(7, "test.pml", 467);
	trans[6][6]	= settr(546,2,7,8,8,"(run Plane(3,isLanding,!(isEmergency)))", 0, 2, 0);
		tr_2_src(8, "test.pml", 468);
	trans[6][7]	= settr(547,2,8,9,9,"(run Plane(4,!(isLanding),!(isEmergency)))", 0, 2, 0);
		tr_2_src(9, "test.pml", 469);
	trans[6][8]	= settr(548,2,9,10,10,"(run Plane(5,isLanding,!(isEmergency)))", 0, 2, 0);
		tr_2_src(10, "test.pml", 470);
	trans[6][9]	= settr(549,2,10,11,11,"(run Plane(6,!(isLanding),!(isEmergency)))", 0, 2, 0);
		tr_2_src(11, "test.pml", 471);
	trans[6][10]	= settr(550,2,11,12,12,"(run Plane(7,isLanding,!(isEmergency)))", 0, 2, 0);
		tr_2_src(12, "test.pml", 472);
	trans[6][11]	= settr(551,2,12,13,13,"(run Plane(8,!(isLanding),!(isEmergency)))", 0, 2, 0);
		tr_2_src(13, "test.pml", 473);
	trans[6][12]	= settr(552,0,14,14,14,"(run Plane(9,isLanding,!(isEmergency)))", 0, 2, 0);
		tr_2_src(14, "test.pml", 474);
	trans[6][14]	= settr(554,0,0,15,15,"-end-", 0, 3500, 0);
		tr_2_src(15, "test.pml", 477);

	/* proctype 5: ControlTower */

	trans[5] = (Trans **) emalloc(44*sizeof(Trans *));

	trans[5][41]	= settr(538,0,40,1,0,".(goto)", 0, 2, 0);
	T = trans[5][40] = settr(537,0,0,0,0,"DO", 0, 2, 0);
		/* test.pml:414 */
	T = T->nxt	= settr(537,0,1,0,0,"DO", 0, 2, 0);
		/* test.pml:414 */
	    T->nxt	= settr(537,0,19,0,0,"DO", 0, 2, 0);
		/* test.pml:414 */
	trans[5][1]	= settr(498,0,18,16,0,"(((len(c_request_emergency)>0)&&(runway_occupied==0)))", 1, 2, 0);
		tr_2_src(16, "test.pml", 415);
	T = trans[ 5][18] = settr(515,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* test.pml:416 */
	T->nxt	= settr(515,2,2,0,0,"ATOMIC", 1, 507, 17);
		/* test.pml:416 */
	trans[5][2]	= settr(499,2,3,17,17,"runway_occupied = 1", 1, 507, 17);
		tr_2_src(17, "test.pml", 417);
	trans[5][3]	= settr(500,2,4,18,18,"c_request_emergency?<plane_id,op>", 1, 507, 17);
		tr_2_src(18, "test.pml", 419);
	trans[5][4]	= settr(501,2,5,19,0,"printf('Tower: Check emergency request: plane %d %e\\n',plane_id,op)", 1, 507, 17);
		tr_2_src(19, "test.pml", 420);
	trans[5][5]	= settr(502,2,6,20,0,"printf('Tower: Lock runway for emergency\\n')", 1, 507, 17);
		tr_2_src(20, "test.pml", 422);
	trans[5][6]	= settr(503,2,15,21,21,"c_tower_log!plane_id,2,2", 1, 507, 17);
		tr_2_src(21, "test.pml", 423);
	T = trans[5][15] = settr(512,2,0,0,0,"IF", 1, 507, 17);
		/* test.pml:424 */
	T = T->nxt	= settr(512,2,7,0,0,"IF", 1, 507, 17);
		/* test.pml:424 */
	    T->nxt	= settr(512,2,11,0,0,"IF", 1, 507, 17);
		/* test.pml:424 */
	trans[5][7]	= settr(504,2,8,22,22,"((op==3))", 1, 507, 17);
		tr_2_src(22, "test.pml", 425);
	trans[5][8]	= settr(505,2,9,23,0,"printf('Tower: Handle emergency landing request\\n')", 1, 507, 17);
		tr_2_src(23, "test.pml", 426);
	trans[5][9]	= settr(506,2,10,24,24,"(run TowerOperationRequestHandler(plane_id,c_request_emergency,c_reply_emergency,3))", 1, 507, 17);
		tr_2_src(24, "test.pml", 427);
	trans[5][10]	= settr(507,2,16,1,0,"(1)", 1, 507, 17);
	trans[5][16]	= settr(513,2,17,1,0,".(goto)", 1, 507, 17);
	trans[5][11]	= settr(508,2,12,25,25,"((op==4))", 1, 507, 17);
		tr_2_src(25, "test.pml", 430);
	trans[5][12]	= settr(509,2,13,26,0,"printf('Tower: Handle emergency takeoff request\\n')", 1, 507, 17);
		tr_2_src(26, "test.pml", 431);
	trans[5][13]	= settr(510,2,14,27,27,"(run TowerOperationRequestHandler(plane_id,c_request_emergency,c_reply_emergency,4))", 1, 507, 17);
		tr_2_src(27, "test.pml", 432);
	trans[5][14]	= settr(511,2,16,1,0,"(1)", 1, 507, 17);
	trans[5][17]	= settr(514,0,40,1,0,"(1)", 1, 507, 17);
	trans[5][19]	= settr(516,0,39,28,0,"(((len(c_request_emergency)<=0)&&(runway_occupied==0)))", 1, 2, 0);
		tr_2_src(28, "test.pml", 437);
	T = trans[ 5][39] = settr(536,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* test.pml:438 */
	T->nxt	= settr(536,2,36,0,0,"ATOMIC", 1, 504, 505);
		/* test.pml:438 */
	T = trans[5][36] = settr(533,2,0,0,0,"IF", 1, 504, 505);
		/* test.pml:439 */
	T = T->nxt	= settr(533,2,20,0,0,"IF", 1, 504, 505);
		/* test.pml:439 */
	T = T->nxt	= settr(533,2,23,0,0,"IF", 1, 504, 505);
		/* test.pml:439 */
	    T->nxt	= settr(533,2,26,0,0,"IF", 1, 504, 505);
		/* test.pml:439 */
	trans[5][20]	= settr(517,2,21,29,29,"c_request_landing?<plane_id>", 1, 504, 505);
		tr_2_src(29, "test.pml", 440);
	trans[5][21]	= settr(518,2,22,30,30,"(run TowerOperationRequestHandler(plane_id,c_request_landing,c_reply_landing,7))", 1, 504, 505);
		tr_2_src(30, "test.pml", 441);
	trans[5][22]	= settr(519,2,37,1,0,"(1)", 1, 504, 505);
	trans[5][37]	= settr(534,2,38,1,0,".(goto)", 1, 504, 505);
	trans[5][23]	= settr(520,2,24,31,31,"c_request_takeoff?<plane_id>", 1, 504, 505);
		tr_2_src(31, "test.pml", 444);
	trans[5][24]	= settr(521,2,25,32,32,"(run TowerOperationRequestHandler(plane_id,c_request_takeoff,c_reply_takeoff,8))", 1, 504, 505);
		tr_2_src(32, "test.pml", 445);
	trans[5][25]	= settr(522,2,37,1,0,"(1)", 1, 504, 505);
	trans[5][26]	= settr(523,2,34,33,0,"((len(c_request_parking)>0))", 1, 504, 505);
		tr_2_src(33, "test.pml", 448);
	T = trans[ 5][34] = settr(531,0,0,0,0,"sub-sequence", 1, 504, 505);
		/* test.pml:397 */
	T->nxt	= settr(531,0,33,0,0,"sub-sequence", 1, 504, 505);
		/* test.pml:397 */
	T = trans[ 5][33] = settr(530,0,0,0,0,"sub-sequence", 1, 504, 505);
		/* test.pml:398 */
	T->nxt	= settr(530,0,27,0,0,"sub-sequence", 1, 504, 505);
		/* test.pml:398 */
	trans[5][27]	= settr(524,2,28,34,34,"c_request_parking?plane_id", 1, 504, 505);
		tr_2_src(34, "test.pml", 399);
	trans[5][28]	= settr(525,2,29,35,0,"printf('Tower: Clear queue request for plane %d parking\\n',plane_id)", 1, 504, 505);
		tr_2_src(35, "test.pml", 400);
	trans[5][29]	= settr(526,2,30,36,36,"c_reply_parking!plane_id", 1, 504, 505);
		tr_2_src(36, "test.pml", 402);
	trans[5][30]	= settr(527,2,31,37,0,"printf('Tower: Reply to Plane %d parking\\n',plane_id)", 1, 504, 505);
		tr_2_src(37, "test.pml", 403);
	trans[5][31]	= settr(528,2,32,38,38,"c_tower_log!plane_id,6,4", 1, 504, 505);
		tr_2_src(38, "test.pml", 405);
	trans[5][32]	= settr(529,2,35,39,0,"printf('Tower: Log plane %d parking reply\\n',plane_id)", 1, 504, 505);
		tr_2_src(39, "test.pml", 406);
	trans[5][35]	= settr(532,2,37,1,0,"(1)", 1, 504, 505);
	trans[5][38]	= settr(535,0,40,1,0,"(1)", 1, 504, 505);
	trans[5][42]	= settr(539,0,43,1,0,"break", 0, 2, 0);
	trans[5][43]	= settr(540,0,0,40,40,"-end-", 0, 3500, 0);
		tr_2_src(40, "test.pml", 455);

	/* proctype 4: TowerOperationRequestHandler */

	trans[4] = (Trans **) emalloc(69*sizeof(Trans *));

	T = trans[ 4][67] = settr(496,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* test.pml:358 */
	T->nxt	= settr(496,2,65,0,0,"ATOMIC", 1, 2, 0);
		/* test.pml:358 */
	T = trans[4][65] = settr(494,2,0,0,0,"IF", 1, 2, 0);
		/* test.pml:359 */
	T = T->nxt	= settr(494,2,1,0,0,"IF", 1, 2, 0);
		/* test.pml:359 */
	T = T->nxt	= settr(494,2,29,0,0,"IF", 1, 2, 0);
		/* test.pml:359 */
	    T->nxt	= settr(494,2,55,0,0,"IF", 1, 2, 0);
		/* test.pml:359 */
	trans[4][1]	= settr(430,2,26,41,0,"(((runway_occupied==1)&&((op==3)||(op==4))))", 1, 2, 0);
		tr_2_src(41, "test.pml", 360);
	T = trans[4][26] = settr(455,2,0,0,0,"IF", 1, 2, 0);
		/* test.pml:361 */
	T = T->nxt	= settr(455,2,2,0,0,"IF", 1, 2, 0);
		/* test.pml:361 */
	    T->nxt	= settr(455,2,14,0,0,"IF", 1, 2, 0);
		/* test.pml:361 */
	trans[4][2]	= settr(431,2,12,42,42,"((op==3))", 1, 2, 0);
		tr_2_src(42, "test.pml", 362);
	T = trans[ 4][12] = settr(441,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:342 */
	T->nxt	= settr(441,0,11,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:342 */
	T = trans[ 4][11] = settr(440,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:343 */
	T->nxt	= settr(440,0,3,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:343 */
	trans[4][3]	= settr(432,2,4,43,43,"c_request?plane_id,3", 1, 520, 0);
		tr_2_src(43, "test.pml", 344);
	trans[4][4]	= settr(433,2,5,44,0,"printf('Tower: Clear queue request for plane %d %e\\n',plane_id,3)", 1, 2, 0);
		tr_2_src(44, "test.pml", 345);
	trans[4][5]	= settr(434,2,6,45,45,"c_reply!plane_id,3", 1, 21, 0);
		tr_2_src(45, "test.pml", 347);
	trans[4][6]	= settr(435,2,7,46,0,"printf('Tower: Reply to plane %d %e\\n',plane_id,3)", 1, 2, 0);
		tr_2_src(46, "test.pml", 348);
	trans[4][7]	= settr(436,2,8,47,47,"c_tower_reply_log!plane_id,3,4", 1, 18, 0);
		tr_2_src(47, "test.pml", 350);
	trans[4][8]	= settr(437,2,9,48,48,"c_tower_log!plane_id,3,4", 1, 17, 0);
		tr_2_src(48, "test.pml", 351);
	trans[4][9]	= settr(438,2,10,49,49,"c_emergency_log!plane_id,3,4", 1, 19, 0);
		tr_2_src(49, "test.pml", 352);
	trans[4][10]	= settr(439,2,13,50,0,"printf('Tower: Log plane %d %e reply\\n',plane_id,3)", 1, 2, 0);
		tr_2_src(50, "test.pml", 353);
	trans[4][13]	= settr(442,2,28,1,0,"(1)", 1, 2, 0);
	trans[4][27]	= settr(456,2,28,1,0,".(goto)", 1, 2, 0);
	trans[4][14]	= settr(443,2,24,51,51,"((op==4))", 1, 2, 0);
		tr_2_src(51, "test.pml", 366);
	T = trans[ 4][24] = settr(453,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:342 */
	T->nxt	= settr(453,0,23,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:342 */
	T = trans[ 4][23] = settr(452,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:343 */
	T->nxt	= settr(452,0,15,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:343 */
	trans[4][15]	= settr(444,2,16,52,52,"c_request?plane_id,4", 1, 520, 0);
		tr_2_src(52, "test.pml", 344);
	trans[4][16]	= settr(445,2,17,53,0,"printf('Tower: Clear queue request for plane %d %e\\n',plane_id,4)", 1, 2, 0);
		tr_2_src(53, "test.pml", 345);
	trans[4][17]	= settr(446,2,18,54,54,"c_reply!plane_id,4", 1, 21, 0);
		tr_2_src(54, "test.pml", 347);
	trans[4][18]	= settr(447,2,19,55,0,"printf('Tower: Reply to plane %d %e\\n',plane_id,4)", 1, 2, 0);
		tr_2_src(55, "test.pml", 348);
	trans[4][19]	= settr(448,2,20,56,56,"c_tower_reply_log!plane_id,4,4", 1, 18, 0);
		tr_2_src(56, "test.pml", 350);
	trans[4][20]	= settr(449,2,21,57,57,"c_tower_log!plane_id,4,4", 1, 17, 0);
		tr_2_src(57, "test.pml", 351);
	trans[4][21]	= settr(450,2,22,58,58,"c_emergency_log!plane_id,4,4", 1, 19, 0);
		tr_2_src(58, "test.pml", 352);
	trans[4][22]	= settr(451,2,25,59,0,"printf('Tower: Log plane %d %e reply\\n',plane_id,4)", 1, 2, 0);
		tr_2_src(59, "test.pml", 353);
	trans[4][25]	= settr(454,2,28,1,0,"(1)", 1, 2, 0);
	trans[4][28]	= settr(457,2,66,1,0,"(1)", 1, 2, 0);
	trans[4][66]	= settr(495,0,68,1,0,".(goto)", 1, 2, 0);
	trans[4][29]	= settr(458,2,52,60,0,"((((runway_occupied==0)&&((op!=3)&&(op!=4)))&&(len(c_request_emergency)<=0)))", 1, 2, 0);
		tr_2_src(60, "test.pml", 372);
	T = trans[4][52] = settr(481,2,0,0,0,"IF", 1, 2, 0);
		/* test.pml:373 */
	T = T->nxt	= settr(481,2,30,0,0,"IF", 1, 2, 0);
		/* test.pml:373 */
	    T->nxt	= settr(481,2,41,0,0,"IF", 1, 2, 0);
		/* test.pml:373 */
	trans[4][30]	= settr(459,2,39,61,61,"((op==7))", 1, 2, 0);
		tr_2_src(61, "test.pml", 374);
	T = trans[ 4][39] = settr(468,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:314 */
	T->nxt	= settr(468,0,38,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:314 */
	T = trans[ 4][38] = settr(467,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:315 */
	T->nxt	= settr(467,0,31,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:315 */
	trans[4][31]	= settr(460,2,32,62,62,"c_request?plane_id", 1, 520, 0);
		tr_2_src(62, "test.pml", 316);
	trans[4][32]	= settr(461,2,33,63,0,"printf('Tower: Clear queue request for plane %d landing\\n',plane_id)", 1, 2, 0);
		tr_2_src(63, "test.pml", 317);
	trans[4][33]	= settr(462,2,34,64,64,"c_reply!plane_id", 1, 21, 0);
		tr_2_src(64, "test.pml", 319);
	trans[4][34]	= settr(463,2,35,65,0,"printf('Tower: Reply to plane %d landing\\n',plane_id)", 1, 2, 0);
		tr_2_src(65, "test.pml", 320);
	trans[4][35]	= settr(464,2,36,66,66,"c_tower_reply_log!plane_id,7,4", 1, 18, 0);
		tr_2_src(66, "test.pml", 322);
	trans[4][36]	= settr(465,2,37,67,67,"c_tower_log!plane_id,7,4", 1, 17, 0);
		tr_2_src(67, "test.pml", 323);
	trans[4][37]	= settr(466,2,40,68,0,"printf('Tower: Log plane %d landing reply\\n',plane_id)", 1, 2, 0);
		tr_2_src(68, "test.pml", 324);
	trans[4][40]	= settr(469,2,54,1,0,"(1)", 1, 2, 0);
	trans[4][53]	= settr(482,2,54,1,0,".(goto)", 1, 2, 0);
	trans[4][41]	= settr(470,2,50,69,69,"((op==8))", 1, 2, 0);
		tr_2_src(69, "test.pml", 377);
	T = trans[ 4][50] = settr(479,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:328 */
	T->nxt	= settr(479,0,49,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:328 */
	T = trans[ 4][49] = settr(478,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:329 */
	T->nxt	= settr(478,0,42,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:329 */
	trans[4][42]	= settr(471,2,43,70,70,"c_request?plane_id", 1, 520, 0);
		tr_2_src(70, "test.pml", 330);
	trans[4][43]	= settr(472,2,44,71,0,"printf('Tower: Clear queue request for plane %d takeoff\\n',plane_id)", 1, 2, 0);
		tr_2_src(71, "test.pml", 331);
	trans[4][44]	= settr(473,2,45,72,72,"c_reply!plane_id", 1, 21, 0);
		tr_2_src(72, "test.pml", 333);
	trans[4][45]	= settr(474,2,46,73,0,"printf('Tower: Reply to plane %d takeoff\\n',plane_id)", 1, 2, 0);
		tr_2_src(73, "test.pml", 334);
	trans[4][46]	= settr(475,2,47,74,74,"c_tower_reply_log!plane_id,8,4", 1, 18, 0);
		tr_2_src(74, "test.pml", 336);
	trans[4][47]	= settr(476,2,48,75,75,"c_tower_log!plane_id,8,4", 1, 17, 0);
		tr_2_src(75, "test.pml", 337);
	trans[4][48]	= settr(477,2,51,76,0,"printf('Tower: Log plane %d takeoff reply\\n',plane_id)", 1, 2, 0);
		tr_2_src(76, "test.pml", 338);
	trans[4][51]	= settr(480,2,54,1,0,"(1)", 1, 2, 0);
	trans[4][54]	= settr(483,2,66,1,0,"(1)", 1, 2, 0);
	trans[4][55]	= settr(484,2,62,77,0,"((((runway_occupied==1)&&((op!=3)&&(op!=4)))||(len(c_reply_emergency)>0)))", 1, 2, 0);
		tr_2_src(77, "test.pml", 383);
	T = trans[4][62] = settr(491,2,0,0,0,"IF", 1, 2, 0);
		/* test.pml:384 */
	T = T->nxt	= settr(491,2,56,0,0,"IF", 1, 2, 0);
		/* test.pml:384 */
	    T->nxt	= settr(491,2,59,0,0,"IF", 1, 2, 0);
		/* test.pml:384 */
	trans[4][56]	= settr(485,2,57,78,78,"((op==7))", 1, 2, 0);
		tr_2_src(78, "test.pml", 385);
	trans[4][57]	= settr(486,2,58,79,0,"printf('Tower: Runway busy, cannot reply for plane %d landing',plane_id)", 1, 2, 0);
		tr_2_src(79, "test.pml", 386);
	trans[4][58]	= settr(487,2,64,1,0,"(1)", 1, 2, 0);
	trans[4][63]	= settr(492,2,64,1,0,".(goto)", 1, 2, 0);
	trans[4][59]	= settr(488,2,60,80,80,"((op==8))", 1, 2, 0);
		tr_2_src(80, "test.pml", 388);
	trans[4][60]	= settr(489,2,61,81,0,"printf('Tower: Runway busy, cannot reply for plane %d takeoff',plane_id)", 1, 2, 0);
		tr_2_src(81, "test.pml", 389);
	trans[4][61]	= settr(490,2,64,1,0,"(1)", 1, 2, 0);
	trans[4][64]	= settr(493,2,66,1,0,"(1)", 1, 2, 0);
	trans[4][68]	= settr(497,0,0,82,82,"-end-", 0, 3500, 0);
		tr_2_src(82, "test.pml", 395);

	/* proctype 3: Plane */

	trans[3] = (Trans **) emalloc(13*sizeof(Trans *));

	trans[3][1]	= settr(418,0,5,83,83,"plane_timer = 1", 0, 2, 0);
		tr_2_src(83, "test.pml", 304);
	trans[3][6]	= settr(423,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[3][5] = settr(422,0,0,0,0,"DO", 0, 2, 0);
		/* test.pml:304 */
	T = T->nxt	= settr(422,0,4,0,0,"DO", 0, 2, 0);
		/* test.pml:304 */
	    T->nxt	= settr(422,0,2,0,0,"DO", 0, 2, 0);
		/* test.pml:304 */
	trans[3][4]	= settr(421,0,8,1,0,"goto :b7", 0, 2, 0);
	trans[3][2]	= settr(419,0,3,84,0,"((plane_timer<10))", 0, 2, 0);
		tr_2_src(84, "test.pml", 304);
	trans[3][3]	= settr(420,0,5,85,85,"plane_timer = (plane_timer+1)", 0, 2, 0);
		tr_2_src(85, "test.pml", 304);
	trans[3][7]	= settr(424,0,8,1,0,"break", 0, 2, 0);
	trans[3][8]	= settr(425,0,9,86,0,"printf('Plane %d: timer: %d (s)\\n',id,plane_timer)", 0, 2, 0);
		tr_2_src(86, "test.pml", 305);
	trans[3][9]	= settr(426,0,10,87,87,"(run RequestSubmitHandler(isLanding,isEmergency,id))", 0, 2, 0);
		tr_2_src(87, "test.pml", 307);
	trans[3][10]	= settr(427,0,11,88,88,"(run RunwayProceduresHandler(isLanding,isEmergency,id,plane_timer))", 1, 2, 0);
		tr_2_src(88, "test.pml", 309);
	trans[3][11]	= settr(428,0,12,89,89,"(run PlaneParkingReplyHandler(isParking,id,rep_parking))", 0, 2, 0);
		tr_2_src(89, "test.pml", 311);
	trans[3][12]	= settr(429,0,0,90,90,"-end-", 0, 3500, 0);
		tr_2_src(90, "test.pml", 312);

	/* proctype 2: RunwayProceduresHandler */

	trans[2] = (Trans **) emalloc(233*sizeof(Trans *));

	trans[2][54]	= settr(239,0,53,1,0,".(goto)", 0, 2, 0);
	T = trans[2][53] = settr(238,0,0,0,0,"DO", 0, 2, 0);
		/* test.pml:202 */
	T = T->nxt	= settr(238,0,1,0,0,"DO", 0, 2, 0);
		/* test.pml:202 */
	T = T->nxt	= settr(238,0,14,0,0,"DO", 0, 2, 0);
		/* test.pml:202 */
	T = T->nxt	= settr(238,0,27,0,0,"DO", 0, 2, 0);
		/* test.pml:202 */
	    T->nxt	= settr(238,0,40,0,0,"DO", 0, 2, 0);
		/* test.pml:202 */
	trans[2][1]	= settr(186,0,13,91,0,"((isLanding&&isEmergency))", 0, 2, 0);
		tr_2_src(91, "test.pml", 203);
	T = trans[ 2][13] = settr(198,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* test.pml:204 */
	T->nxt	= settr(198,2,2,0,0,"ATOMIC", 1, 511, 0);
		/* test.pml:204 */
	trans[2][2]	= settr(187,2,10,92,92,"c_reply_emergency?<temp_id,temp_op>", 1, 511, 0);
		tr_2_src(92, "test.pml", 205);
	T = trans[2][10] = settr(195,2,0,0,0,"IF", 1, 511, 0);
		/* test.pml:206 */
	T = T->nxt	= settr(195,2,3,0,0,"IF", 1, 511, 0);
		/* test.pml:206 */
	    T->nxt	= settr(195,2,7,0,0,"IF", 1, 511, 0);
		/* test.pml:206 */
	trans[2][3]	= settr(188,2,4,93,93,"(((temp_id==id)&&(temp_op==3)))", 1, 511, 0);
		tr_2_src(93, "test.pml", 207);
	trans[2][4]	= settr(189,2,5,94,94,"c_reply_emergency?id,3", 1, 511, 0);
		tr_2_src(94, "test.pml", 208);
	trans[2][5]	= settr(190,2,6,95,0,"printf('Plane %d: Clear queue emergency landing reply\\n',id)", 1, 511, 0);
		tr_2_src(95, "test.pml", 209);
	trans[2][6]	= settr(191,0,231,1,0,"goto :b1", 1, 511, 0);
	trans[2][11]	= settr(196,2,12,1,0,".(goto)", 1, 511, 0);
	trans[2][7]	= settr(192,2,8,96,96,"(((temp_id!=id)||(temp_op!=3)))", 1, 511, 0);
		tr_2_src(96, "test.pml", 212);
	trans[2][8]	= settr(193,2,9,97,0,"printf('Plane %d: Waiting for emergency landing reply\\n',id)", 1, 511, 0);
		tr_2_src(97, "test.pml", 213);
	trans[2][9]	= settr(194,2,11,1,0,"(1)", 1, 511, 0);
	trans[2][12]	= settr(197,0,53,1,0,"(1)", 1, 511, 0);
	trans[2][14]	= settr(199,0,26,98,0,"((!(isLanding)&&isEmergency))", 0, 2, 0);
		tr_2_src(98, "test.pml", 218);
	T = trans[ 2][26] = settr(211,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* test.pml:219 */
	T->nxt	= settr(211,2,15,0,0,"ATOMIC", 1, 511, 0);
		/* test.pml:219 */
	trans[2][15]	= settr(200,2,23,99,99,"c_reply_emergency?<temp_id,temp_op>", 1, 511, 0);
		tr_2_src(99, "test.pml", 219);
	T = trans[2][23] = settr(208,2,0,0,0,"IF", 1, 511, 0);
		/* test.pml:220 */
	T = T->nxt	= settr(208,2,16,0,0,"IF", 1, 511, 0);
		/* test.pml:220 */
	    T->nxt	= settr(208,2,20,0,0,"IF", 1, 511, 0);
		/* test.pml:220 */
	trans[2][16]	= settr(201,2,17,100,100,"(((id==temp_id)&&(temp_op==4)))", 1, 511, 0);
		tr_2_src(100, "test.pml", 221);
	trans[2][17]	= settr(202,2,18,101,101,"c_reply_emergency?id,4", 1, 511, 0);
		tr_2_src(101, "test.pml", 222);
	trans[2][18]	= settr(203,2,19,102,0,"printf('Plane %d: Clear queue emergency takeoff reply\\n',id)", 1, 511, 0);
		tr_2_src(102, "test.pml", 223);
	trans[2][19]	= settr(204,0,231,1,0,"goto :b1", 1, 511, 0);
	trans[2][24]	= settr(209,2,25,1,0,".(goto)", 1, 511, 0);
	trans[2][20]	= settr(205,2,21,103,103,"(((temp_id!=id)||(temp_op!=4)))", 1, 511, 0);
		tr_2_src(103, "test.pml", 226);
	trans[2][21]	= settr(206,2,22,104,0,"printf('Plane %d: Waiting for emergency takeoff reply\\n',id)", 1, 511, 0);
		tr_2_src(104, "test.pml", 227);
	trans[2][22]	= settr(207,2,24,1,0,"(1)", 1, 511, 0);
	trans[2][25]	= settr(210,0,53,1,0,"(1)", 1, 511, 0);
	trans[2][27]	= settr(212,0,39,105,0,"((isLanding&&!(isEmergency)))", 0, 2, 0);
		tr_2_src(105, "test.pml", 233);
	T = trans[ 2][39] = settr(224,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* test.pml:234 */
	T->nxt	= settr(224,2,28,0,0,"ATOMIC", 1, 508, 0);
		/* test.pml:234 */
	trans[2][28]	= settr(213,2,36,106,106,"c_reply_landing?<temp_id>", 1, 508, 0);
		tr_2_src(106, "test.pml", 235);
	T = trans[2][36] = settr(221,2,0,0,0,"IF", 1, 508, 0);
		/* test.pml:236 */
	T = T->nxt	= settr(221,2,29,0,0,"IF", 1, 508, 0);
		/* test.pml:236 */
	    T->nxt	= settr(221,2,33,0,0,"IF", 1, 508, 0);
		/* test.pml:236 */
	trans[2][29]	= settr(214,2,30,107,107,"((temp_id==id))", 1, 508, 0);
		tr_2_src(107, "test.pml", 237);
	trans[2][30]	= settr(215,2,31,108,108,"c_reply_landing?id", 1, 508, 0);
		tr_2_src(108, "test.pml", 238);
	trans[2][31]	= settr(216,2,32,109,0,"printf('Plane %d: Clear queue landing reply\\n',id)", 1, 508, 0);
		tr_2_src(109, "test.pml", 239);
	trans[2][32]	= settr(217,0,231,1,0,"goto :b1", 1, 508, 0);
	trans[2][37]	= settr(222,2,38,1,0,".(goto)", 1, 508, 0);
	trans[2][33]	= settr(218,2,34,110,110,"((temp_id!=id))", 1, 508, 0);
		tr_2_src(110, "test.pml", 241);
	trans[2][34]	= settr(219,2,35,111,0,"printf('Plane %d: Waiting for landing reply\\n',id)", 1, 508, 0);
		tr_2_src(111, "test.pml", 242);
	trans[2][35]	= settr(220,2,37,1,0,"(1)", 1, 508, 0);
	trans[2][38]	= settr(223,0,53,1,0,"(1)", 1, 508, 0);
	trans[2][40]	= settr(225,0,52,112,0,"((!(isLanding)&&!(isEmergency)))", 0, 2, 0);
		tr_2_src(112, "test.pml", 248);
	T = trans[ 2][52] = settr(237,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* test.pml:249 */
	T->nxt	= settr(237,2,41,0,0,"ATOMIC", 1, 509, 0);
		/* test.pml:249 */
	trans[2][41]	= settr(226,2,49,113,113,"c_reply_takeoff?<temp_id>", 1, 509, 0);
		tr_2_src(113, "test.pml", 250);
	T = trans[2][49] = settr(234,2,0,0,0,"IF", 1, 509, 0);
		/* test.pml:251 */
	T = T->nxt	= settr(234,2,42,0,0,"IF", 1, 509, 0);
		/* test.pml:251 */
	    T->nxt	= settr(234,2,46,0,0,"IF", 1, 509, 0);
		/* test.pml:251 */
	trans[2][42]	= settr(227,2,43,114,114,"((temp_id==id))", 1, 509, 0);
		tr_2_src(114, "test.pml", 252);
	trans[2][43]	= settr(228,2,44,115,115,"c_reply_takeoff?id", 1, 509, 0);
		tr_2_src(115, "test.pml", 253);
	trans[2][44]	= settr(229,2,45,116,0,"printf('Plane %d: Clear queue takeoff reply\\n',id)", 1, 509, 0);
		tr_2_src(116, "test.pml", 254);
	trans[2][45]	= settr(230,0,231,1,0,"goto :b1", 1, 509, 0);
	trans[2][50]	= settr(235,2,51,1,0,".(goto)", 1, 509, 0);
	trans[2][46]	= settr(231,2,47,117,117,"((temp_id!=id))", 1, 509, 0);
		tr_2_src(117, "test.pml", 256);
	trans[2][47]	= settr(232,2,48,118,0,"printf('Plane %d: Waiting for takeoff reply\\n',id)", 1, 509, 0);
		tr_2_src(118, "test.pml", 257);
	trans[2][48]	= settr(233,2,50,1,0,"(1)", 1, 509, 0);
	trans[2][51]	= settr(236,0,53,1,0,"(1)", 1, 509, 0);
	trans[2][55]	= settr(240,0,231,1,0,"break", 0, 2, 0);
	T = trans[ 2][231] = settr(416,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* test.pml:265 */
	T->nxt	= settr(416,2,228,0,0,"ATOMIC", 1, 2, 0);
		/* test.pml:265 */
	trans[2][229]	= settr(414,2,228,1,0,".(goto)", 1, 2, 0);
	T = trans[2][228] = settr(413,2,0,0,0,"DO", 1, 2, 0);
		/* test.pml:266 */
	T = T->nxt	= settr(413,2,56,0,0,"DO", 1, 2, 0);
		/* test.pml:266 */
	T = T->nxt	= settr(413,2,99,0,0,"DO", 1, 2, 0);
		/* test.pml:266 */
	T = T->nxt	= settr(413,2,142,0,0,"DO", 1, 2, 0);
		/* test.pml:266 */
	    T->nxt	= settr(413,2,185,0,0,"DO", 1, 2, 0);
		/* test.pml:266 */
	trans[2][56]	= settr(241,2,98,119,119,"((((temp_id==id)&&(temp_op==3))&&(runway_occupied==1)))", 1, 2, 0);
		tr_2_src(119, "test.pml", 267);
	T = trans[ 2][98] = settr(283,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:268 */
	T->nxt	= settr(283,0,57,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:268 */
	trans[2][57]	= settr(242,2,96,120,0,"printf('Plane %d: RunwayProcedures: %e\\n',id,temp_op)", 1, 2, 0);
		tr_2_src(120, "test.pml", 269);
	T = trans[ 2][96] = settr(281,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:35 */
	T->nxt	= settr(281,0,95,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:35 */
	T = trans[ 2][95] = settr(280,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:36 */
	T->nxt	= settr(280,0,58,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:36 */
	trans[2][58]	= settr(243,2,59,121,121,"runway_occupied = 1", 1, 2, 0);
		tr_2_src(121, "test.pml", 37);
	trans[2][59]	= settr(244,2,60,122,122,"c_plane_runway_log!id,3,2", 1, 16, 0);
		tr_2_src(122, "test.pml", 39);
	trans[2][60]	= settr(245,2,61,123,123,"c_plane_log!id,5,2", 1, 13, 0);
		tr_2_src(123, "test.pml", 40);
	trans[2][61]	= settr(246,2,74,124,0,"printf('Plane %d: Log runway lock\\n',id)", 1, 2, 0);
		tr_2_src(124, "test.pml", 41);
	T = trans[2][74] = settr(259,2,0,0,0,"IF", 1, 2, 0);
		/* test.pml:42 */
	T = T->nxt	= settr(259,2,62,0,0,"IF", 1, 2, 0);
		/* test.pml:42 */
	T = T->nxt	= settr(259,2,65,0,0,"IF", 1, 2, 0);
		/* test.pml:42 */
	T = T->nxt	= settr(259,2,68,0,0,"IF", 1, 2, 0);
		/* test.pml:42 */
	    T->nxt	= settr(259,2,71,0,0,"IF", 1, 2, 0);
		/* test.pml:42 */
	trans[2][62]	= settr(247,2,63,125,0,"((3==3))", 1, 2, 0);
		tr_2_src(125, "test.pml", 43);
	trans[2][63]	= settr(248,2,64,126,0,"printf('Plane %d is using the runway for emergency landing\\n',id)", 1, 2, 0);
		tr_2_src(126, "test.pml", 44);
	trans[2][64]	= settr(249,2,82,1,0,"(1)", 1, 2, 0);
	trans[2][75]	= settr(260,2,82,1,0,".(goto)", 1, 2, 0);
	trans[2][65]	= settr(250,2,66,127,0,"((3==4))", 1, 2, 0);
		tr_2_src(127, "test.pml", 47);
	trans[2][66]	= settr(251,2,67,128,0,"printf('Plane %d is using the runway for emergency take off\\n',id)", 1, 2, 0);
		tr_2_src(128, "test.pml", 48);
	trans[2][67]	= settr(252,2,82,1,0,"(1)", 1, 2, 0);
	trans[2][68]	= settr(253,2,69,129,0,"((3==7))", 1, 2, 0);
		tr_2_src(129, "test.pml", 51);
	trans[2][69]	= settr(254,2,70,130,0,"printf('Plane %d is using the runway for landing\\n',id)", 1, 2, 0);
		tr_2_src(130, "test.pml", 52);
	trans[2][70]	= settr(255,2,82,1,0,"(1)", 1, 2, 0);
	trans[2][71]	= settr(256,2,72,131,0,"((3==8))", 1, 2, 0);
		tr_2_src(131, "test.pml", 55);
	trans[2][72]	= settr(257,2,73,132,0,"printf('Plane %d is using the runway for take off\\n',id)", 1, 2, 0);
		tr_2_src(132, "test.pml", 56);
	trans[2][73]	= settr(258,2,82,1,0,"(1)", 1, 2, 0);
	trans[2][83]	= settr(268,2,82,1,0,".(goto)", 1, 2, 0);
	T = trans[2][82] = settr(267,2,0,0,0,"DO", 1, 2, 0);
		/* test.pml:61 */
	T = T->nxt	= settr(267,2,76,0,0,"DO", 1, 2, 0);
		/* test.pml:61 */
	    T->nxt	= settr(267,2,79,0,0,"DO", 1, 2, 0);
		/* test.pml:61 */
	trans[2][76]	= settr(261,2,77,133,0,"((plane_timer>0))", 1, 2, 0);
		tr_2_src(133, "test.pml", 62);
	trans[2][77]	= settr(262,2,78,134,0,"printf('Plane %d: Timer %d (s) counts down 1s ...\\n',id,plane_timer)", 1, 2, 0);
		tr_2_src(134, "test.pml", 63);
	trans[2][78]	= settr(263,2,82,135,135,"plane_timer = (plane_timer-1)", 1, 2, 0);
		tr_2_src(135, "test.pml", 64);
	trans[2][79]	= settr(264,2,80,2,0,"else", 1, 2, 0);
	trans[2][80]	= settr(265,2,85,136,0,"printf('Plane %d: Finish countdown\\n',id)", 1, 2, 0);
		tr_2_src(136, "test.pml", 65);
	trans[2][81]	= settr(266,2,85,1,0,"goto :b3", 1, 2, 0);
	trans[2][84]	= settr(269,2,85,1,0,"break", 1, 2, 0);
	trans[2][85]	= settr(270,2,86,137,0,"printf('Plane %d: Has finished using the runway\\n',id)", 1, 2, 0);
		tr_2_src(137, "test.pml", 68);
	trans[2][86]	= settr(271,2,87,138,138,"runway_occupied = 0", 1, 2, 0);
		tr_2_src(138, "test.pml", 70);
	trans[2][87]	= settr(272,2,93,139,0,"printf('Plane %d: Has left the runway\\n',id)", 1, 2, 0);
		tr_2_src(139, "test.pml", 71);
	T = trans[2][93] = settr(278,2,0,0,0,"IF", 1, 2, 0);
		/* test.pml:73 */
	T = T->nxt	= settr(278,2,88,0,0,"IF", 1, 2, 0);
		/* test.pml:73 */
	    T->nxt	= settr(278,2,91,0,0,"IF", 1, 2, 0);
		/* test.pml:73 */
	trans[2][88]	= settr(273,2,89,140,0,"(((3==7)||(3==3)))", 1, 2, 0);
		tr_2_src(140, "test.pml", 74);
	trans[2][89]	= settr(274,2,90,141,141,"c_request_parking!id", 1, 6, 0);
		tr_2_src(141, "test.pml", 74);
	trans[2][90]	= settr(275,2,97,142,0,"printf('Plane %d: Request parking after %e\\n',id,3)", 1, 2, 0);
		tr_2_src(142, "test.pml", 74);
	trans[2][94]	= settr(279,2,97,1,0,".(goto)", 1, 2, 0);
	trans[2][91]	= settr(276,2,92,2,0,"else", 1, 2, 0);
	trans[2][92]	= settr(277,2,97,1,0,"(1)", 1, 2, 0);
	trans[2][97]	= settr(282,2,230,1,0,"goto :b2", 1, 2, 0);
	trans[2][99]	= settr(284,2,141,143,143,"((((temp_id==id)&&(temp_op==4))&&(runway_occupied==1)))", 1, 2, 0);
		tr_2_src(143, "test.pml", 274);
	T = trans[ 2][141] = settr(326,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:275 */
	T->nxt	= settr(326,0,100,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:275 */
	trans[2][100]	= settr(285,2,139,144,0,"printf('Plane %d: RunwayProcedures: %e\\n',id,temp_op)", 1, 2, 0);
		tr_2_src(144, "test.pml", 276);
	T = trans[ 2][139] = settr(324,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:35 */
	T->nxt	= settr(324,0,138,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:35 */
	T = trans[ 2][138] = settr(323,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:36 */
	T->nxt	= settr(323,0,101,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:36 */
	trans[2][101]	= settr(286,2,102,145,145,"runway_occupied = 1", 1, 2, 0);
		tr_2_src(145, "test.pml", 37);
	trans[2][102]	= settr(287,2,103,146,146,"c_plane_runway_log!id,4,2", 1, 16, 0);
		tr_2_src(146, "test.pml", 39);
	trans[2][103]	= settr(288,2,104,147,147,"c_plane_log!id,5,2", 1, 13, 0);
		tr_2_src(147, "test.pml", 40);
	trans[2][104]	= settr(289,2,117,148,0,"printf('Plane %d: Log runway lock\\n',id)", 1, 2, 0);
		tr_2_src(148, "test.pml", 41);
	T = trans[2][117] = settr(302,2,0,0,0,"IF", 1, 2, 0);
		/* test.pml:42 */
	T = T->nxt	= settr(302,2,105,0,0,"IF", 1, 2, 0);
		/* test.pml:42 */
	T = T->nxt	= settr(302,2,108,0,0,"IF", 1, 2, 0);
		/* test.pml:42 */
	T = T->nxt	= settr(302,2,111,0,0,"IF", 1, 2, 0);
		/* test.pml:42 */
	    T->nxt	= settr(302,2,114,0,0,"IF", 1, 2, 0);
		/* test.pml:42 */
	trans[2][105]	= settr(290,2,106,149,0,"((4==3))", 1, 2, 0);
		tr_2_src(149, "test.pml", 43);
	trans[2][106]	= settr(291,2,107,150,0,"printf('Plane %d is using the runway for emergency landing\\n',id)", 1, 2, 0);
		tr_2_src(150, "test.pml", 44);
	trans[2][107]	= settr(292,2,125,1,0,"(1)", 1, 2, 0);
	trans[2][118]	= settr(303,2,125,1,0,".(goto)", 1, 2, 0);
	trans[2][108]	= settr(293,2,109,151,0,"((4==4))", 1, 2, 0);
		tr_2_src(151, "test.pml", 47);
	trans[2][109]	= settr(294,2,110,152,0,"printf('Plane %d is using the runway for emergency take off\\n',id)", 1, 2, 0);
		tr_2_src(152, "test.pml", 48);
	trans[2][110]	= settr(295,2,125,1,0,"(1)", 1, 2, 0);
	trans[2][111]	= settr(296,2,112,153,0,"((4==7))", 1, 2, 0);
		tr_2_src(153, "test.pml", 51);
	trans[2][112]	= settr(297,2,113,154,0,"printf('Plane %d is using the runway for landing\\n',id)", 1, 2, 0);
		tr_2_src(154, "test.pml", 52);
	trans[2][113]	= settr(298,2,125,1,0,"(1)", 1, 2, 0);
	trans[2][114]	= settr(299,2,115,155,0,"((4==8))", 1, 2, 0);
		tr_2_src(155, "test.pml", 55);
	trans[2][115]	= settr(300,2,116,156,0,"printf('Plane %d is using the runway for take off\\n',id)", 1, 2, 0);
		tr_2_src(156, "test.pml", 56);
	trans[2][116]	= settr(301,2,125,1,0,"(1)", 1, 2, 0);
	trans[2][126]	= settr(311,2,125,1,0,".(goto)", 1, 2, 0);
	T = trans[2][125] = settr(310,2,0,0,0,"DO", 1, 2, 0);
		/* test.pml:61 */
	T = T->nxt	= settr(310,2,119,0,0,"DO", 1, 2, 0);
		/* test.pml:61 */
	    T->nxt	= settr(310,2,122,0,0,"DO", 1, 2, 0);
		/* test.pml:61 */
	trans[2][119]	= settr(304,2,120,157,0,"((plane_timer>0))", 1, 2, 0);
		tr_2_src(157, "test.pml", 62);
	trans[2][120]	= settr(305,2,121,158,0,"printf('Plane %d: Timer %d (s) counts down 1s ...\\n',id,plane_timer)", 1, 2, 0);
		tr_2_src(158, "test.pml", 63);
	trans[2][121]	= settr(306,2,125,159,159,"plane_timer = (plane_timer-1)", 1, 2, 0);
		tr_2_src(159, "test.pml", 64);
	trans[2][122]	= settr(307,2,123,2,0,"else", 1, 2, 0);
	trans[2][123]	= settr(308,2,128,160,0,"printf('Plane %d: Finish countdown\\n',id)", 1, 2, 0);
		tr_2_src(160, "test.pml", 65);
	trans[2][124]	= settr(309,2,128,1,0,"goto :b4", 1, 2, 0);
	trans[2][127]	= settr(312,2,128,1,0,"break", 1, 2, 0);
	trans[2][128]	= settr(313,2,129,161,0,"printf('Plane %d: Has finished using the runway\\n',id)", 1, 2, 0);
		tr_2_src(161, "test.pml", 68);
	trans[2][129]	= settr(314,2,130,162,162,"runway_occupied = 0", 1, 2, 0);
		tr_2_src(162, "test.pml", 70);
	trans[2][130]	= settr(315,2,136,163,0,"printf('Plane %d: Has left the runway\\n',id)", 1, 2, 0);
		tr_2_src(163, "test.pml", 71);
	T = trans[2][136] = settr(321,2,0,0,0,"IF", 1, 2, 0);
		/* test.pml:73 */
	T = T->nxt	= settr(321,2,131,0,0,"IF", 1, 2, 0);
		/* test.pml:73 */
	    T->nxt	= settr(321,2,134,0,0,"IF", 1, 2, 0);
		/* test.pml:73 */
	trans[2][131]	= settr(316,2,132,164,0,"(((4==7)||(4==3)))", 1, 2, 0);
		tr_2_src(164, "test.pml", 74);
	trans[2][132]	= settr(317,2,133,165,165,"c_request_parking!id", 1, 6, 0);
		tr_2_src(165, "test.pml", 74);
	trans[2][133]	= settr(318,2,140,166,0,"printf('Plane %d: Request parking after %e\\n',id,4)", 1, 2, 0);
		tr_2_src(166, "test.pml", 74);
	trans[2][137]	= settr(322,2,140,1,0,".(goto)", 1, 2, 0);
	trans[2][134]	= settr(319,2,135,2,0,"else", 1, 2, 0);
	trans[2][135]	= settr(320,2,140,1,0,"(1)", 1, 2, 0);
	trans[2][140]	= settr(325,2,230,1,0,"goto :b2", 1, 2, 0);
	trans[2][142]	= settr(327,2,184,167,167,"(((!(isLanding)&&(temp_id==id))&&(!(runway_occupied)==1)))", 1, 2, 0);
		tr_2_src(167, "test.pml", 281);
	T = trans[ 2][184] = settr(369,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:282 */
	T->nxt	= settr(369,0,143,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:282 */
	trans[2][143]	= settr(328,2,182,168,0,"printf('Plane %d: RunwayProcedures: takeoff\\n',id)", 1, 2, 0);
		tr_2_src(168, "test.pml", 283);
	T = trans[ 2][182] = settr(367,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:35 */
	T->nxt	= settr(367,0,181,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:35 */
	T = trans[ 2][181] = settr(366,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:36 */
	T->nxt	= settr(366,0,144,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:36 */
	trans[2][144]	= settr(329,2,145,169,169,"runway_occupied = 1", 1, 2, 0);
		tr_2_src(169, "test.pml", 37);
	trans[2][145]	= settr(330,2,146,170,170,"c_plane_runway_log!id,8,2", 1, 16, 0);
		tr_2_src(170, "test.pml", 39);
	trans[2][146]	= settr(331,2,147,171,171,"c_plane_log!id,5,2", 1, 13, 0);
		tr_2_src(171, "test.pml", 40);
	trans[2][147]	= settr(332,2,160,172,0,"printf('Plane %d: Log runway lock\\n',id)", 1, 2, 0);
		tr_2_src(172, "test.pml", 41);
	T = trans[2][160] = settr(345,2,0,0,0,"IF", 1, 2, 0);
		/* test.pml:42 */
	T = T->nxt	= settr(345,2,148,0,0,"IF", 1, 2, 0);
		/* test.pml:42 */
	T = T->nxt	= settr(345,2,151,0,0,"IF", 1, 2, 0);
		/* test.pml:42 */
	T = T->nxt	= settr(345,2,154,0,0,"IF", 1, 2, 0);
		/* test.pml:42 */
	    T->nxt	= settr(345,2,157,0,0,"IF", 1, 2, 0);
		/* test.pml:42 */
	trans[2][148]	= settr(333,2,149,173,0,"((8==3))", 1, 2, 0);
		tr_2_src(173, "test.pml", 43);
	trans[2][149]	= settr(334,2,150,174,0,"printf('Plane %d is using the runway for emergency landing\\n',id)", 1, 2, 0);
		tr_2_src(174, "test.pml", 44);
	trans[2][150]	= settr(335,2,168,1,0,"(1)", 1, 2, 0);
	trans[2][161]	= settr(346,2,168,1,0,".(goto)", 1, 2, 0);
	trans[2][151]	= settr(336,2,152,175,0,"((8==4))", 1, 2, 0);
		tr_2_src(175, "test.pml", 47);
	trans[2][152]	= settr(337,2,153,176,0,"printf('Plane %d is using the runway for emergency take off\\n',id)", 1, 2, 0);
		tr_2_src(176, "test.pml", 48);
	trans[2][153]	= settr(338,2,168,1,0,"(1)", 1, 2, 0);
	trans[2][154]	= settr(339,2,155,177,0,"((8==7))", 1, 2, 0);
		tr_2_src(177, "test.pml", 51);
	trans[2][155]	= settr(340,2,156,178,0,"printf('Plane %d is using the runway for landing\\n',id)", 1, 2, 0);
		tr_2_src(178, "test.pml", 52);
	trans[2][156]	= settr(341,2,168,1,0,"(1)", 1, 2, 0);
	trans[2][157]	= settr(342,2,158,179,0,"((8==8))", 1, 2, 0);
		tr_2_src(179, "test.pml", 55);
	trans[2][158]	= settr(343,2,159,180,0,"printf('Plane %d is using the runway for take off\\n',id)", 1, 2, 0);
		tr_2_src(180, "test.pml", 56);
	trans[2][159]	= settr(344,2,168,1,0,"(1)", 1, 2, 0);
	trans[2][169]	= settr(354,2,168,1,0,".(goto)", 1, 2, 0);
	T = trans[2][168] = settr(353,2,0,0,0,"DO", 1, 2, 0);
		/* test.pml:61 */
	T = T->nxt	= settr(353,2,162,0,0,"DO", 1, 2, 0);
		/* test.pml:61 */
	    T->nxt	= settr(353,2,165,0,0,"DO", 1, 2, 0);
		/* test.pml:61 */
	trans[2][162]	= settr(347,2,163,181,0,"((plane_timer>0))", 1, 2, 0);
		tr_2_src(181, "test.pml", 62);
	trans[2][163]	= settr(348,2,164,182,0,"printf('Plane %d: Timer %d (s) counts down 1s ...\\n',id,plane_timer)", 1, 2, 0);
		tr_2_src(182, "test.pml", 63);
	trans[2][164]	= settr(349,2,168,183,183,"plane_timer = (plane_timer-1)", 1, 2, 0);
		tr_2_src(183, "test.pml", 64);
	trans[2][165]	= settr(350,2,166,2,0,"else", 1, 2, 0);
	trans[2][166]	= settr(351,2,171,184,0,"printf('Plane %d: Finish countdown\\n',id)", 1, 2, 0);
		tr_2_src(184, "test.pml", 65);
	trans[2][167]	= settr(352,2,171,1,0,"goto :b5", 1, 2, 0);
	trans[2][170]	= settr(355,2,171,1,0,"break", 1, 2, 0);
	trans[2][171]	= settr(356,2,172,185,0,"printf('Plane %d: Has finished using the runway\\n',id)", 1, 2, 0);
		tr_2_src(185, "test.pml", 68);
	trans[2][172]	= settr(357,2,173,186,186,"runway_occupied = 0", 1, 2, 0);
		tr_2_src(186, "test.pml", 70);
	trans[2][173]	= settr(358,2,179,187,0,"printf('Plane %d: Has left the runway\\n',id)", 1, 2, 0);
		tr_2_src(187, "test.pml", 71);
	T = trans[2][179] = settr(364,2,0,0,0,"IF", 1, 2, 0);
		/* test.pml:73 */
	T = T->nxt	= settr(364,2,174,0,0,"IF", 1, 2, 0);
		/* test.pml:73 */
	    T->nxt	= settr(364,2,177,0,0,"IF", 1, 2, 0);
		/* test.pml:73 */
	trans[2][174]	= settr(359,2,175,188,0,"(((8==7)||(8==3)))", 1, 2, 0);
		tr_2_src(188, "test.pml", 74);
	trans[2][175]	= settr(360,2,176,189,189,"c_request_parking!id", 1, 6, 0);
		tr_2_src(189, "test.pml", 74);
	trans[2][176]	= settr(361,2,183,190,0,"printf('Plane %d: Request parking after %e\\n',id,8)", 1, 2, 0);
		tr_2_src(190, "test.pml", 74);
	trans[2][180]	= settr(365,2,183,1,0,".(goto)", 1, 2, 0);
	trans[2][177]	= settr(362,2,178,2,0,"else", 1, 2, 0);
	trans[2][178]	= settr(363,2,183,1,0,"(1)", 1, 2, 0);
	trans[2][183]	= settr(368,2,230,1,0,"goto :b2", 1, 2, 0);
	trans[2][185]	= settr(370,2,227,191,191,"(((isLanding&&(temp_id==id))&&(!(runway_occupied)==1)))", 1, 2, 0);
		tr_2_src(191, "test.pml", 288);
	T = trans[ 2][227] = settr(412,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:289 */
	T->nxt	= settr(412,0,186,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:289 */
	trans[2][186]	= settr(371,2,225,192,0,"printf('Plane %d: RunwayProcedures: landing\\n',id)", 1, 2, 0);
		tr_2_src(192, "test.pml", 290);
	T = trans[ 2][225] = settr(410,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:35 */
	T->nxt	= settr(410,0,224,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:35 */
	T = trans[ 2][224] = settr(409,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:36 */
	T->nxt	= settr(409,0,187,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:36 */
	trans[2][187]	= settr(372,2,188,193,193,"runway_occupied = 1", 1, 2, 0);
		tr_2_src(193, "test.pml", 37);
	trans[2][188]	= settr(373,2,189,194,194,"c_plane_runway_log!id,7,2", 1, 16, 0);
		tr_2_src(194, "test.pml", 39);
	trans[2][189]	= settr(374,2,190,195,195,"c_plane_log!id,5,2", 1, 13, 0);
		tr_2_src(195, "test.pml", 40);
	trans[2][190]	= settr(375,2,203,196,0,"printf('Plane %d: Log runway lock\\n',id)", 1, 2, 0);
		tr_2_src(196, "test.pml", 41);
	T = trans[2][203] = settr(388,2,0,0,0,"IF", 1, 2, 0);
		/* test.pml:42 */
	T = T->nxt	= settr(388,2,191,0,0,"IF", 1, 2, 0);
		/* test.pml:42 */
	T = T->nxt	= settr(388,2,194,0,0,"IF", 1, 2, 0);
		/* test.pml:42 */
	T = T->nxt	= settr(388,2,197,0,0,"IF", 1, 2, 0);
		/* test.pml:42 */
	    T->nxt	= settr(388,2,200,0,0,"IF", 1, 2, 0);
		/* test.pml:42 */
	trans[2][191]	= settr(376,2,192,197,0,"((7==3))", 1, 2, 0);
		tr_2_src(197, "test.pml", 43);
	trans[2][192]	= settr(377,2,193,198,0,"printf('Plane %d is using the runway for emergency landing\\n',id)", 1, 2, 0);
		tr_2_src(198, "test.pml", 44);
	trans[2][193]	= settr(378,2,211,1,0,"(1)", 1, 2, 0);
	trans[2][204]	= settr(389,2,211,1,0,".(goto)", 1, 2, 0);
	trans[2][194]	= settr(379,2,195,199,0,"((7==4))", 1, 2, 0);
		tr_2_src(199, "test.pml", 47);
	trans[2][195]	= settr(380,2,196,200,0,"printf('Plane %d is using the runway for emergency take off\\n',id)", 1, 2, 0);
		tr_2_src(200, "test.pml", 48);
	trans[2][196]	= settr(381,2,211,1,0,"(1)", 1, 2, 0);
	trans[2][197]	= settr(382,2,198,201,0,"((7==7))", 1, 2, 0);
		tr_2_src(201, "test.pml", 51);
	trans[2][198]	= settr(383,2,199,202,0,"printf('Plane %d is using the runway for landing\\n',id)", 1, 2, 0);
		tr_2_src(202, "test.pml", 52);
	trans[2][199]	= settr(384,2,211,1,0,"(1)", 1, 2, 0);
	trans[2][200]	= settr(385,2,201,203,0,"((7==8))", 1, 2, 0);
		tr_2_src(203, "test.pml", 55);
	trans[2][201]	= settr(386,2,202,204,0,"printf('Plane %d is using the runway for take off\\n',id)", 1, 2, 0);
		tr_2_src(204, "test.pml", 56);
	trans[2][202]	= settr(387,2,211,1,0,"(1)", 1, 2, 0);
	trans[2][212]	= settr(397,2,211,1,0,".(goto)", 1, 2, 0);
	T = trans[2][211] = settr(396,2,0,0,0,"DO", 1, 2, 0);
		/* test.pml:61 */
	T = T->nxt	= settr(396,2,205,0,0,"DO", 1, 2, 0);
		/* test.pml:61 */
	    T->nxt	= settr(396,2,208,0,0,"DO", 1, 2, 0);
		/* test.pml:61 */
	trans[2][205]	= settr(390,2,206,205,0,"((plane_timer>0))", 1, 2, 0);
		tr_2_src(205, "test.pml", 62);
	trans[2][206]	= settr(391,2,207,206,0,"printf('Plane %d: Timer %d (s) counts down 1s ...\\n',id,plane_timer)", 1, 2, 0);
		tr_2_src(206, "test.pml", 63);
	trans[2][207]	= settr(392,2,211,207,207,"plane_timer = (plane_timer-1)", 1, 2, 0);
		tr_2_src(207, "test.pml", 64);
	trans[2][208]	= settr(393,2,209,2,0,"else", 1, 2, 0);
	trans[2][209]	= settr(394,2,214,208,0,"printf('Plane %d: Finish countdown\\n',id)", 1, 2, 0);
		tr_2_src(208, "test.pml", 65);
	trans[2][210]	= settr(395,2,214,1,0,"goto :b6", 1, 2, 0);
	trans[2][213]	= settr(398,2,214,1,0,"break", 1, 2, 0);
	trans[2][214]	= settr(399,2,215,209,0,"printf('Plane %d: Has finished using the runway\\n',id)", 1, 2, 0);
		tr_2_src(209, "test.pml", 68);
	trans[2][215]	= settr(400,2,216,210,210,"runway_occupied = 0", 1, 2, 0);
		tr_2_src(210, "test.pml", 70);
	trans[2][216]	= settr(401,2,222,211,0,"printf('Plane %d: Has left the runway\\n',id)", 1, 2, 0);
		tr_2_src(211, "test.pml", 71);
	T = trans[2][222] = settr(407,2,0,0,0,"IF", 1, 2, 0);
		/* test.pml:73 */
	T = T->nxt	= settr(407,2,217,0,0,"IF", 1, 2, 0);
		/* test.pml:73 */
	    T->nxt	= settr(407,2,220,0,0,"IF", 1, 2, 0);
		/* test.pml:73 */
	trans[2][217]	= settr(402,2,218,212,0,"(((7==7)||(7==3)))", 1, 2, 0);
		tr_2_src(212, "test.pml", 74);
	trans[2][218]	= settr(403,2,219,213,213,"c_request_parking!id", 1, 6, 0);
		tr_2_src(213, "test.pml", 74);
	trans[2][219]	= settr(404,2,226,214,0,"printf('Plane %d: Request parking after %e\\n',id,7)", 1, 2, 0);
		tr_2_src(214, "test.pml", 74);
	trans[2][223]	= settr(408,2,226,1,0,".(goto)", 1, 2, 0);
	trans[2][220]	= settr(405,2,221,2,0,"else", 1, 2, 0);
	trans[2][221]	= settr(406,2,226,1,0,"(1)", 1, 2, 0);
	trans[2][226]	= settr(411,2,230,1,0,"goto :b2", 1, 2, 0);
	trans[2][230]	= settr(415,0,232,1,0,"break", 1, 2, 0);
	trans[2][232]	= settr(417,0,0,215,215,"-end-", 0, 3500, 0);
		tr_2_src(215, "test.pml", 297);

	/* proctype 1: PlaneParkingReplyHandler */

	trans[1] = (Trans **) emalloc(39*sizeof(Trans *));

	T = trans[ 1][37] = settr(184,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* test.pml:178 */
	T->nxt	= settr(184,2,8,0,0,"ATOMIC", 1, 510, 0);
		/* test.pml:178 */
	T = trans[1][8] = settr(155,2,0,0,0,"IF", 1, 510, 0);
		/* test.pml:179 */
	T = T->nxt	= settr(155,2,1,0,0,"IF", 1, 510, 0);
		/* test.pml:179 */
	    T->nxt	= settr(155,2,6,0,0,"IF", 1, 510, 0);
		/* test.pml:179 */
	trans[1][1]	= settr(148,2,2,216,216,"(isParking)", 1, 510, 0);
		tr_2_src(216, "test.pml", 180);
	trans[1][2]	= settr(149,2,3,217,217,"c_reply_parking??id", 1, 510, 0);
		tr_2_src(217, "test.pml", 181);
	trans[1][3]	= settr(150,2,4,218,218,"rep_parking = id", 1, 510, 0);
		tr_2_src(218, "test.pml", 182);
	trans[1][4]	= settr(151,2,5,219,0,"printf('Plane %d: Clear queue parking reply of number %d\\n',id,rep_parking)", 1, 510, 0);
		tr_2_src(219, "test.pml", 183);
	trans[1][5]	= settr(152,2,34,1,0,"(1)", 1, 510, 0);
	trans[1][9]	= settr(156,2,34,1,0,".(goto)", 1, 510, 0);
	trans[1][6]	= settr(153,2,7,220,220,"(!(isParking))", 1, 510, 0);
		tr_2_src(220, "test.pml", 185);
	trans[1][7]	= settr(154,2,34,1,0,"(1)", 1, 510, 0);
	trans[1][35]	= settr(182,2,34,1,0,".(goto)", 1, 510, 0);
	T = trans[1][34] = settr(181,2,0,0,0,"DO", 1, 510, 0);
		/* test.pml:189 */
	    T->nxt	= settr(181,2,10,0,0,"DO", 1, 510, 0);
		/* test.pml:189 */
	trans[1][10]	= settr(157,2,32,221,221,"(((rep_parking==id)&&(!(parking_occupied)==1)))", 1, 510, 0);
		tr_2_src(221, "test.pml", 190);
	T = trans[ 1][32] = settr(179,0,0,0,0,"sub-sequence", 1, 510, 0);
		/* test.pml:147 */
	T->nxt	= settr(179,0,31,0,0,"sub-sequence", 1, 510, 0);
		/* test.pml:147 */
	T = trans[ 1][31] = settr(178,0,0,0,0,"sub-sequence", 1, 510, 0);
		/* test.pml:148 */
	T->nxt	= settr(178,0,29,0,0,"sub-sequence", 1, 510, 0);
		/* test.pml:148 */
	T = trans[1][29] = settr(176,2,0,0,0,"IF", 1, 510, 0);
		/* test.pml:149 */
	T = T->nxt	= settr(176,2,11,0,0,"IF", 1, 510, 0);
		/* test.pml:149 */
	    T->nxt	= settr(176,2,20,0,0,"IF", 1, 510, 0);
		/* test.pml:149 */
	trans[1][11]	= settr(158,2,12,222,0,"((len(hangar)<3))", 1, 510, 0);
		tr_2_src(222, "test.pml", 150);
	trans[1][12]	= settr(159,2,13,223,223,"parking_occupied = 1", 1, 510, 0);
		tr_2_src(223, "test.pml", 151);
	trans[1][13]	= settr(160,2,14,224,224,"c_plane_log!rep_parking,6,2", 1, 510, 0);
		tr_2_src(224, "test.pml", 152);
	trans[1][14]	= settr(161,2,15,225,0,"printf('Plane %d: Take parking lock\\n',rep_parking)", 1, 510, 0);
		tr_2_src(225, "test.pml", 153);
	trans[1][15]	= settr(162,2,16,226,0,"printf('Plane %d: Hangar size: %d\\n',rep_parking,len(hangar))", 1, 510, 0);
		tr_2_src(226, "test.pml", 155);
	trans[1][16]	= settr(163,2,17,227,227,"hangar!rep_parking", 1, 510, 0);
		tr_2_src(227, "test.pml", 156);
	trans[1][17]	= settr(164,2,18,228,228,"c_plane_parking_log!rep_parking,6,5", 1, 510, 0);
		tr_2_src(228, "test.pml", 158);
	trans[1][18]	= settr(165,2,19,229,0,"printf('Plane %d: Has parked. Increase hangar size: %d\\n',rep_parking,len(hangar))", 1, 510, 0);
		tr_2_src(229, "test.pml", 159);
	trans[1][19]	= settr(166,2,33,230,230,"parking_occupied = 0", 1, 510, 0);
		tr_2_src(230, "test.pml", 160);
	trans[1][30]	= settr(177,2,33,1,0,".(goto)", 1, 510, 0);
	trans[1][20]	= settr(167,2,21,231,0,"((len(hangar)>=3))", 1, 510, 0);
		tr_2_src(231, "test.pml", 162);
	trans[1][21]	= settr(168,2,22,232,232,"parking_occupied = 1", 1, 510, 0);
		tr_2_src(232, "test.pml", 163);
	trans[1][22]	= settr(169,2,23,233,233,"c_plane_log!rep_parking,6,2", 1, 510, 0);
		tr_2_src(233, "test.pml", 164);
	trans[1][23]	= settr(170,2,24,234,0,"printf('Hangar is full, plane %d is waiting\\n',rep_parking)", 1, 510, 0);
		tr_2_src(234, "test.pml", 165);
	trans[1][24]	= settr(171,2,25,235,235,"c_waiting_parking!rep_parking", 1, 510, 0);
		tr_2_src(235, "test.pml", 167);
	trans[1][25]	= settr(172,2,26,236,0,"printf('Plane %d: Send parking request to waiting list\\n',rep_parking)", 1, 510, 0);
		tr_2_src(236, "test.pml", 168);
	trans[1][26]	= settr(173,2,27,237,237,"c_plane_log!rep_parking,6,3", 1, 510, 0);
		tr_2_src(237, "test.pml", 170);
	trans[1][27]	= settr(174,2,28,238,238,"c_plane_parking_log!rep_parking,6,3", 1, 510, 0);
		tr_2_src(238, "test.pml", 171);
	trans[1][28]	= settr(175,2,33,239,239,"parking_occupied = 0", 1, 510, 0);
		tr_2_src(239, "test.pml", 172);
	trans[1][33]	= settr(180,2,36,1,0,"goto :b0", 1, 510, 0);
	trans[1][36]	= settr(183,0,38,1,0,"break", 1, 510, 0);
	trans[1][38]	= settr(185,0,0,240,240,"-end-", 0, 3500, 0);
		tr_2_src(240, "test.pml", 195);

	/* proctype 0: RequestSubmitHandler */

	trans[0] = (Trans **) emalloc(149*sizeof(Trans *));

	T = trans[ 0][147] = settr(146,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* test.pml:126 */
	T->nxt	= settr(146,2,145,0,0,"ATOMIC", 1, 2, 0);
		/* test.pml:126 */
	T = trans[0][145] = settr(144,2,0,0,0,"IF", 1, 2, 0);
		/* test.pml:127 */
	T = T->nxt	= settr(144,2,1,0,0,"IF", 1, 2, 0);
		/* test.pml:127 */
	T = T->nxt	= settr(144,2,37,0,0,"IF", 1, 2, 0);
		/* test.pml:127 */
	T = T->nxt	= settr(144,2,73,0,0,"IF", 1, 2, 0);
		/* test.pml:127 */
	    T->nxt	= settr(144,2,109,0,0,"IF", 1, 2, 0);
		/* test.pml:127 */
	trans[0][1]	= settr(0,2,35,241,241,"((isLanding&&isEmergency))", 1, 2, 0);
		tr_2_src(241, "test.pml", 128);
	T = trans[ 0][35] = settr(34,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:80 */
	T->nxt	= settr(34,0,34,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:80 */
	T = trans[ 0][34] = settr(33,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:81 */
	T->nxt	= settr(33,0,32,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:81 */
	T = trans[0][32] = settr(31,2,0,0,0,"IF", 1, 2, 0);
		/* test.pml:83 */
	T = T->nxt	= settr(31,2,2,0,0,"IF", 1, 2, 0);
		/* test.pml:83 */
	T = T->nxt	= settr(31,2,10,0,0,"IF", 1, 2, 0);
		/* test.pml:83 */
	T = T->nxt	= settr(31,2,18,0,0,"IF", 1, 2, 0);
		/* test.pml:83 */
	    T->nxt	= settr(31,2,25,0,0,"IF", 1, 2, 0);
		/* test.pml:83 */
	trans[0][2]	= settr(1,2,3,242,0,"((3==3))", 1, 2, 0);
		tr_2_src(242, "test.pml", 84);
	trans[0][3]	= settr(2,2,4,243,243,"c_request_emergency!id,3", 1, 7, 0);
		tr_2_src(243, "test.pml", 85);
	trans[0][4]	= settr(3,2,5,244,0,"printf('Plane %d: Request to emergency landing\\n',id)", 1, 2, 0);
		tr_2_src(244, "test.pml", 86);
	trans[0][5]	= settr(4,2,6,245,245,"c_plane_request_log!id,3,5", 1, 14, 0);
		tr_2_src(245, "test.pml", 88);
	trans[0][6]	= settr(5,2,7,246,246,"c_plane_log!id,3,5", 1, 13, 0);
		tr_2_src(246, "test.pml", 89);
	trans[0][7]	= settr(6,2,8,247,247,"c_emergency_log!id,3,5", 1, 19, 0);
		tr_2_src(247, "test.pml", 90);
	trans[0][8]	= settr(7,2,9,248,0,"printf('Plane %d: Log emergency landing request\\n',id)", 1, 2, 0);
		tr_2_src(248, "test.pml", 91);
	trans[0][9]	= settr(8,2,36,1,0,"(1)", 1, 2, 0);
	trans[0][33]	= settr(32,2,36,1,0,".(goto)", 1, 2, 0);
	trans[0][10]	= settr(9,2,11,249,0,"((3==4))", 1, 2, 0);
		tr_2_src(249, "test.pml", 94);
	trans[0][11]	= settr(10,2,12,250,250,"c_request_emergency!id,4", 1, 7, 0);
		tr_2_src(250, "test.pml", 95);
	trans[0][12]	= settr(11,2,13,251,0,"printf('Plane %d: Request to emergency takeoff\\n',id)", 1, 2, 0);
		tr_2_src(251, "test.pml", 96);
	trans[0][13]	= settr(12,2,14,252,252,"c_plane_request_log!id,4,5", 1, 14, 0);
		tr_2_src(252, "test.pml", 98);
	trans[0][14]	= settr(13,2,15,253,253,"c_plane_log!id,4,5", 1, 13, 0);
		tr_2_src(253, "test.pml", 99);
	trans[0][15]	= settr(14,2,16,254,254,"c_emergency_log!id,4,5", 1, 19, 0);
		tr_2_src(254, "test.pml", 100);
	trans[0][16]	= settr(15,2,17,255,0,"printf('Plane %d: Log emergency takeoff request\\n',id)", 1, 2, 0);
		tr_2_src(255, "test.pml", 101);
	trans[0][17]	= settr(16,2,36,1,0,"(1)", 1, 2, 0);
	trans[0][18]	= settr(17,2,19,256,0,"((3==7))", 1, 2, 0);
		tr_2_src(256, "test.pml", 104);
	trans[0][19]	= settr(18,2,20,257,257,"c_request_landing!id", 1, 4, 0);
		tr_2_src(257, "test.pml", 105);
	trans[0][20]	= settr(19,2,21,258,0,"printf('Plane %d: Request to land\\n',id)", 1, 2, 0);
		tr_2_src(258, "test.pml", 106);
	trans[0][21]	= settr(20,2,22,259,259,"c_plane_request_log!id,7,5", 1, 14, 0);
		tr_2_src(259, "test.pml", 108);
	trans[0][22]	= settr(21,2,23,260,260,"c_plane_log!id,7,5", 1, 13, 0);
		tr_2_src(260, "test.pml", 109);
	trans[0][23]	= settr(22,2,24,261,0,"printf('Plane %d: Log landing request\\n',id)", 1, 2, 0);
		tr_2_src(261, "test.pml", 110);
	trans[0][24]	= settr(23,2,36,1,0,"(1)", 1, 2, 0);
	trans[0][25]	= settr(24,2,26,262,0,"((3==8))", 1, 2, 0);
		tr_2_src(262, "test.pml", 113);
	trans[0][26]	= settr(25,2,27,263,263,"c_request_takeoff!id", 1, 5, 0);
		tr_2_src(263, "test.pml", 114);
	trans[0][27]	= settr(26,2,28,264,0,"printf('Plane %d: Request to takeoff\\n',id)", 1, 2, 0);
		tr_2_src(264, "test.pml", 115);
	trans[0][28]	= settr(27,2,29,265,265,"c_plane_request_log!id,8,5", 1, 14, 0);
		tr_2_src(265, "test.pml", 117);
	trans[0][29]	= settr(28,2,30,266,266,"c_plane_log!id,8,5", 1, 13, 0);
		tr_2_src(266, "test.pml", 118);
	trans[0][30]	= settr(29,2,31,267,0,"printf('Plane %d: Log takeoff request\\n',id)", 1, 2, 0);
		tr_2_src(267, "test.pml", 119);
	trans[0][31]	= settr(30,2,36,1,0,"(1)", 1, 2, 0);
	trans[0][36]	= settr(35,2,146,1,0,"(1)", 1, 2, 0);
	trans[0][146]	= settr(145,0,148,1,0,".(goto)", 1, 2, 0);
	trans[0][37]	= settr(36,2,71,268,268,"((!(isLanding)&&isEmergency))", 1, 2, 0);
		tr_2_src(268, "test.pml", 132);
	T = trans[ 0][71] = settr(70,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:80 */
	T->nxt	= settr(70,0,70,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:80 */
	T = trans[ 0][70] = settr(69,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:81 */
	T->nxt	= settr(69,0,68,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:81 */
	T = trans[0][68] = settr(67,2,0,0,0,"IF", 1, 2, 0);
		/* test.pml:83 */
	T = T->nxt	= settr(67,2,38,0,0,"IF", 1, 2, 0);
		/* test.pml:83 */
	T = T->nxt	= settr(67,2,46,0,0,"IF", 1, 2, 0);
		/* test.pml:83 */
	T = T->nxt	= settr(67,2,54,0,0,"IF", 1, 2, 0);
		/* test.pml:83 */
	    T->nxt	= settr(67,2,61,0,0,"IF", 1, 2, 0);
		/* test.pml:83 */
	trans[0][38]	= settr(37,2,39,269,0,"((4==3))", 1, 2, 0);
		tr_2_src(269, "test.pml", 84);
	trans[0][39]	= settr(38,2,40,270,270,"c_request_emergency!id,3", 1, 7, 0);
		tr_2_src(270, "test.pml", 85);
	trans[0][40]	= settr(39,2,41,271,0,"printf('Plane %d: Request to emergency landing\\n',id)", 1, 2, 0);
		tr_2_src(271, "test.pml", 86);
	trans[0][41]	= settr(40,2,42,272,272,"c_plane_request_log!id,3,5", 1, 14, 0);
		tr_2_src(272, "test.pml", 88);
	trans[0][42]	= settr(41,2,43,273,273,"c_plane_log!id,3,5", 1, 13, 0);
		tr_2_src(273, "test.pml", 89);
	trans[0][43]	= settr(42,2,44,274,274,"c_emergency_log!id,3,5", 1, 19, 0);
		tr_2_src(274, "test.pml", 90);
	trans[0][44]	= settr(43,2,45,275,0,"printf('Plane %d: Log emergency landing request\\n',id)", 1, 2, 0);
		tr_2_src(275, "test.pml", 91);
	trans[0][45]	= settr(44,2,72,1,0,"(1)", 1, 2, 0);
	trans[0][69]	= settr(68,2,72,1,0,".(goto)", 1, 2, 0);
	trans[0][46]	= settr(45,2,47,276,0,"((4==4))", 1, 2, 0);
		tr_2_src(276, "test.pml", 94);
	trans[0][47]	= settr(46,2,48,277,277,"c_request_emergency!id,4", 1, 7, 0);
		tr_2_src(277, "test.pml", 95);
	trans[0][48]	= settr(47,2,49,278,0,"printf('Plane %d: Request to emergency takeoff\\n',id)", 1, 2, 0);
		tr_2_src(278, "test.pml", 96);
	trans[0][49]	= settr(48,2,50,279,279,"c_plane_request_log!id,4,5", 1, 14, 0);
		tr_2_src(279, "test.pml", 98);
	trans[0][50]	= settr(49,2,51,280,280,"c_plane_log!id,4,5", 1, 13, 0);
		tr_2_src(280, "test.pml", 99);
	trans[0][51]	= settr(50,2,52,281,281,"c_emergency_log!id,4,5", 1, 19, 0);
		tr_2_src(281, "test.pml", 100);
	trans[0][52]	= settr(51,2,53,282,0,"printf('Plane %d: Log emergency takeoff request\\n',id)", 1, 2, 0);
		tr_2_src(282, "test.pml", 101);
	trans[0][53]	= settr(52,2,72,1,0,"(1)", 1, 2, 0);
	trans[0][54]	= settr(53,2,55,283,0,"((4==7))", 1, 2, 0);
		tr_2_src(283, "test.pml", 104);
	trans[0][55]	= settr(54,2,56,284,284,"c_request_landing!id", 1, 4, 0);
		tr_2_src(284, "test.pml", 105);
	trans[0][56]	= settr(55,2,57,285,0,"printf('Plane %d: Request to land\\n',id)", 1, 2, 0);
		tr_2_src(285, "test.pml", 106);
	trans[0][57]	= settr(56,2,58,286,286,"c_plane_request_log!id,7,5", 1, 14, 0);
		tr_2_src(286, "test.pml", 108);
	trans[0][58]	= settr(57,2,59,287,287,"c_plane_log!id,7,5", 1, 13, 0);
		tr_2_src(287, "test.pml", 109);
	trans[0][59]	= settr(58,2,60,288,0,"printf('Plane %d: Log landing request\\n',id)", 1, 2, 0);
		tr_2_src(288, "test.pml", 110);
	trans[0][60]	= settr(59,2,72,1,0,"(1)", 1, 2, 0);
	trans[0][61]	= settr(60,2,62,289,0,"((4==8))", 1, 2, 0);
		tr_2_src(289, "test.pml", 113);
	trans[0][62]	= settr(61,2,63,290,290,"c_request_takeoff!id", 1, 5, 0);
		tr_2_src(290, "test.pml", 114);
	trans[0][63]	= settr(62,2,64,291,0,"printf('Plane %d: Request to takeoff\\n',id)", 1, 2, 0);
		tr_2_src(291, "test.pml", 115);
	trans[0][64]	= settr(63,2,65,292,292,"c_plane_request_log!id,8,5", 1, 14, 0);
		tr_2_src(292, "test.pml", 117);
	trans[0][65]	= settr(64,2,66,293,293,"c_plane_log!id,8,5", 1, 13, 0);
		tr_2_src(293, "test.pml", 118);
	trans[0][66]	= settr(65,2,67,294,0,"printf('Plane %d: Log takeoff request\\n',id)", 1, 2, 0);
		tr_2_src(294, "test.pml", 119);
	trans[0][67]	= settr(66,2,72,1,0,"(1)", 1, 2, 0);
	trans[0][72]	= settr(71,2,146,1,0,"(1)", 1, 2, 0);
	trans[0][73]	= settr(72,2,107,295,295,"((isLanding&&!(isEmergency)))", 1, 2, 0);
		tr_2_src(295, "test.pml", 136);
	T = trans[ 0][107] = settr(106,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:80 */
	T->nxt	= settr(106,0,106,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:80 */
	T = trans[ 0][106] = settr(105,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:81 */
	T->nxt	= settr(105,0,104,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:81 */
	T = trans[0][104] = settr(103,2,0,0,0,"IF", 1, 2, 0);
		/* test.pml:83 */
	T = T->nxt	= settr(103,2,74,0,0,"IF", 1, 2, 0);
		/* test.pml:83 */
	T = T->nxt	= settr(103,2,82,0,0,"IF", 1, 2, 0);
		/* test.pml:83 */
	T = T->nxt	= settr(103,2,90,0,0,"IF", 1, 2, 0);
		/* test.pml:83 */
	    T->nxt	= settr(103,2,97,0,0,"IF", 1, 2, 0);
		/* test.pml:83 */
	trans[0][74]	= settr(73,2,75,296,0,"((7==3))", 1, 2, 0);
		tr_2_src(296, "test.pml", 84);
	trans[0][75]	= settr(74,2,76,297,297,"c_request_emergency!id,3", 1, 7, 0);
		tr_2_src(297, "test.pml", 85);
	trans[0][76]	= settr(75,2,77,298,0,"printf('Plane %d: Request to emergency landing\\n',id)", 1, 2, 0);
		tr_2_src(298, "test.pml", 86);
	trans[0][77]	= settr(76,2,78,299,299,"c_plane_request_log!id,3,5", 1, 14, 0);
		tr_2_src(299, "test.pml", 88);
	trans[0][78]	= settr(77,2,79,300,300,"c_plane_log!id,3,5", 1, 13, 0);
		tr_2_src(300, "test.pml", 89);
	trans[0][79]	= settr(78,2,80,301,301,"c_emergency_log!id,3,5", 1, 19, 0);
		tr_2_src(301, "test.pml", 90);
	trans[0][80]	= settr(79,2,81,302,0,"printf('Plane %d: Log emergency landing request\\n',id)", 1, 2, 0);
		tr_2_src(302, "test.pml", 91);
	trans[0][81]	= settr(80,2,108,1,0,"(1)", 1, 2, 0);
	trans[0][105]	= settr(104,2,108,1,0,".(goto)", 1, 2, 0);
	trans[0][82]	= settr(81,2,83,303,0,"((7==4))", 1, 2, 0);
		tr_2_src(303, "test.pml", 94);
	trans[0][83]	= settr(82,2,84,304,304,"c_request_emergency!id,4", 1, 7, 0);
		tr_2_src(304, "test.pml", 95);
	trans[0][84]	= settr(83,2,85,305,0,"printf('Plane %d: Request to emergency takeoff\\n',id)", 1, 2, 0);
		tr_2_src(305, "test.pml", 96);
	trans[0][85]	= settr(84,2,86,306,306,"c_plane_request_log!id,4,5", 1, 14, 0);
		tr_2_src(306, "test.pml", 98);
	trans[0][86]	= settr(85,2,87,307,307,"c_plane_log!id,4,5", 1, 13, 0);
		tr_2_src(307, "test.pml", 99);
	trans[0][87]	= settr(86,2,88,308,308,"c_emergency_log!id,4,5", 1, 19, 0);
		tr_2_src(308, "test.pml", 100);
	trans[0][88]	= settr(87,2,89,309,0,"printf('Plane %d: Log emergency takeoff request\\n',id)", 1, 2, 0);
		tr_2_src(309, "test.pml", 101);
	trans[0][89]	= settr(88,2,108,1,0,"(1)", 1, 2, 0);
	trans[0][90]	= settr(89,2,91,310,0,"((7==7))", 1, 2, 0);
		tr_2_src(310, "test.pml", 104);
	trans[0][91]	= settr(90,2,92,311,311,"c_request_landing!id", 1, 4, 0);
		tr_2_src(311, "test.pml", 105);
	trans[0][92]	= settr(91,2,93,312,0,"printf('Plane %d: Request to land\\n',id)", 1, 2, 0);
		tr_2_src(312, "test.pml", 106);
	trans[0][93]	= settr(92,2,94,313,313,"c_plane_request_log!id,7,5", 1, 14, 0);
		tr_2_src(313, "test.pml", 108);
	trans[0][94]	= settr(93,2,95,314,314,"c_plane_log!id,7,5", 1, 13, 0);
		tr_2_src(314, "test.pml", 109);
	trans[0][95]	= settr(94,2,96,315,0,"printf('Plane %d: Log landing request\\n',id)", 1, 2, 0);
		tr_2_src(315, "test.pml", 110);
	trans[0][96]	= settr(95,2,108,1,0,"(1)", 1, 2, 0);
	trans[0][97]	= settr(96,2,98,316,0,"((7==8))", 1, 2, 0);
		tr_2_src(316, "test.pml", 113);
	trans[0][98]	= settr(97,2,99,317,317,"c_request_takeoff!id", 1, 5, 0);
		tr_2_src(317, "test.pml", 114);
	trans[0][99]	= settr(98,2,100,318,0,"printf('Plane %d: Request to takeoff\\n',id)", 1, 2, 0);
		tr_2_src(318, "test.pml", 115);
	trans[0][100]	= settr(99,2,101,319,319,"c_plane_request_log!id,8,5", 1, 14, 0);
		tr_2_src(319, "test.pml", 117);
	trans[0][101]	= settr(100,2,102,320,320,"c_plane_log!id,8,5", 1, 13, 0);
		tr_2_src(320, "test.pml", 118);
	trans[0][102]	= settr(101,2,103,321,0,"printf('Plane %d: Log takeoff request\\n',id)", 1, 2, 0);
		tr_2_src(321, "test.pml", 119);
	trans[0][103]	= settr(102,2,108,1,0,"(1)", 1, 2, 0);
	trans[0][108]	= settr(107,2,146,1,0,"(1)", 1, 2, 0);
	trans[0][109]	= settr(108,2,143,322,322,"((!(isLanding)&&!(isEmergency)))", 1, 2, 0);
		tr_2_src(322, "test.pml", 140);
	T = trans[ 0][143] = settr(142,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:80 */
	T->nxt	= settr(142,0,142,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:80 */
	T = trans[ 0][142] = settr(141,0,0,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:81 */
	T->nxt	= settr(141,0,140,0,0,"sub-sequence", 1, 2, 0);
		/* test.pml:81 */
	T = trans[0][140] = settr(139,2,0,0,0,"IF", 1, 2, 0);
		/* test.pml:83 */
	T = T->nxt	= settr(139,2,110,0,0,"IF", 1, 2, 0);
		/* test.pml:83 */
	T = T->nxt	= settr(139,2,118,0,0,"IF", 1, 2, 0);
		/* test.pml:83 */
	T = T->nxt	= settr(139,2,126,0,0,"IF", 1, 2, 0);
		/* test.pml:83 */
	    T->nxt	= settr(139,2,133,0,0,"IF", 1, 2, 0);
		/* test.pml:83 */
	trans[0][110]	= settr(109,2,111,323,0,"((8==3))", 1, 2, 0);
		tr_2_src(323, "test.pml", 84);
	trans[0][111]	= settr(110,2,112,324,324,"c_request_emergency!id,3", 1, 7, 0);
		tr_2_src(324, "test.pml", 85);
	trans[0][112]	= settr(111,2,113,325,0,"printf('Plane %d: Request to emergency landing\\n',id)", 1, 2, 0);
		tr_2_src(325, "test.pml", 86);
	trans[0][113]	= settr(112,2,114,326,326,"c_plane_request_log!id,3,5", 1, 14, 0);
		tr_2_src(326, "test.pml", 88);
	trans[0][114]	= settr(113,2,115,327,327,"c_plane_log!id,3,5", 1, 13, 0);
		tr_2_src(327, "test.pml", 89);
	trans[0][115]	= settr(114,2,116,328,328,"c_emergency_log!id,3,5", 1, 19, 0);
		tr_2_src(328, "test.pml", 90);
	trans[0][116]	= settr(115,2,117,329,0,"printf('Plane %d: Log emergency landing request\\n',id)", 1, 2, 0);
		tr_2_src(329, "test.pml", 91);
	trans[0][117]	= settr(116,2,144,1,0,"(1)", 1, 2, 0);
	trans[0][141]	= settr(140,2,144,1,0,".(goto)", 1, 2, 0);
	trans[0][118]	= settr(117,2,119,330,0,"((8==4))", 1, 2, 0);
		tr_2_src(330, "test.pml", 94);
	trans[0][119]	= settr(118,2,120,331,331,"c_request_emergency!id,4", 1, 7, 0);
		tr_2_src(331, "test.pml", 95);
	trans[0][120]	= settr(119,2,121,332,0,"printf('Plane %d: Request to emergency takeoff\\n',id)", 1, 2, 0);
		tr_2_src(332, "test.pml", 96);
	trans[0][121]	= settr(120,2,122,333,333,"c_plane_request_log!id,4,5", 1, 14, 0);
		tr_2_src(333, "test.pml", 98);
	trans[0][122]	= settr(121,2,123,334,334,"c_plane_log!id,4,5", 1, 13, 0);
		tr_2_src(334, "test.pml", 99);
	trans[0][123]	= settr(122,2,124,335,335,"c_emergency_log!id,4,5", 1, 19, 0);
		tr_2_src(335, "test.pml", 100);
	trans[0][124]	= settr(123,2,125,336,0,"printf('Plane %d: Log emergency takeoff request\\n',id)", 1, 2, 0);
		tr_2_src(336, "test.pml", 101);
	trans[0][125]	= settr(124,2,144,1,0,"(1)", 1, 2, 0);
	trans[0][126]	= settr(125,2,127,337,0,"((8==7))", 1, 2, 0);
		tr_2_src(337, "test.pml", 104);
	trans[0][127]	= settr(126,2,128,338,338,"c_request_landing!id", 1, 4, 0);
		tr_2_src(338, "test.pml", 105);
	trans[0][128]	= settr(127,2,129,339,0,"printf('Plane %d: Request to land\\n',id)", 1, 2, 0);
		tr_2_src(339, "test.pml", 106);
	trans[0][129]	= settr(128,2,130,340,340,"c_plane_request_log!id,7,5", 1, 14, 0);
		tr_2_src(340, "test.pml", 108);
	trans[0][130]	= settr(129,2,131,341,341,"c_plane_log!id,7,5", 1, 13, 0);
		tr_2_src(341, "test.pml", 109);
	trans[0][131]	= settr(130,2,132,342,0,"printf('Plane %d: Log landing request\\n',id)", 1, 2, 0);
		tr_2_src(342, "test.pml", 110);
	trans[0][132]	= settr(131,2,144,1,0,"(1)", 1, 2, 0);
	trans[0][133]	= settr(132,2,134,343,0,"((8==8))", 1, 2, 0);
		tr_2_src(343, "test.pml", 113);
	trans[0][134]	= settr(133,2,135,344,344,"c_request_takeoff!id", 1, 5, 0);
		tr_2_src(344, "test.pml", 114);
	trans[0][135]	= settr(134,2,136,345,0,"printf('Plane %d: Request to takeoff\\n',id)", 1, 2, 0);
		tr_2_src(345, "test.pml", 115);
	trans[0][136]	= settr(135,2,137,346,346,"c_plane_request_log!id,8,5", 1, 14, 0);
		tr_2_src(346, "test.pml", 117);
	trans[0][137]	= settr(136,2,138,347,347,"c_plane_log!id,8,5", 1, 13, 0);
		tr_2_src(347, "test.pml", 118);
	trans[0][138]	= settr(137,2,139,348,0,"printf('Plane %d: Log takeoff request\\n',id)", 1, 2, 0);
		tr_2_src(348, "test.pml", 119);
	trans[0][139]	= settr(138,2,144,1,0,"(1)", 1, 2, 0);
	trans[0][144]	= settr(143,2,146,1,0,"(1)", 1, 2, 0);
	trans[0][148]	= settr(147,0,0,349,349,"-end-", 0, 3500, 0);
		tr_2_src(349, "test.pml", 145);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(3*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
			printf("  GT -> S%d;\n", is);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
