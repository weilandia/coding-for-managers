# Our navbar

- We will be using something called Flexbox to create our navbar

### Flexbox
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


### Let's build our navbar 🚀

### More practice (if needed)

On exercises.md, we are going to do:

1) Box Positioning

2) Computer Gallery
