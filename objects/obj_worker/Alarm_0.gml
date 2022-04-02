/// @description State delay changes (Idle/Wandering)

//nothing
if (current_worker_assignment== worker_assignment.Nothing)
{
	WorkerNothingAlarm(self);
}
//cleanup
if (current_worker_assignment== worker_assignment.Cleanup)
{
	WorkerCleanupAlarm(self);
}
