function addSectionsWithDifferentLength( longer:Vector.<String> , shorter:Vector.<String> ):Vector.<String> {
	
	for ( var i:int = 0 ; i < shorter.length ; i++ ) {
		
		longer[ i ] = String( int( longer[ i ] ) + int( shorter[ i ] ) );
		
	}
	return longer;
	
}