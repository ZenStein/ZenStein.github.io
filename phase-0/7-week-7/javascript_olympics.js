// JavaScript Olympics

// I paired [with Joe Plonsker, Rueben Brandt, Chris Shahin, Luis De Castro, Lindsey Stevenson] on this challenge.

// This challenge took us [#] hours.


// Bulk Up

var phelps = {
    name:'Michael Phelps',
    event:'100 M Freestyle'
}
var eminem = {
    name: 'Marshall Mathers',
    event: '100 Second Freestyle'
}
var hughes = {
    name:'Susan Hughes',
    event:'Ladies Singles'
}

var athletes = [phelps, hughes, eminem];
var name = 'name';
for (var index = 0; index < athletes.length; index+=1){
    console.log(athletes[index][name] + " won "+ athletes[index]['event']);
}

// Jumble your words

function reverse_string(string) {
    var backwards = '';
    for (var i = string.length - 1; i >= 0; i--){
        backwards += string[i];
    }
    console.log(backwards);
}

reverse_string("Racecar")


function reverser(array){
    var newArray = [];

    for (var index = 0; index < array.length; index+= 1) {
        newArray.push(array[index].split('').reverse().join(''));
    }
    console.log(newArray);
}

var name = ["Reuben", "Luis", "Joe"];
reverser(name)

// working on reversing our array of reversed names...
// var test = reverser(name);
// var reversed_names =
// reverse(reverser(name))
// reversed_names.reverse();
// reverser(name);


// 2,4,6,8

var all_nums = [1, 2, 3, 4, 5, 6, 7];

function even_numbers(list){
    var evenArray = [];
    for (var index = 0; index < list.length; index++){
        if (list[index] % 2 === 0){
            evenArray.push(list[index]);
        }
    }
    return evenArray;
}

console.log(even_numbers(all_nums));



//  list.forEach(function(){})
// "We built this city"

var Athlete = function(name,age,sport,quote){

    this.name  = name;
    this.age   = age;
    this.sport = sport;
    this.quote = quote;


}


// DRIVER CODE

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)

console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

/** Reflection  **\

What JavaScript knowledge did you solidify in this challenge?
    It was a good refreshment on all basic js syntax and object manipulation.  So much Ruby
    had me pretty rusty. I've never coded without using semicolons, now Ruby comes along can
    I keep forgetting to use them!
What are constructor functions?
    These are js's equivalent to Classes. They are instantiated by being'new'd up' which creates an
    instance.

How are constructors different from Ruby classes (in your research)?
 Js uses prototypical inheritance. Big words, not too hard to understand though.  Object Oriented languages
 (Ruby, PHP, etc..) use a special object that is used define your class. You can then create instances
 off those classes. Js can be structured to work in this exact way, if you choose to. However, your 'classes'
 are not special, they are just plain old objects. There are two key components to understand.  EVERYTHING
 is an object in js. Functions are objects. Even strings are objects. All functions have a prototype property.
 All a prototype is though, is ...... you guessed it, an OBJECT! Grasping this concept is key to going on to the next
 level. From there, all functions(remember that functions are really just an object) have a property on them, call
 prototype. The idea behind this prototype is to allow functions to link and inherit each others properties and methods.
 To keep things super simple for now, you want to have a few key ingredients. You will always need a way do define
 an object. From there you will need to stamp out copies of that object. say object Person has a name property.
 If you wanted to make three people, Tom, Dick and Harry, you would have three objects. All three objects have a
 property called name. The difference here would be the value of that property. Ones Tom, the others Dick... How would I
 create these three objects?  First I would write my constructor function Person which would take in name, and
 this.name = name.  To create Tom and Dick, you could write var tom = new Person('Tom').  The new keyword creates a copy
 of the object. The 'this' is how we tell js that every time this object is 'new''d there needs to lbe an instance var.
 So all Person objects have a property name, each instance has a separate value for that property. From there, prototype
 allows us to link objects and properties to another object, so all it's instances have access to another objects
 properties. This is the inheritance part.  Essentially, every object inherits from other objects, creating an
 inheritance chain.  More on that later though.





 *\