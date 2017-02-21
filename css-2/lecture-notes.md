# CSS Part 2
We are going to dig deeper into CSS and learn about responsive styling, how to easily position element on a webpage and cross-browser compatibility.

## What you will learn in this course
* Make responsive design
  * Media queries
* Position elements in your webpage
  * Flexbox
* Cross-Browser compatibility

## Responsive Styling:

Responsive styling enables you to customize how a page is displayed at different browser sizes. With media queries, you can set custom CSS for any browser with you’d like to target.

#### Typical Viewport Sizes

• Smartphones: 680 x 960 pixels

• Tablets: 768 x 1024 pixels

• Laptops: 1440 x 900 pixels

• Desktops: 1920 x 1080 pixels

#### Responsive media queries
To make your website responsive, developers use media queries. Thanks to that tool you will be able to ask the browser to apply a style given certain conditions. For example: IF my screen width is 700px or above THEN apply bigger font-size. Here is how you write it below:


  ```css
  @media (max-width: 767px) and (min-width: 480px) { h2 {
     font-size: 12px;

   }
  nav {
  display: none; }
  }
  ```
In this example: IF my screen has a width size between 480px and 767px THEN apply a font-size of 12px and don't display the navigation menu.

## Flexbox
Introduced by CSS3, Flexible Box, or flexbox, is a layout mode providing for the arrangement of elements on a page such that the elements behave predictably when the page layout must accommodate different screen sizes and different display devices.

What you will read about flexbox is from [this guide to flexbox](https://css-tricks.com/snippets/css/a-guide-to-flexbox/). If you want to have a really deep understanding of flexbox, you can directly read it.

### Properties for the Parent element
#### Start with display Flex
To be able to use flexbox, you have to start by writing `display:flex` within the CSS parent element.

```css
.container {
  display: flex; /* or inline-flex */
}
```
#### Flex-direction
Flex direction property can display your items either in row or in column.

```css
.container {
  flex-direction: row | row-reverse | column | column-reverse;
}
```
#### Flex-wrap
Flex wrap is very useful when you have a lot of items within one element because it can push the items that don't fit on one line onto the next one.
```css
.container{
  flex-wrap: nowrap | wrap | wrap-reverse;
}
```
#### Justify-content
This property tells the browser how you want to align your items **horizontally** (on the left of your screen, centered, with space around each item etc..). This is very useful when implementing navigation menue.
```css
.container {
  justify-content: flex-start | flex-end | center | space-between | space-around;
}
```
#### Align-items
This works as justify-content but it aligns your items **vertically**.
```css
.container {
  align-items: flex-start | flex-end | center | baseline | stretch;
}
```

### Main properties for the Child element
#### Order
You can change the order of which each items appears.
```css
.item {
  order: <integer>;
}
```

#### Align-self
If you want to align one item in a specific way, align self is the property you need.
```css
.item {
  align-self: auto | flex-start | flex-end | center | baseline | stretch;
}
```

*Exercise: complete up to level 16 in Flexbox Froggy.*

* [Flexbox Froggy](http://flexboxfroggy.com/)  

#### Adding Flexbox to our website

Let's create a blog file: `$ touch pages/blog.html`

  ```html
  <!DOCTYPE html>
  <html lang="en">
    <head>

      <title>Blog</title>
    </head>
    <body>
      <header>
        Please spend a moment browsing my site. It'll be great!
      </header>
      <div>
        <article>
          Welcome to my blog! I'll be writing a lot about exciting new technologies here.
        </article>
        <nav>
          <a href="../index.html">Home</a>
          <a href="about.html">About</a>
          <a href="products.html">Products</a>
          <a href="contact_us.html">Contact Us</a>
          <a href="blog.html">Blog</a>
        </nav>
        <aside>Donate if you can. It'll keepme (and my blog) alive!</aside>
      </div>
      <footer>Donations will primarily be spent on Soylent.</footer>
    </body>
  </html>
  ```
  Let's add some styling into our CSS file:

  ```css
  #flex_main {
    min-height: 800px;
    margin: 0px;
    padding: 0px;
    display: flex;
    flex-flow: row;
  }

  #flex_main > .flex-article {
    margin: 4px;
    padding: 5px;
    border: 1px solid #cccc33;
    border-radius: 7pt;
    background: #dddd88;
    flex: 3 1 60%;
    order: 2;
  }

  #flex_main > .flex-nav {
    margin: 4px;
    padding: 5px;
    border: 1px solid #8888bb;
    border-radius: 7pt;
    background: #ccccff;
    flex: 1 6 20%;
    order: 1;
  }

  #flex_main > .flex-aside {
    margin: 4px;
    padding: 5px;
    border: 1px solid #8888bb;
    border-radius: 7pt;
    background: #ccccff;
    flex: 1 6 20%;
    order: 3;
  }

  .flex-header, .flex-footer {
    display: block;
    margin: 4px;
    padding: 5px;
    min-height: 100px;
    border: 1px solid #eebb55;
    border-radius: 7pt;
    background: #ffeebb;
  }
  ```

  *Exercise: update your HTML to include the appropriate classes/ids so that our new CSS gets applied*

  Before we add some media queries, try collapsing your browser so it's too narrow for the layout. How does it look?
  ```css
  @media all and (max-width: 640px) {
    #flex_main, #flex_page {
      flex-direction: column;
    }

    #flex_main > .flex-article, #flex_main > .flex-nav, #flex_main > .flex-aside {
    /* Return them to document order */
      order: 0;
    }

    #flex_main > .flexnav, #flex_main > .flexaside, .flexheader, .flexfooter {
      min-height: 50px;
      max-height: 50px;
    }
  }
  ```


## A little more practice

Go on exercises.md, we are going to do:

1) Box Positioning

2) Computer Gallery

After the exercises, we're going to be remaking our landing page from the HTML section because it's super bare-bones.

### Cross-Browser Compatibility
Making sure a site displays properly across different platforms can be a major headache for developers. To mitigate this, we test on multiple devices/browsers and use CSS browser prefixes to add support for CSS features before they are natively supported by the browser.

Prefixes:  
Android: `-webkit-`  
Chrome: `-webkit-`  
Firefox: `-moz-`  
Internet Explorer: `-ms-`  
iOS: `-webkit-`

[This css auto-prefixer tool can make your life easier.](http://pleeease.io/play/)

*Exercise: run your css through the auto-prefixer, save the new CSS and then view in another browser*

#### Head Meta-tags:

Add this to the head of your file to let your mobile browser know your site is optimized for mobile:

```html
<meta name="viewport" content="width=device-width, initial-scale=1">
```
