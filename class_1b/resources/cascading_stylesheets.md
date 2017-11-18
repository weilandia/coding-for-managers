# Cascading Stylesheets
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

*Let's explore this specificity*
