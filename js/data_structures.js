var colors = ['green', 'red', 'blue', 'yellow'];
var names = ['Ed', 'Jerry', 'Maya', 'Lin'];

colors.push('white');
names.push('Frank');


var horses = {};
for (i = 0; i < names.length; i++) {
	horses[names[i]] = colors[i];
}


function Car(color, numberOfSeats, numberOfDoors) {
	this.color = color;
	this.numberOfSeats = numberOfSeats;
	this.numberOfDoors = numberOfDoors;

	this.honk = function() {console.log("Honk!");};
}


var car = new Car('green', 5, 2)
console.log(car)
car.honk()


var car2 = new Car('red', 4, 2)
console.log(car2)
car2.honk()

var car3 = new Car('pink', 7, 4)
console.log(car3)
car3.honk()


console.log(horses)

console.log(colors)
console.log(names)