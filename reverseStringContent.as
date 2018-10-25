include "reverseString.as";

function reverseStringContent( contentTarget:Vector.<String> ):Vector.<String> {
	
	for ( var i:int = 0 ; i < contentTarget.length ; i++ ) {
		
		contentTarget[ i ] = reverseString( contentTarget[ i ] );
		
	}
	return contentTarget;
	
}