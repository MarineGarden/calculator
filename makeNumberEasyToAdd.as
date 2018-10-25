include "cutStringIntoSections.as";
include "reverseStringContent.as";

function makeNumberEasyToAdd( integer:String ):Vector.<String> {
	
	return reverseStringContent( cutStringIntoSections( reverseString( integer ) , 9 ) );
	
}