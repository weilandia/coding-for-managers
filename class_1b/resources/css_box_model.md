# CSS Box Model

* The [CSS Box Model](https://www.w3schools.com/css/css_boxmodel.asp) defines the rules for how the *layout* of every webpage is rendered.

* Manipulating CSS Box Model rules is a big part of front-end development.

### Understanding the difference between block elements and inline elements

* HTML elements have default `display` styles.
* Let's add the following to `box-style.css` to see

```css
h1, p {
  background-color: #DDE0E3;    /* Light gray */
}

em, strong {
  background-color: #B2D6FF;    /* Light blue */
}
```

This demonstrates some very important ideas:
  * The 'static' flow of *block boxes*. On below the other.
  * The width of *block boxes* is automatically set to the width of the parent element
  * The height of *block boxes* is automatically set to the height of the box's content
  * *Inline boxes* don't determine vertical spacing. That are not for layout, but instead for styling inside a block.
  * The width of *inline boxes* is based on the content.


* You can change box behavior with `display`

### Content, Padding, Border, and Margin

* Content – The text, image, or other media content in the element.
* Padding – The space between the box’s content and its border.
* Border – The line between the box’s padding and margin.
* Margin – The space between the box and surrounding boxes.


##### padding
```css
h1 {
  padding: 50px;
}

p {
  padding-top: 20px;
  padding-bottom: 20px;
  padding-left: 10px;
  padding-right: 10px;
}

p {
  padding: 20px 0 20px 10px;  /* Top  Right  Bottom  Left */
}

p {
  padding: 20px 10px;  /* Vertical  Horizontal */
}
```


##### border
```css
h1 {
  padding: 50px;
  border: 1px solid #5D6063;
}
```

##### margin

* Important differences compared to padding:
  * The padding of a box has a background, while margins are always transparent.
  * Padding is included in the click area of an element, while margins aren’t.

* Margin is completely ignored by inline elements. Padding is not, but does not change vertical structure.

*Add margin to an inline element and preview. Do the same with padding.*


### Container Elements!
* Used purely for the save of organizing web pages into units for styling
  * div
  * span

* Add the following to boxes.html `<div>Button</div>`
* Now let's style the button *note explicit width*:
```css
div {
  color: #FFF;
  background-color: #5995DA;
  font-weight: bold;
  padding: 20px;
  text-align: center;
  border: 2px solid #5D6063;
  border-radius: 5px;
  width: 200px;
}
```

### CSS Resets
```css
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
```

# CSS Selectors

### Descendent Specificity
```css
  .class h1 {
    ...
  }
```

### Let's explore selectors with Bootstrap
* .btn pseudo elements
*Exercise: add three Bootstrap components from [HERE](https://getbootstrap.com/docs/4.0/components/alerts/) to `bootstrap_example/index.html` and in <p> tags, describe why they work by looking at the css.* 
