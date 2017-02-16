# <img src="https://cloud.githubusercontent.com/assets/8397980/19818474/bd21af4c-9d04-11e6-8df6-1ed154718dce.png" height="60">

# Hello World!

The goal of this lecture is to give you a roadmap for the course, teach you HTML, introduce you to CSS and to basic concepts of coding such as Graphical User Interface, Integrated Development Environment and Command Line Interface.

## What you will learn in this course
* What is a Graphical User Interface (GUI)
* Use an IDE such as Cloud 9
* Use basic commands of the Terminal
* Structure a webpage with HTML
  * Create a list
  * Embed an image into your webpage
  * Create a form
  * Create a navigation menu
* Start styling your page with CSS
  * Add inline styling
  * Use different selectors
  * Embed styling into your head tag
  * Link your html page to a style Sheet
  * Make responsive design with Media Queries



## Introductions
### Our Project
Our project throughout the whole program will be to build a  blog where you'll be able to write articles, log in and have an about page. Click on the link below to have an overview of what it will look like.
* [What are we going to build?](http://p-school-blog.herokuapp.com)

### Best practices
Some good rules of thumbs to remember during the class are:
**Google when you don't know**
No software engineers have everything in mind when they are coding. Google is a very powerful resource to find what you are looking for.
**Read the lectures notes before class**
Learning coding can be pretty hard at the beginning especially if you have never been exposed to it. Read the lectures notes before each classes will help you understand faster key concepts that will be taught in class.
**Ask as many questions as you like**
Don't be afraid to ask questions during class. If you don't understand something, you will most likely not be alone in that case. Don't hesitate to raise you hand and ask.


### Initial Setup
* [Cloud9](https://c9.io)
* [Github](https://github.com)

### IDE/CLI
An Integrated Development Environment is a software that combines several tools a software developer needs into one place. An IDE usually acts as a text editor, a debugger and a compiler. One IDE that we are going to use is Cloud 9. With this tool you will be able to write some code and directly compile it through Cloud 9.

* Create our first workspace in Cloud9
    * HTML5
    * GUI
    * IDE
    * CLI

At the bottom of your workspace in Cloud 9, you will see something called the command line or console or Shell. If you have ever watched Matrix, the big black screen with green text in it is the command line. Typically, this application will let you access, create, delete files and folders without using the usual graphical interface of your computer. It is very useful once you start creating complex applications because you will need to have all your work in local files and still be able to share it with your team.
[Here](http://www.galvanize.com/learn/learn-to-code/programming-101-how-to-use-the-terminal-command-line/) is a video that explains more in depth the use of the command line.

* Shell Commands ([POSIX](http://pubs.opengroup.org/onlinepubs/9699919799/)/[UNIX](https://upload.wikimedia.org/wikipedia/commons/c/cd/Unix_timeline.en.svg))
    * `ls` (`-t`, `-a`)
    * `pwd`
    * `man`
    * `mkdir`
    * `cd`
    * `touch`
    * `mv`
    * `rm`

*> Exercise: follow along with me to learn some command line basics*

### HTML

Hyper-text Markup Language represents the frame or skeleton of any web page that you see on the Internet. Any front-end or full-stack developer will be working with it daily. The basic concepts of HTML can be learned quickly and you’ll have time to deepen your knowledge of specific attributes, tricks, and tools over time.

#### HTML page structure, head & body

Let's create an index HTML file: `$ touch index.html`

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Page Title</title>
  </head>
  <body>
    Content Here
  </body>
</html>
```
[HTML body tags full list](https://developer.mozilla.org/en-US/docs/Web/HTML/Element)

Commonly Used Tags:

- Headings: `<h1> - <h6> <h1>Hello World</h1>`
- Span: `<span>Copy text </span>`
- **Div**: `<div> [content to be placed inside] </div>`
  - inspect FB page with Chrome Dev Tools

*> Exercise: Change the title. Then add a heading of whatever size you want within the body and put one of the words into a span*

Let's create a page directory: `$ mkdir pages`

#### Lists:

- Unordered list: `<ul> [list items] </ul>`
- List item: `<li> item </li>`

Let's create a menu file: `$ touch pages/products.html`

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Products</title>
  </head>
  <body>
    <ul>
      <li>Burrito</li>
      <li>Dumplings</li>
      <li>Spaghetti</li>
    </ul>
  </body>
</html>
```
*Exercise: add another product to the list*


#### Form:

- Label `<label>`
- Input `<input>`
- Horizontal Rule (aka: horizontal divider line): `<hr>`
- Line break: `<br>`

Let's create a contact us file: `$ touch pages/contact_us.html`

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Contact Us</title>
  </head>
  <body>
    <form>
      <div>
        <label>Email</label> <input required="required" type="email"/>
      </div>
      <div>
        <label>Image</label> <input required="false" type="file"/>
      </div>
      <div>
        <label>Compress Photo?</label>
        <input type="checkbox" value="1"/>
      </div>
      <br>
      <div>
        <label>Category</label>
        <select>
          <option value="1">Compliment</option>
          <option value="2">Complaint</option>
          <option value="3">General Inquiry</option>
        </select>
      </div>
      <hr>
      <div>
        <input type="submit" value="Submit"/>
      </div>
    </form>
  </body>
</html>
```
*Exercise: add another dropdown menu item and another horizontal rule*

- Common form text field types: text, email, password, search, URL
- [Built-in validators](http://www.the-art-of-web.com/html/html5-form-validation/)
- Form field types without text field ‘input’: checkbox, file, radio, number range
- Form buttons: button, reset, submit [W3 Schools](http://www.w3schools.com/tags/att_button_type.asp)

#### Image:

- Image: `<img src=”file-path-or-URL” alt=”alternative title”/>`

Let's create an about file: `$ touch pages/about.html`

```html
<!DOCTYPE html>
<html>
  <head>
    <title>About</title>
  </head>
  <body>
    <div class="image_container">
      <img src="https://imgs.xkcd.com/comics/code_quality_2.png"/>
    </div>
  </body>
</html>
```

*Exercise: add an image of your choosing*


#### Navigation:

- Nav: `<nav> [nav items in here] </nav>`
- Links: `<a href="URL">Link title</a>`

```html
<nav>
  <a href="index.html">Home</a> |
  <a href="pages/about.html">About</a> |
  <a href="pages/products.html">Products</a> |
  <a href="pages/contact_us.html">Contact Us</a>
</nav>
```
*Exercise: add this to each page at the top of the body and test it out. Something is broken - why?*

# CSS Part 1

Cascading Style Sheets tell the browser how to display HTML elements. CSS is quite nuanced but extremely powerful.

#### In-line Styling
`<tag style=”attribute: value;”>content</tag>`

*Exercise: add a `color` and `font-family` to the heading on your home page*

## Selectors

* elements/tags `html` `body` `a`
* classes (for items with shared characteristics)
  * declare: `<tag class="photo menu-item event">content</tag>`
  * select: `.photo` `.menu-item` `.event`
* ids (for unique items)
  * declare: `<tag id="profile_picture">content</tag>`
  * select: `#profile_picture`

#### Embedded
```html
<head>
  <style type="text/css">
    selector(s) {
      property: value;
    }
  </style>
</head>
```
*Exercise: add a style tag in the head of your index.html then move your inline-styling into it. Next, use a selector to style all the nav items at once.*


#### Style Sheet
```html
<head>
  <link rel=”stylesheet” href=”styles/main.css”>
</head>
```

let's create a stylesheet:

`$ mkdir styles`

`$ touch styles/main.css`

*Exercise: link your stylesheet to your HTML pages and transfer all your styling into it. Now add a univeral style to your html like a background-color. Why might the styles not have been applied to your sub-pages?*


Pseudo Selectors: styling that is assigned to a state of a page element or specific subset of elements:

`a:hover { color: red;}` => Links will turn red when a mouse hovers over them

`p:first-child { background-color: gray;}` => The first paragraph element on a page will have a gray background color

`div:nth-child(3) { text-align: center; }` => Text in the 3rd div on the page will be centered

**Selectors based off of relationships**

- A E {}: Any E element that is a descendant of an A element (that is: a child, or a child of a child, etc.)
- A > E {}: Any E element that is a child of an A element
- E:first-child {}: Any E element that is the first child of its parent
- B + E {}: Any E element that is the next sibling of a B element (that is: the next child of the same parent)

## Responsive Styling:

Responsive styling enables you to customize how a page is displayed at different browser sizes. With media queries, you can set custom CSS for any browser with you’d like to target.

#### Typical Viewport Sizes

• Smartphones: 680 x 960 pixels

• Tablets: 768 x 1024 pixels

• Laptops: 1440 x 900 pixels

• Desktops: 1920 x 1080 pixels

#### Responsive media queries

```css
@media (max-width: 767px) and (min-width: 480px) { h2 {
   font-size: 12px;

 }
nav {
display: none; }
}
```

#### Head Meta-tags:

Add this to the head of your file to let your mobile browser know your site is optimized for mobile:

```html
<meta name="viewport" content="width=device-width, initial-scale=1">
```

**Resources:**

- For more information on CSS selectors: https://developer.mozilla.org/en-US/docs/Web/CSS/Reference

- For an example of a styleguide: https://developer.mozilla.org/en-US/docs/MDN/Contribute/Guidelines/CSS_style_guide

**Other Resource for Practice**

- https://www.codecademy.com/
