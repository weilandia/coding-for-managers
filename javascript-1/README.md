# Javascript

|Objectives|
|----------|
|Understand what JavaScript is|
|Learn about 'Data Types' in JS|
|Learn what a function is and how to write it|
|Understand Control Flow|
|Understand how JS is used in the browswer|


Like Java, Python, and Ruby, JavaScript is a scripting language that allows you to build dyanmic software systems. One of the benefits of JavaScript is that it can run in your browser, serving as a client-side scripting language. Through technologies like Node.js, JavaScript can also be used as a server-side scripting language. Almost all interactive effects that you see on a webpage are likely enabled by JavaScript.

#### Background:

JavaScript was created in 1995 by Brendan Eich, an engineer at Netscape, and first released with Netscape 2 early in 1996.
JavaScript is the only scripting language that can be run by your browser.

**Practice 1:**

JavaScript is powerful because it allows us to interact with the user through the browser.
* open a tab in Chrome and try the following:
    * alert(5 + 7)
    * alert("The date and time is now " + new Date());
    * var favPark = prompt("What is your favorite park in San Francisco?")
    * console.log("Your favorite park in SF is", favPark)

#### Writing JavaScript directly within HTML files and linking to external scripts

**Within the head or body of your HTML Files:**

```html
<!DOCTYPE html>
<html>
 <head>
    <title>JS Test</title>
    <style>
      #player_title {
        font-family: 'helvetica neue', helvetica, sans-serif;
        letter-spacing: 1px;
        text-transform: uppercase;
        text-align: center;
        border: 2px solid rgba(0,0,200,0.6);
        background: rgba(0,0,200,0.3);
        color: white;
        box-shadow: 1px 1px 2px rgba(0,0,200,0.4);
        border-radius: 10px;
        padding: 3px 10px;
        display: inline-block;
        cursor: pointer;
      }
    </style>
 </head>
 <body>
    <div id="player_title">
      Player 1: Jennifer
    </div>
    <script>
      // js goes here
    </script>
 </body>
</html>
```

**Practice 2:**

Javascript allows us to interact with HTML/CSS by directly manipulating items on the DOM - we can select elements by using CSS/Element selectors and change them dynamically. An event listener is one of the most important pieces aspects of interactivity on a webpage. It allows us to execute code when a certain user action takes place, like a `click`. Add the following code into the `script` section in your HTML file:

 ```js
var playerTitleElement = document.getElementById('player_title');

playerTitleElement.addEventListener('click', updateName);

function updateName() {
  var name = prompt('Enter a new name');
  playerTitleElement.textContent = 'Player 1: ' + name;
}
 ```

#### JS Syntax

Javascript is similar to Ruby with some notable exceptions: 
* instead of using the `end` keyword to the delimit the bounds of a function, conditional or loop, JS makes heavy use of curly braces `{}`.
* in a conditional statement, the condition (that evaluates to true/false) must go inside of parentheses `()`.
* JS uses the `var` keyword to define a variable and the `function` keyword to define a function.

Example conditional:

```js
var dayIndex = new Date().getDay();
if (dayIndex === 1){
  console.log("Have the Monday blues?! Write some JavaScript and it'll make everything better :)")
} else {
  console.log("Don't worry, Friday is only", 5 - dayIndex, "days away!")
}
```

**Exercise 1:**

Add another user prompt into the `updateName()` function. It should ask the user to enter a color. Store that color into a new variable called `color`. Then use that variable to change the color of the playerTitle element's background. *Hint: you can access an element's css through its `.style` property. You can change it by simply reassigning the value to the new color*

**Linking to external JavaScript files:**

```html
 <script src="/path-to-a-javascript-file"></script>
 ```

**Exercise 2:**

Let's move our JavaScript into an external file. Name it `script.js`. Reference it in the `<script>` tag by defining the relative path of the file in the `src` property.

### Data Types, Arithmetic Operators, & Comparisons
JavaScript has many of the same datatypes as Ruby:

* Number: 1, 23452345
* String: 'Hello World', "Hi there'
* Boolean: true, false
* Array: [1, 2, 3]
* Null, Undefined

