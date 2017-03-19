# Javascript


## Introduction to JavaScript


|Objectives|
|----------|
|Understand what JavaScript is|
|Learn about 'Data Types' in JS|
|Learn what a function is and how to write it|
|Understand Control Flow|
|Complete a practice problem|


Like Java, Python, and Ruby, JavaScript is a scripting language that allows you to build systems that do cool things. One of the benefits of JavaScript is that it can run in your browser, serving as a ‘client-side’ scripting language. Any cool effects that you see on a webpage are likely enabled by JavaScript.


#### Background:

JavaScript was created in 1995 by Brendan Eich, an engineer at Netscape, and first released with Netscape 2 early in 1996.
JavaScript is the only scripting language that can be run by your browser.


#### In-Class Exercises - Running code in the browser console:

* Calculate the total number of dollars you spent today
* Type out your name in quotes

#### Writing JavaScript scripts in HTML files and linking

**Within the head or body of your HTML Files:**

```html
<script>
Your JavaScript code.....
</script>
```

**Linking to external JavaScript files:**

```html
 <script type="text/JavaScript" src="/path-to-your-file-file"></script>
 ```


### Data Types, Arithmetic Operators, & Comparisons

* Number: 1
* String: ‘Hello World’
* Boolean: true/false Object
* Function:
* Array: [1, 2, 3]
* Date: RegExp:
* Null Undefined
* Numbers: 64 bit (unlock other scripting languages, JavaScript numbers represent whole integers as well as decimals)


### Arithmetic Operators: 5 operators with the same order of operations as your traditional arithmetic

* Multiplication: ‘*’. Eg: 5 * 10 = 50;
* Division: ‘/’. Eg: 10/5 = 2;
* Addition: ‘+’. Eg: 5 + 7 = 12;
* Subtraction: ‘-’. Eg: 7 - 5 = 2;
* Modulus: ‘%’: Performs division and returns the remainder. Eg: 6 % 3 = 0; Eg: 7 % 3 = 1;


### Making Comparisons: JavaScript evaluates the comparison, returning true or false

* Greater than: ‘>’
* Less than: ‘<’
* Equality: ‘==’; Converts operands if they aren’t the same type, then applies strict equality; Eg: 1 == ‘1’
* Strict Equality: ‘===’ Two operands are equal without type conversion: Eg: 1 === 1
* Not equal: !=
* Strict not equal: !===
* Greater or equal: >=
* Less or equal: <=


* Strings: Collection of characters used to represent text. Eg: ‘Hello World’
* Concatenation: Combines strings together. Eg: “Today is the ” + 10 + “th day at” + “Product” + “School”
* Booleans: true & false
* Null: empty / ‘no value present’
* Undefined: original value of an object. Eg: var yourName;
* Arrays: A variable that can hold one or more values at a time.
* Variables: Symbolic names for values in an application
  1. Can contain letters, digits, underscores, and dollar signs.
  2. Names are case sensitive
  3. Cannot be named a reserved a word: break, case, catch, continue, debugger,default, delete, do, else,
finally, for, function, if, in, instanceof, new, return, switch,this, throw, try, typeof, var, void, while, and with.

```js
var myName = “Casey”;
var myAge = 30;
```

* Objects: A collection of properties representing key-values pairs.

### Example of an Object:

```js
var harry = new Object();
 harry.height = “6 feet”;
 harry.weight = “190 lbs”;
 harry.profession = “Barber”;
 harry.children = [“Jack”, “Jill”, “Gretta”];

 harry : {height: “6 feet”, weight: “190lbs”, job: “Barber”, children: [“Jack”, “Jill”, “Gretta”]};
 ```
* Methods: JavaScript objects, arrays and functions each have their own unique properties and methods available to them
https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Array/prototype
Full list of array, function, and object methods:
    Common array properties and methods: length, pop(), push(), slice(), sort(), reverse()
•
• Full list of built in JavaScript methods: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Methods_Index


### Functions

A function is a value (variable) that wraps a piece of programming. They clarify the naming of tools, isolate specific tools or programs within a larger program and make code re-usable.


Defining Functions: a function is a regular variable where the variable happens to be a function.
```js
   var threeTimes = function(number) {
     return number * 3;
   }

console.log(number(5));  //returns 15
```


Alternate function definition syntax:
```js
  function threeTimes() {
    return number * 3;
  }
```

* Parameters: A function can have no parameters or many parameters.
* Scope:
```js
var helloWorld = function() {
  console.log(‘Hello World’);
}

var afterTaxIncome = function(income, taxrate) {
  return income * (1-taxrate);
}
```

* **Global Variable:** Defined outside of functions. Once defined, its value can be set later on the file, either inside or outside of functions.
* **Local Variables:** Defined inside a function. A local variable is only accessible from within the function in which it was defined. If a local variable is referenced from anywhere outside of the function, it will be ‘undefined’.

```js
  var globalVariable = 7;

  function double(x) {
    var localVariable = x; //localVariable is only accessible within this function (it has local scope). return x*2;
  }

  function makeFour(variable) {
    variable = 4;
  }

  makeFour(globalVariable); //transforms the value of globalVariable from 7 to 4.
```

### Conditionals

**Create a function that accommodates a number of different scenarios.**
Conditional statements allow you to execute code only if a certain condition is met. They enable to you to

```js

if (condition) {
  code to be executed if the condition is true }
} elseif (condition) {
code to be executed if this condition is true and the one(s) above it aren’t true
} else {
 code to be executed if the two conditions above are not true
}

```
For a conditional, the first if statement if required, subsequent `elseif` and `else` statements are optional. You can include as many elseif conditions as you would like.


### Loops/Iterators
**Loops allow you to execute a block of code multiple times until a condition is met**

* For Loops: executed until a specific condition returns false.
```js
for (initialization; condition; increment) {
  // statements
}

var ages = [30, 35, 10, 22, 18, 12];

for (var i = 0; i < ages.length; i++) {
  console.log(ages[i] + “ years old”);
}
```

* While Loops: Executed while a condition is true.
```js
var start = 1;
while (start < 10) {
  console.log(“start: “ + start); start++;
}
```

### In-Class Exercise/Homework:

- Using the JavaScript you’ve learned so far and HTML, create a program that prompts the user to enter an integer and returns “fizz” if the integer is divisible by 3, “buzz” if the integer is divisible by 5, “fizzbuzz” if the integer is divisible by 3 & 5, and otherwise simply returns the integer.

**HINT: The only JavaScript methods you might need, other than what you already know so far are: alert(‘message’); and prompt(‘question’). Feel free to look those up.**

### Extra Resources
* https://www.codecademy.com/learn/javascript
* https://www.tutorialspoint.com/javascript/
* https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/JavaScript_basics
