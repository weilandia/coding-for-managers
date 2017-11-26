# HTML Basics

* Hypertext Markup Language defines the structure and content of webpages by taking raw content and marking it up with HTML tags
* Today we are going to talk about HTML and CSS. These two concepts, along with Javascript, are the language of the web. We can think of HTML as STRUCTURE, CSS as APPEARANCE, and JS as INTERACTIVITY (though modern JS sort of does all three...)

* Let's start by creating a file called index.html, which will represent our webpage
* Add the following boilerplate HTML for our webpage:

``` html
<!DOCTYPE html>
<html>
  <head>
    <!-- Metadata -->
    <title></title>
  </head>
  <body>
    <!-- Content -->
  </body>
</html>
```
* First, we tell the browser this is an HTML5 webpage
* We wrap out entire page in <html> tags. An opening and a closing tag make up an HTML element, along with the content inside the tags.

![Head and Body Elements](../assets/html-head-body.png)

* As we compose our HTML with more elements, we need to make sure that each open tag has a corresponding closing tag and that no elements overlap

``` html
<!-- BAD -->
  <body>
    <div>

    </body>
  </div>
```

* Let's look at some basic HTML elements:
  * Paragraphs
  * Headings (higher number means more important)
  * Unordered lists
    * Only list elements are permitted with ul elements
    * [Mozilla Developer Network](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ul)
  * Ordered Lists
    * What elements are allowed in ordered lists?
  * Block level elements vs. inline elements

  ![Inline vs. Block](../assets/inline-vs-block-element.png)

  * em, strong
    * Structure, not appearance
  * span
    * Inline text

  * Empty elements
    * Line breaks
      * HTML removes whitespace outside of elements
      * Should convey meaning
    * Horizontal Rules (thematic break)