### Arithmetic Operators: 5 operators with the same order of operations as your traditional arithmetic

* Multiplication: `*`. Eg: 5 * 10 = 50;
* Division: `/`. Eg: 10/5 = 2;
* Addition: `+`. Eg: 5 + 7 = 12;
* Subtraction: `-`. Eg: 7 - 5 = 2;
* Modulus: `%`: Performs division and returns the remainder. Eg: 6 % 3 = 0; Eg: 7 % 3 = 1;

**Exercise 3:**

Let's create a simple tip calculator. Under the `player_title` `div`, let's add:

```html
<br/>
<input id="meal_cost" type="number"/>
<br/>
<button id="add_tip">Add Tip</button>
<br/>
<div id="total_cost"></div>
```

Create a function called `AddTip` that has a `prompt` in it that asks the user how much tip they want to leave. The prompt should store a value into a variable called `tipAmount`. You can get the meal price from the input box by selecting the element using its ID and then accessing the `value` property. Save this amount into another variable called `mealPrice`. Try doing some simple arithmetic and update the `textContent` of the `total_cost` div with the total amount. Finally, add a `click` listener onto the `add_tip` button and specify your `AddTip` function as the callback.


 `<input>` tag with the `type` property set to `number` and `id` property set to `meal_cost`. Next, create 3 `<button>`s containing the text `15`, `18`, `20`. Next, create a `<div>` with an `id` of `total_cost`.

### Making Comparisons: JavaScript evaluates the comparison, returning true or false

* Greater than: `>`
* Less than: `<`
* Equality: `==`; Converts operands if they aren`t the same type, then applies strict equality; Eg: 1 == `1`
* Strict Equality: `===` Two operands are equal without type conversion: Eg: 1 === 1
* Not equal: !=
* Strict not equal: !==
* Greater or equal: >=
* Less or equal: <=


* Objects: A collection of properties representing key-values pairs.

### Example of an Object:

```js
var harry = {};
harry.height = "6 feet";
harry.weight = "190 lbs";
harry.profession = "Barber";
harry.children = ["Jack", "Jill", "Gretta"];

 harry : {height: "6 feet", weight: "190lbs", job: "Barber", children: ["Jack", "Jill", "Gretta"]};
 ```
* Methods: JavaScript objects, arrays and functions each have their own unique properties and methods available to them
https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Array/prototype
Full list of array, function, and object methods:
    Common array properties and methods: length, pop(), push(), slice(), sort(), reverse()
•
• Full list of built in JavaScript methods: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Methods_Index


### JS Functions

Similar to Ruby function, JS functions take optional arguments and return values. The default return value is `undefined` and we must explicitly use the `return` keyword to return anything else. There are several ways to define a function:

```js
   var threeTimes = function(num) {
     return num * 3;
   }

  function threeTimes(num) {
    return num * 3;
  }

  console.log(threeTimes(5)); 
```

* **Global Variable:** Defined outside of functions. Once defined, its value can be set later on the file, either inside or outside of functions.
* **Local Variables:** Defined inside a function. A local variable is only accessible from within the function in which it was defined. If a local variable is referenced from anywhere outside of the function, it will be `undefined`.

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
code to be executed if this condition is true and the one(s) above it aren`t true
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
  console.log(ages[i] + " years old");
}
```

* While Loops: Executed while a condition is true.
```js
var start = 1;
while (start < 10) {
  console.log("start: " + start); start++;
}
```

### In-Class Exercise/Homework:

- Using the JavaScript you`ve learned so far and HTML, create a program that prompts the user to enter an integer and returns "fizz" if the integer is divisible by 3, "buzz" if the integer is divisible by 5, "fizzbuzz" if the integer is divisible by 3 & 5, and otherwise simply returns the integer.

**HINT: The only JavaScript methods you might need, other than what you already know so far are: alert('message'); and prompt('question'). Feel free to look those up.**

### Extra Resources
* https://www.codecademy.com/learn/javascript
* https://www.tutorialspoint.com/javascript/
* https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/JavaScript_basics
