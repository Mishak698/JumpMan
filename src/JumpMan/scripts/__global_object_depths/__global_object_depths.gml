function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = -3; // control
	global.__objectDepths[1] = 0; // oDangerous
	global.__objectDepths[2] = -1; // oPlayer
	global.__objectDepths[3] = 0; // oWall
	global.__objectDepths[4] = -2; // oSpinner
	global.__objectDepths[5] = 0; // oLadders
	global.__objectDepths[6] = 0; // oDoor
	global.__objectDepths[7] = 0; // oKey
	global.__objectDepths[8] = 0; // oEnd


	global.__objectNames[0] = "control";
	global.__objectNames[1] = "oDangerous";
	global.__objectNames[2] = "oPlayer";
	global.__objectNames[3] = "oWall";
	global.__objectNames[4] = "oSpinner";
	global.__objectNames[5] = "oLadders";
	global.__objectNames[6] = "oDoor";
	global.__objectNames[7] = "oKey";
	global.__objectNames[8] = "oEnd";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
