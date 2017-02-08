# Intro to CSS

Cascading Style Sheets tell the browser how to display HTML elements. CSS is complex but extremely powerful.

#### In-line Styling
`<tag style=”attribute: value;”>content</tag>`

*Exercise: add a `color` and `font-family` to the heading on your index.html page. Use a different color in a span surrounding part of the heading*

#### Embedded
```html
<head>
  <style type="text/css">
    selector(s) {
      property: value; /* many values are measured in px (short for pixels) */
    }
  </style>
</head>
```

## Selectors

* **elements/tags** `html` `body` `a`  

*Exercise: add a style tag in the head of your index.html then move your inline-styling into it. Next, use a selector to style all the nav items at once  - maybe changed the `font-size`. Then style the html to have a `background-color`*
* **classes** (for items with shared characteristics)
  * declare: `<tag class="photo menu-item event">content</tag>`
  * select: `.photo` `.menu-item` `.event`

*Exercise: in your products.html page, add a class to each of your list items, like class="product". Bonus if you use multiple cursors to achieve this. Next, [give each list item a `border` property](https://developer.mozilla.org/en-US/docs/Web/CSS/border). Also get rid of the default black bullets if possible!*

* **ids** (for unique items)
  * declare: `<tag id="profile_picture">content</tag>`
  * select: `#profile_picture`


* **pseudo selectors** (styling that is assigned to a state of a page element or specific subset of elements)

`a:hover { color: red;}` => Links will turn red when a mouse hovers over them

*Exercise: add a hover pseudo-selector to all anchor (link) tags, make it whatever color you want*

`p:first-child { background-color: gray;}` => The first paragraph element on a page will have a gray background color

`div:nth-child(3) { text-align: center; }` => Text in the 3rd div on the page will be centered

**Selectors based off of relationships**

- `A.class` All A elements that have a certain class
- `A E {}`: Any E element that is a descendant of an A element (that is: a child, or a child of a child, etc.)
- `A > E {}`: Any E element that is a child of an A element
- `E:first-child {}`: Any E element that is the first child of its parent
- `B + E {}`: Any E element that is the next sibling of a B element (that is: the next child of the same parent)

*Exercise: with a partner, complete up to level 16 at the CSS Diner: https://flukeout.github.io/*


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


## Responsive Styling:

Responsive styling enables you to customize how a page is displayed at different browser sizes. With media queries, you can set custom CSS for any browser with you’d like to target.


#### Responsive media queries

```css
@media (max-width: 767px) and (min-width: 480px) {
  h2 {
   font-size: 12px;
  }
  nav {
    display: none; }
  }
```

## Flexbox
Introduced by CSS3, Flexible Box, or flexbox, is a layout mode providing for the arrangement of elements on a page such that the elements behave predictably when the page layout must accommodate different screen sizes and different display devices.

[My favorite guide to flexbox](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)

*Exercise: complete up to level 16 in Flexbox Froggy (easier) or Level 12 in Flexbox Tower Defence (harder).*

* [Flexbox Froggy](http://flexboxfroggy.com/)  
* [Flexbox Tower Defence](http://flexboxdefense.com/)

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

### Cross-Browser Compatability
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

*Exercise: with a partner, use what you've learned to recreate this site. Use only the HTML skeleton and create your own `main.css` file*:

* [Site Recreation Exercise](https://github.com/product-school/site-recreation)

**Resources:**

- For more information on CSS selectors: https://developer.mozilla.org/en-US/docs/Web/CSS/Reference

- For an example of a styleguide: https://developer.mozilla.org/en-US/docs/MDN/Contribute/Guidelines/CSS_style_guide

**Other Resource for Practice**

- https://www.codecademy.com/
