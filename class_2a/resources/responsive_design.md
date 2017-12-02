# Responsive Design

Responsive styling enables you to customize how a page is displayed at different browser sizes. With media queries, you can set custom CSS for any browser with you’d like to target.

### Typical Viewport Sizes

• Smartphones: 680 x 960 pixels

• Tablets: 768 x 1024 pixels

• Laptops: 1440 x 900 pixels

• Desktops: 1920 x 1080 pixels

### Responsive media queries
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

### Head Meta-tags:

Add this to the head of your file to let your mobile browser know your site is optimized for mobile:

```html
<meta name="viewport" content="width=device-width, initial-scale=1">
```

### Cross-Browser Compatibility
Making sure a site displays properly across different platforms can be a major headache for developers. To mitigate this, we test on multiple devices/browsers and use CSS browser prefixes to add support for CSS features before they are natively supported by the browser.

Prefixes:  
Android: `-webkit-`  
Chrome: `-webkit-`  
Firefox: `-moz-`  
Internet Explorer: `-ms-`  
iOS: `-webkit-`

[This css auto-prefixer tool can make your life easier.](http://pleeease.io/play/)

*Exercise: run your css through the auto-prefixer*
