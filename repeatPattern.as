function repeatPattern( pattern:String , repeatTimes:int ):String {
	
	var result:String = "";
	for each ( var binaryDigit:String in repeatTimes.toString( 2 ).split( "" ) ) {
		
		result += result;
		
		if( binaryDigit == "1" )
			result += pattern;
		
	}
	return result;
	
}