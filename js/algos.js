// longest word function

function longest_word(str){
	var arr = [];
	var longestWord = " ";
	arr = str.split(" ");
	// if the next word in the array is longer than prevoius longest word, make that work the longest word
	for (var i=0; i<arr.length; i++){
		if (arr[i].length > longestWord.length){
			longestWord = arr[i];
		};
	};
	return longestWord;
};
var longWord = longest_word("Nile is the longest river in Afica.");
console.log ("The longest word is " + longWord);