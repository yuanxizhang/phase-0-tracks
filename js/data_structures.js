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

function car(year, color, brand){
	this.year = year;
	this.color = color;
	this.brand = brand;
	
	this.accelerate = function() {console.log("Vroom! Vroom!")};
	this.honk = function() {console.log("Beep! Beep!")};
}

var oldCar = new car(1950, "red", "Ford Mustang");
var smallCar = new car(2010, "blue", "Honda Fit");

console.log("The old car is a " + oldCar.year+ " "+ oldCar.brand + ".");
oldCar.accelerate();
oldCar.honk();
console.log("The small car is a " + smallCar.year+ " " + smallCar.brand + ".");
smallCar.accelerate();
smallCar.honk();