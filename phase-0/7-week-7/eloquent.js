// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var myVar = "some really useful data from my javascript variable!!";
console.log(myVar);


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

        /*   triangle solution to_js!   */

function validTriangle(a, b, c){
    var values = [a*a,b*b,c*c];
    var y,z;
    var flag = false;
    for(var x = 0;x<3;x++){
        y = (x + 1)%3;
        z = (x + 2)%3;
        if (( (values[x] + values[y] == values[z]) || (a == b && a == c) || ( (b == c && b == a) || (a==b || b ==c || c == a) ) ) && a != 0 && b != 0 && c != 0 && a + b > c && c + a > b && c + b > a){
            flag = true;
        }
    }
    return flag;
}

console.log('should be true,  and it = ' + validTriangle(5,5,5));
console.log('should be true,  and it = ' + validTriangle(4,3,5));
console.log('should be false, and it = ' + validTriangle(20,2,2));

/*****************************

 //Functions

What are the differences between local and global variables in JavaScript?
    globals can be accessed from anywhere, locals can only be accessed in their current scope.

    When should you use functions?
    Always, js is really just one big function! Any time you need to perform repetitve tasks, or if you
    want to break the code up into readable sections.
    What is a function declaration?
    the name pretty much explains it. It is the definition of the function. When you call the function
    by it's name, js goes to the definition and runs that code, passing in the arguments that you specified.

 ******************************/

// Complete the `minimum` exercise.

function min(array){
    var minVal = null;
    array.forEach(function(el){
        minVal = (el <= minVal || minVal == null) ? el : minVal;
    });
    return minVal;
}
console.log(min([11,7,9,3,20]));
console.log('^^  min([11,7,9,3,20]) ^^');

        /** Data Structures: Objects and Arrays **\

 What is the difference between using a dot and a bracket to look up a property?
 Ex. array.max vs array["max"]
 They access the value in the same way, but you use [] if your code requires
 that a variable be placed between the brackets.
 Ex. function someFunc(arg, prop, val){
 arg[prop] = val;
 return arg;
 }
    --| Above is an example of how you can use a variable to access a property. For 'prop'
    --| in  arg[prop], if prop is not a defined property of arg, then js will create a new property.    */

// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
    var me = {
        name : 'Chris',
        age : 30,
        favoriteFoods : ['coffee','beer','pizza'],
        quirk : 'Stay the F(*& out my kitchen!!'
    }
     /** HAD TO COMMENT OUT THE PROMPT FUNCTIONS, IT THROWS AN ERROR ON node **\

//    var getFood = prompt("What's your favorite food? ", "Pizza");
//    if (getFood.length) { console.log("Hey! That's my favorite too!"); }
//    else{ console.log('You didn\'t specify anything?'); }

                /** Reflections **\

 Did you learn anything new about JavaScript or programming in general?
    Not particularly
 Are there any concepts you feel uncomfortable with?
    No, I am pretty familiar with javascript and most basic programming concepts

 Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
     Similarities:
        string concatenation using + sign
        accessing object properties using []. ex someVar['someProp']
    Diffs:
        Among many, defining functions and use of semicolon

-- Values, Types, and Operators  --

 What is an expression?
    A fragment of code that produces a value is called an expression.

 What is the purpose of semicolons in JavaScript? Are they always required?
    They are used to signify the end of the statement
    --from reading-- "In some cases, JavaScript allows you to omit the semicolon at the end of a statement"
 What causes a variable to return undefined?
    --from reading--  "If you ask for the value of an empty variable, you’ll get the value undefined"

 What does console.log do and when would you use it? What Ruby method(s) is this similar to?
    Ruby has puts or p and js uses console.log among others to write out to the console. Used for debugging and building mainly

 Describe while and for loops
    While loops continue to run while an expression is true. A for loop is the fastest of all
    js loop methods. It is not really readable, and you have to understand the syntax. You want to
    use this loop when you know the number of iterations that are required.

 What other similarities or differences between Ruby and JavaScript did you notice in this section?
        All the core concepts are the same sort of. Js doesn't have the structure that Ruby does.  Even
        there technically aren't 'classes' in js, they have a few very loose ways to achieve the same
        result. The bad thing about this is that there isn't much standardization of how things are to be done.
        There have been recent efforts to overcome this issue. I really like Angular's approach to getting some
        standardization, and also the use of components.

What is a JavaScript object with a name and value property similar to in Ruby?
    A hash.          */