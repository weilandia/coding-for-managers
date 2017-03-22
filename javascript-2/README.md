# JQuery

|Objectives|
|----------|
|Learn what JQuery is|
|See how we might integrate JQuery into our website|
|Apply examples of JQuery in Bootstrap|

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
var content = document.getElementsByClassName('entry-title');
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
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

  <!-- custom script that relies on jQuery-->
  <script type="text/javascript" src="main.js"></script>
</body>
</html>
```

**Exercise 1**
Use jQuery to select the element containing the words "Hello There" in the snippet above. Use jQuery to change the text by invoking the `.text()` method on the WRAPPED element and passing in a string as an argument. Then change the `color` and `fontSize` of the text using the `.css()` method and passing in a hash with properties and values.

### jQuery and Rails

jQuery comes bundled with Rails by default. It's already included in your project! Let's open up c9.io and go to your blog.

**Exercise 1**
Let's give your landing page a little animation when the user loads the page.