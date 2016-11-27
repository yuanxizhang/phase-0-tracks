// longest word function

function longest_word(str){
	var arr = [];
	var longestWord = " ";
	arr = str.split(" ");
	// if the next word in the array is longer than prevoius longest word, make that word the longest word
	for (var i=0; i<arr.length; i++){
		if (arr[i].length > longestWord.length){
			longestWord = arr[i];
		};
	};
	return longestWord;
};

var s = "Elephant is the largest land animal on earth.";
var longWord = longest_word(s);
console.log ("The longest word in '" + s + "' is " + longWord);

// find the same property value in two objects
function find_a_match(ob1, ob2){
	arr1 = Object.keys(ob1);
	arr2 = Object.keys(ob2);
	keyloop:
	for (var i = 0; i < arr1.length; i++) {
    	for (var j = 0; j < arr2.length; j++) {
    		// check if two keys are the same
        	if (arr1[i] === arr2[j]) {
        			// check if keys are the properties of the two objects
       				if ((ob1.hasOwnProperty(arr1[i])) && (ob2.hasOwnProperty(arr2[j]))){
       					// check if two values are the same
       					if (ob1[arr1[i]]===ob2[arr2[j]]){
       						return true;
       					}else{
       						continue keyloop;
       					};
       				};
       			
       		};
        };
    };
    return false;
};

p1 = {name: "Steven", age: 54};
p2 = {name: "Tamir", age: 54};
var b = find_a_match(p1, p2);
console.log("Found a match? " + b);

function word_array(n){
	var arr = [];

	function getRandomInt(min, max) {
    	return Math.floor(Math.random() * (max-min+1) + min);
	};

	function randomString(length) {
		var str = "";
		var letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
		for(var i = 0; i < length; i++) {
			str = str + letters.charAt(Math.floor(Math.random() * letters.length));
		};
		return str;
	};


	for(var i=0; i< n; i++){
		var randomLength = getRandomInt(1, 10);
		arr.push(randomString(randomLength));
	};
	return arr;
};


for (i=0; i<11; i++){
	myArr = word_array(3);
	word = longest_word(myArr.join(' '));
	console.log("The longest word in [" + myArr +"] is " + word + ".");
};
