function cutStringIntoSections( str:String , sectionLength:int ):Vector.<String> {
	
	var result:Vector.<String> = new Vector.<String>();
	for(var i:int = 0; i < str.length; i += sectionLength) {
		
		result.push(str.slice( i , i + sectionLength ));
		
	}
	return result;
	
}