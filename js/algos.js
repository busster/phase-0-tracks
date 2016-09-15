// - take an array of phrases
// - iterate over array and get the length of each phrase
// 	- if the length of the phrase is longer than the last phrase
// 	-  set that index as the longest phrase
// - print the phrases array with the longest phrase index

var phrases = ["long phrase","longest phrase","longer phrase"]

function longestPhrase(phrases) {
	var longestPhraseIndex = 0
	var phraseLength = 0
	for (var i = 0; i < phrases.length; i++) {
		length = phrases[i].length;
		if (phraseLength < length) {
			var longestPhraseIndex = i
			phraseLength = length
		}
	}
	return phrases[longestPhraseIndex]
}


var person = {'name': 'Dude', 'age': 35};
var dog = {'name': 'Hank', 'age': 3, 'color': 'pink'}

// - Get the key names from both hashes
function getKeyNames(hash) {
	var keys = [];
	for (var key in hash) {
		keys.push(key);
	}
	return keys;
}

// iterate the second arry over each index of the first filling a matched key
// array with the key names if they are equal
function matchKeyNames(obj1, obj2) {
	var matchedIndices = [];
	for (var i = 0; i < obj1.length; i++) {
		var keyName = obj1[i]
		for (var x = 0; x < obj2.length; x++) {
			if (keyName == obj2[x]) {
				matchedIndices.push(obj2[x]);
			}
		}
	}
	return matchedIndices;
}

// set to true if the matched key arry is not empty
// return the boolean and also the array of matched keys
function checkKeyNames(obj1, obj2) {
	obj1Keys = getKeyNames(obj1);
	obj2Keys = getKeyNames(obj2);
	matchedIndices = matchKeyNames(obj1Keys, obj2Keys);
	if (typeof matchedIndices !== 'undefined' && matchedIndices.length > 0) {
		similarKey = true
	} else {
		similarKey = false
	}
	return [similarKey, matchedIndices]
}



// input an amount n of strings to generate 
// do n times
//		generate random number n between 1 and 10
//		do n times
//			generate random letter
//			add letter to string

// math.random gives a random float point value from 0..1 not including 1
// we want to scale this by our range and include the end value
// floor the float point so that it is an int and does not exceed our range
function randomInt(min, max) {
	min = Math.ceil(min);
	max = Math.floor(max);
	return Math.floor(Math.random() * (max - min +1)) + min;
}

function randomLetter(min, max) {
	var letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	min = Math.ceil(min);
	max = Math.floor(max);
	return letters.charAt(Math.floor(Math.random() * (max - min +1)) + min);
}

function createStringArray(amount) {
	var stringArray = []
	for (i = 0; i < amount; i++) {
		length = randomInt(1, 10)
		var str = ''
		for (x = 0; x < length; x++) {
			str += randomLetter(1, 52);
		}
		stringArray.push(str)
	}
	return stringArray
}





var strings = createStringArray(10)
console.log(strings)
console.log('The longest phrase is: ' + longestPhrase(strings));



console.log('------------------------------------------------')



console.log('The longest phrase is: ' + longestPhrase(phrases));



console.log('------------------------------------------------')



var keyInfo = checkKeyNames(person, dog);
var similarKey = keyInfo[0];
var indices = keyInfo[1];

console.log('Objects have a similar key: ' + similarKey);
// if the two objects have similar keys, print those keys.
if (similarKey == true) {
	indicesStr = ''
	for (var i = 0; i < indices.length; i++) {
		matchedIndicesStr = indices[i]+ ', ' + indicesStr
		indicesStr = matchedIndicesStr
	}

	console.log('The similar keys are: ' + indicesStr)
}