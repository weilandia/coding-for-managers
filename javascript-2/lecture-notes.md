# JQuery

## What you'll learn in this course
* Better understand the DOM
* Learn what JQuery is and practice with it
* See how we might integrate JQuery into our website

## DOM Review

The DOM (Document Object Model) is a structure, object-oriented representation of a webpage. Each element, whether it's `<body>` or `<div>` or `<p>` etc., is represented by a JavaScript object that has methods and properties. You can think of the overall structure as a tree with parents, siblings, and children.

## Intro to jQuery

jQuery is a **powerful, easy-to-use JavaScript library**. It was invented in 2005 and has made our lives as developers better ever since. The slogan for jQuery is "write less, do more". jQuery is a great toolbox that provides convenient functions we can use as opposed to writing the functionality we need from scratch.

*We use jQuery because it's:*

* **Convenient:** provides an easy and consistent API for developers to manipulate the DOM.
* **Less Buggy:** ensures JavaScript DOM manipulation works the same, cross-browser.
* **Popular:** [60 - 70%](https://trends.builtwith.com/javascript/jQuery) of the most visited websites use jQuery.

### jQuery Syntax

With jQuery, you'll be using the `$` function to select and manipulate DOM items. To select an item, simply pass a string identifier (using familiar CSS selectors like element name (`div`), class name (`.content`), or id name (`#main_title`)) into the function.

The element or elements you get returned from that function call are not WRAPPED elements. They are WRAPPED with jQuery functionality -- they now have powerful methods and properties bestowed upon them by the library. How do we access those methods and properties? Use `dot notation` to call methods and access properties, just like we did in Ruby and vanilla JS:

```js
element = $(".some-class-name");
element.methodName()
element.propertyName
```

Since many sites include the jQuery library, all you have to do is open up the Chrome Developer Console on one of those sites to start experimenting with this new syntax. Let's use this page as an example: https://api.jquery.com/

### jQuery vs. Vanilla JS

Here are some of the basic differences:

**Selecting Elements and manipulating them**

```js
// jquery
var paragraphs = $('p');
paragraphs.hide();

// vanilla js
var paragraphs = document.querySelectorAll('p');
paragraphs.forEach((paragraph) => { paragraph.style.display = 'none' })
```

**Selecting Elements by Class and adding css transitions to them**

```js
// jquery
var content = $('.entry-title');
content.fadeOut(1500);

// vanilla js
var content = document.getElementsByClassName('page-title');
function fadeOut(el) {
  el.style.opacity = 1;

  var last = +new Date();
  var tick = function() {
    el.style.opacity = +el.style.opacity - (new Date() - last) / 400;
    last = +new Date();

    if (+el.style.opacity > 0) {
      (window.requestAnimationFrame && requestAnimationFrame(tick)) || setTimeout(tick, 100);
    }
  };

  tick();
}
for (var i = 0; i < content.length; i++){
  fadeOut(content[i])
}
```

**Selecting Elements by Id and manipulating CSS**

```js
// jquery
var main = $('#main');
main.css({backgroundColor: "green", borderColor: "white", borderRadius: "20px"})

// vanilla js
var main = document.getElementById('main');
main.style.backgroundColor = "green";
main.style.borderColor = "white";
main.style.borderRadius = "20px";
```

**Creating Elements**

```js
// jquery
var newDiv = $('<div>Hello World!</div>');
$('.page-title').append(newDiv);

// vanilla js
var newDiv = document.createElement('div');
newDiv.textContent = "Hello World!";
var elements = document.getElementsByClassName('page-title')
elements[0].appendChild(newDiv);
```

**Adding Event Listeners**

```js
// jquery
$('.page-title').on('click', doTitleClickedActions)
function doTitleClickedActions(event){
  $(this).css({color: "green"});
}

// vanilla js
var title = document.getElementsByClassName('page-title');
title[0].addEventListener('click', doTitleClickedActions);
function doTitleClickedActions(event){
  event.target.style.color = "green";
}
```

### Including jQuery

To use jQuery, you must include the library in your page. The quickest way to include jQuery in your project is to copy the link to the CDN (content delivery network) and put it into a script tag at the bottom of your HTML `<body>`. You can get the CDN by searching for "jQuery" on <a href="https://cdnjs.com" target="_blank">cdnjs</a>.

**Important:** Your JavaScript file MUST come after jQuery in the order you require scripts. This is because the page loads in order, so the jQuery library must be loaded before you can use any of its functionality.

``` html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
</head>
<body>
  <!-- html code here -->
  <div id="greeting">Hello There</div>

  <!-- jquery -->
  <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

  <!-- custom script that relies on jQuery-->
  <script src="main.js"></script>
</body>
</html>
```

### jQuery and Rails

jQuery comes bundled with Rails by default. It's already included in your project! Let's open up c9.io and go to your blog. We're going to be working on your landing page, so let's open the `home/index.html.erb` file up and add a `<script>` tag down before the closing `</body>` tag.

**Exercise 1**
First do this in the Chrome dev console, then, after it is working, transfer it into your `index.html.erb` file's `<script>` tag. Use jQuery (`$`) to select the element with the class `title-1` and save that into a variable. That variable will now contain a jQuery-WRAPPED element. Change the text by invoking the `.text()` method on the WRAPPED element and passing in a string as an argument. Then change the `color` and `fontSize` of the text using the `.css()` method and passing in a hash with the css properties and your own custom values. *Hint: follow the syntax in the css example above*

**Exercise 2**
Let's add a little interactive component to your landing page. Create a function called `changeTitleColor`. Inside the function, you should save a random color into a variable using the function below, `getRandomColor()`. Then, use jQuery to select the `title-1` element and update its css to change the font color to the random color you saved into the variable. Finally, add a click listener onto the `background-image` that triggers the `changeTitleColor` function.

```js
function getRandomColor(){
  return "#000000".replace(/0/g,function(){return (~~(Math.random()*16)).toString(16);});
}
```
