var colors = ["red", "white", "black", "brown"];
var names = ["Ace", "Ben", "California", "Dancer"];

colors.push("purple");
names.push("Ed");

var horse = {};
for (var i = 0; i < names.length; i++) {
	horse['name'] = names[i];
	horse['color'] = colors[i];
	
	console.log("The horse's name is " + horse['name'] + ".");
	console.log("The horse's color is " + horse.color + ".");
	console.log("-------------------------------");
}