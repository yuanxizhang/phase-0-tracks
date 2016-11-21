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

var longWord = longest_word("Elephant is the largest land animal on earth.");
console.log ("The longest word is " + longWord);

// find the same property value in two objects
function find_a_match(ob1, ob2){
	arr1 = Object.keys(ob1);
	arr2 = Object.keys(ob2);
	for (var i = 0; i < arr1.length; i++) {
    	for (var j = 0; j < arr2.length; j++) {
        	if (arr1[i] === arr2[j]) {
       			if ((ob1.hasOwnProperty(arr1[i])) && (ob2.hasOwnProperty(arr2[j]))&&(ob1[arr1[i]]===ob2[arr2[j]])){
       				return true;
       			}else{
       				return false;
       			};
       		};
        };
    };
};

p1 = {name: "Steven", age: 54};
p2 = {name: "Tamir", age: 54};
var b = find_a_match(p1, p2);
console.log(b);