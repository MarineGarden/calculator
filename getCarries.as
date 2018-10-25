function getCarries( sectionsTotal:Vector.<String> ):Vector.<String> {
	
	var clonedSections:Vector.<String> = new Vector.<String>().concat( sectionsTotal );
	for ( var i:int = 0 ; i < clonedSections.length ; i++ ) {
				
		if( clonedSections[ i ].length > 9 )
			clonedSections[ i ] = clonedSections[ i ].slice( 0 , 1 );
		else
			clonedSections[ i ] = "0";
				
	}
	clonedSections.unshift( "0" );
	return clonedSections;
	
}