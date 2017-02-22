# Solutions
If you get stuck, you can check the answers here. Keep in mind that there can be several ways to get to the same result. Therefore there might be some difference between your code and the code below but it doesn't necessarily mean that your code is wrong.

## Style

```html
<!DOCTYPE html>
<html>
  <body>

  <p style="font-family:courier">This is a paragraph.</p>

  </body>
</html>

```

## Embedded styling
```html
<!DOCTYPE html>
<html>
<head>
<style>
body {background-color:lightgrey;font-family:courier}
h1   {color:blue}
p    {color:black}
</style>
</head>
<body>

<h1>This is a Heading</h1>

<p>This is a paragraph.</p>

</body>
</html>
```



## Classes

```html
<!DOCTYPE html>
<html>
<head>
<style>
.special {
    color:red;
}
</style>
</head>
<body>

<h1>My <span class="special">Important</span> Heading</h1>

<p class="special">My important paragraph.</p>

</body>
</html>
```
## id
```html
<!DOCTYPE html>
<html>
<head>
<style>
p#special {
    background-color:black;
    color:white;
}
</style>
</head>
<body>

<h1>This is a heading</h1>

<p>This is a paragraph.</p>
<p>This is also paragraph.</p>
<p id="special">I want to be a special paragraph!</p>

</body>
</html>
```
