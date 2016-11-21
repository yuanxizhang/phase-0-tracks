// step 1: split the string into an array of individual letters, 
// steo 2: reverse the order of the letter array
// step 3: join the new letter array into a new string, return the new string

function reverse(str){
	newString = str.split('').reverse().join('');
	return newString;
};

var myPotato = reverse("potato");
if (3==3){
	console.log(myPotato);
};
