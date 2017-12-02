# Our sign-up page

- [Here's a look at what we are bulding](http://p-school-blog.herokuapp.com/)

- We are going to start today working in [repl.it](https://repl.it/@weilandia/ps-css-review)

### Quick CSS Review
- HTML is Structure, CSS is appearance.
- Cascading Stylesheets
* CSS 'rules' have a 'selector' that defines which HTML elements they apply to. After the 'selector' comes a 'declaration block' with 'properties' and 'values'.

* Visualize box and inline elements with 'background-color'

* Look at 'font-size' with units of measurement (px, em, rem)

* Common properties:
  * 'font-family'
  * 'list-style'
  * 'text-decoration'
  * 'text-align'
  * 'font-weight'
  * 'font-style'
  * 'border'


* Container HTML elements -- Simply an HTML hook for styles
* Cover Box Model with div
  * 'box-sizing'


* CSS rules 'cascade' down from multiple sources. Here is the path of specificity:
  * Browser defaults
  * External stylesheets
  * Page-specific styles (embedded)
  * Inline styles

* Specificity also occurs within rules themselves:

```css
  body li {
    color: green;
  }

  body ul li {
    color: yellow;
  }

  ul li {
    color: blue;
  }

  li {
    color: red;
  }
```

* Developer Tool and the Box Model 🎉

*Let's explore this specificity*

### Let's build our sign-up page 🚀
