

// conditions
// nicht getestet !!!

// alle conditions können mit UND &&, ODER || verbunden werden
/////////////////////////////////////////////////////////////////////////////////////////




// Wenn target_1 tot / zerstört ist
!alive target_1

// Wenn target_1 UND target_2 tot / zerstört ist
!alive target_1 && !alive target_2

// Wenn player im radius von 20 metern von marker: task_2_m ist
{_x distance getMarkerPos 'task_2_m' < 20} count allPlayers > 0

// Wenn unit unter 1.1 meter über dem boden ist
(getposATL unit select 2) < 1.1

// Wenn player mit fahrzeug is touching ground
isTouchingGround (vehicle player)


// Gruppen conditions - vllt auch besser die oberen player conditions mit denen hier zu verwenden - muss getestet werden
// init des groupleaders:
group_name = group this

// condition
// Wenn group unter 3 leute ist
count (units group_name) < 3
// Irgendein gruppenmitglied
({group _x == group_name} count thislist) > 0
// Ganze gruppe present
({group _x == group_name} count thislist) == count units group_name
