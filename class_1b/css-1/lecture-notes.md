# Intro to CSS
CSS stands for Cascading Style Sheets. It tells the browser how to display HTML elements. In other words, this language allows you to style your webpage. CSS is quite nuanced but extremely powerful.

## What you will learn in this course
* Start styling your page with CSS
  * Add inline styling
  * Use different selectors
  * Embed styling into your tag
  * Link your html page to a style Sheet

## Three ways to style a webpage

There are three ways to apply styling to a webpage:
* In-line styling
* Embedded styling
* Linked style Sheet

Depending on your needs and your webpage complexity, you will go for one of those three options.

## In-line Styling
Within an element, you can write some styling. This method is called in-line styling. It is pretty useful if you have small style changes you want to make. Here is an example:

`<tag style="attribute: value;">content</tag>`

*Exercise: add a `color` and `font-family` to the heading on your home page*

### Selectors
First, you need to select an element to apply some style on it. You can either directly select an element or select a class or an id.

#### Select an element
* elements/tags: `html`, `body`, `a`, `p`, `div`, etc.

You can directly apply style to an element. this will apply to all same elements. For example, if you select the anchor element `a`, the styling will apply to ALL `a` elements.

#### Select a Class
* classes (for items with shared characteristics)

You can give an element a class name. ONE class can be given to several elements. If select this class name then styling will apply to all elements that have that class name. Here is a example:
  * declare: `<tag class="photo menu-item event">content</tag>`
  * select: `.photo` `.menu-item` `.event`

### Select an id
An id works the same as a class. However ONE id can be given to ONLY ONE element.
* ids (for unique items)
  * declare: `<tag id="profile_picture">content</tag>`
  * select: `#profile_picture`

## Embedded
You can embed styling within the `<head>` tags of your webpage. It's useful when your webpage doesn't need much styling but you need to apply several properties to one element.  
```html
<head>
  <style type="text/css">
    selector(s) {
      property: value;
      property: value;
      property: value;
    }
  </style>
</head>
```
*Exercise: add a style tag in the head of your index.html then move your inline-styling into it. Next, use a selector to style all the nav items at once.*


## Style Sheet
When your webpage needs a lot of styling, you might prefer to link a separate stylesheet to your html file. This will help you keep your workflow very organized. Here is how to link a stylesheet to your webpage:

```html
<head>
  <link rel="stylesheet" href="styles/main.css">
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


**Resources:**

- For more information on CSS selectors: https://developer.mozilla.org/en-US/docs/Web/CSS/Reference

- For an example of a styleguide: https://developer.mozilla.org/en-US/docs/MDN/Contribute/Guidelines/CSS_style_guide

**Other Resource for Practice**

- https://www.codecademy.com/
