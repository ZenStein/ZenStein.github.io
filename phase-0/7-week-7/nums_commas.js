// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Regina Wong, Chris Shahin & Lindsey Stevenson.

// Pseudocode

// input: a number
// output: a string with commas in the right places

// steps:

// add number into a list where each digit is in a separate index
// check the size of the list (how many digits are there)
// if there are fewer than three digits:
//    return the number as a string
// if there are more than three digits:
//    loop through the list from the back
//    insert a comma every three digits
// return the number as a string with commas


// Initial Solution


function separateComma(number){
    var array = number.toString().split("");
    newArray = '';
    if ( array.length >=4 ) {
        for(var x = array.length-4; x >= 0; x-=3) {
            array[x] = array[x] + ',';
        }
       for(var y = 0;y<array.length;y++){
           newArray += array[y];
       }
        return newArray;
    }
    else{
       return number;
    }
}
var test = separateComma(77777);
console.log(test);
// Refactored Solution
function separateComma(number){
    var array = number.toString().split("");
    newArray = '';
    for(var x = array.length-4; x >= 0; x-=3) {
        array[x] = array[x] + ',';
    }
    for(var y = 0;y<array.length;y++){
        newArray += array[y];
    }
    return newArray;
}


// Your Own Tests (OPTIONAL)


 console.log(separateComma(555));
//separateComma(555)
//console.log(separateComma(69023456))

// Reflection
/*
 What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
	 No, the solution was relatively the same.
 What did you learn about iterating over arrays in JavaScript?
			 the forEach method is quite similar to ruby's .each.
 What was different about solving this problem in JavaScript?
	 essentially nothing, minus the syntactical differences.
 What built-in methods did you find to incorporate in your refactored solution?
		 This solution was refactored by eliminating if statement. We found it wasn't necessary.
 */