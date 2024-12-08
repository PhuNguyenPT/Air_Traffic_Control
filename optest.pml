mtype:e_operation = {takeoff, landing, parking, runway, emergency_takeoff, emergency_landing};  // Operation type
chan c = [100] of {mtype:e_operation};  // Channel for operations

active proctype First() {
  run Second(emergency_landing);
}

proctype Second(mtype:e_operation op) {
  atomic {
  printf("Operation: %e\n", op);
  if 
  :: (op == emergency_landing) -> run Third(emergency_landing);
  fi
  }
}

proctype Third(mtype:e_operation op) {
  printf("Operation: %e\n", op);
  if 
  :: (op == emergency_landing) -> c!op; printf("%e\n", op);
  fi
  int i;

}