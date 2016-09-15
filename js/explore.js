// - initialize a string 
// - iterate over each letter in the string adding it to an empty string variable
// 	- 'pizza'
// 	- 'p' >> '' = 'p'
// 	- i >> 'p' = 'ip'
// 		- and so on



function reverseStr(str) {
	
	var backwardsStr = "";
	for (var i = 0; i < str.length; i++) {
		backwardsStr = str[i] + backwardsStr;
	}
	return backwardsStr;
}

// console.log(reverseStr('pizza'))

var str = 'pizzaaaaa'
if (str.length < 6) {
	console.log(reverseStr(str))
} else {
	console.log('Sorry, string is too long')
}

