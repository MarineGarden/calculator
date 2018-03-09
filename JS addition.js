var sectionLength = 2;
var excess = false;
function add(a, b) {

	var longerLength = Math.max(a.length, b.length);
	a = reverse(a, longerLength);
  	b = reverse(b, longerLength);
  	var reversedAnswer = iterate(a, b);
	return excess ? "1" + reverse(reversedAnswer) : reverse(reversedAnswer);

}
function reverse(anyNumber, wantedLength) {

	if(arguments.length == 2)
		return reverse(format(anyNumber, wantedLength));
	return anyNumber.split("").reverse().join("");

}
function iterate(a, b) { 

	return a.length > sectionLength ? iterate(removeEnd(a, sectionLength), removeEnd(b, sectionLength)) + answer(keepEnd(a, sectionLength), keepEnd(b, sectionLength)) : answer(keepEnd(a, sectionLength), keepEnd(b, sectionLength)); 

}
function removeEnd(message, endLength) { return message.substr(0, message.length - endLength); }
function keepEnd(message, endLength) { return message.substr(message.length - endLength, endLength); }
function answer(a, b) { 

	var additionTry = Number(a) + Number(b) + (excess ? 1 : 0);
	var excessThreshold = Math.pow(10, a.length);
	excess = additionTry >= excessThreshold;
	var answer = excess ? additionTry - excessThreshold : additionTry;
	return format(answer.toString(), a.length);

 }
function format(anyNumber, wantedLength) { return "0".repeat(wantedLength - anyNumber.length) + /[1-9]\d*|0$/.exec(anyNumber); }