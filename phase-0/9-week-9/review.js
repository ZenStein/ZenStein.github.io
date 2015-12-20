//Pseudo

	//Because this is so basic, I will only do the pseudo for createList,
	// create a function named createList that takes one parameter of type string. The string should be space
	// separated grocery items.  createList will initialize a new empty object called returnObj.
	// Then it will create an array from the string parameter. Next it will iterate over
	// the newly created array, and assign each element to returnObj as a property, and set it's
	// value to 1. Lastly, return the empty

//Initial Solution:
/*function createList(string){
	var returnObj = {};
	var array = string.split(' ');
	array.forEach(function(el){
		returnObj[el] = 1;
	})
	return returnObj;
}
function add(obj, listItem, quantity){
obj[listItem] = quantity;
	return obj;
}
function remove(obj, objItem){
	delete obj[objItem];
	return obj;
}
function update(obj, listItem, quantity){

	obj[listItem] == undefined ? add(obj, listItem, quantity) : obj[listItem] += quantity;
	return obj;

}
function printObj(obj){
	for(var el in obj){
		console.log('item: '+ el + ', quantity: '+ obj[el]);
	}

	return obj;
}*/
//Refactored Solution:
function createList(string){
	var returnObj = {};
	var array = string.split(' ');
	array.forEach(function(el){
		returnObj[el] = 1;
	})
	return returnObj;
}
function add(obj, listItem, quantity){
obj[listItem] = quantity;
	return obj;
}
function remove(obj, objItem){
	delete obj[objItem];
	return obj;
}
function update(obj, listItem, quantity){

	obj[listItem] == undefined ? add(obj, listItem, quantity) : obj[listItem] += quantity;
	return obj;

}
function printObj(obj){
	for(var el in obj){
		console.log('item: '+ el + ', quantity: '+ obj[el]);
	}

	return obj;
}

groceryListString = 'tomatoes bananas apples';
groceryListObj = createList(groceryListString);
console.log(add(groceryListObj, 'almonds', 7));
console.log(add(groceryListObj, 'almonds', 3));
console.log(remove(groceryListObj,'bananas'));
console.log(update(groceryListObj, 'tomatoes', 5));
console.log(update(groceryListObj, 'someNewItem', 33));
printObj(groceryListObj);

//Reflection:

	//What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
		// It was a good refreshment working with functions, and getting them to manipulate objects.
	//What was the most difficult part of this challenge?
		// I didn't really struggle with anything.
	//Did an array or object make more sense to use and why?
		// object, because each property needed a separate value associated with it.
