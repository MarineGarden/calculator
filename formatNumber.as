include "repeatPattern.as";

function formatNumber( integer:String ):String {
	
	return repeatPattern( "0" , 9 - integer.length ).concat( integer );
	
}