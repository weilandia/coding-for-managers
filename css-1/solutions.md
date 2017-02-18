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


## Flexbox Froggy

### Level 1

```css
#pond {
  display: flex;

justify-content:flex-end
}
```

### Level 2
```css
#pond {
  display: flex;

justify-content:center;
}
```
### Level 3
```css
#pond {
  display: flex;

justify-content:space-around
}
```
### Level 4
```css
#pond {
  display: flex;

justify-content:space-between;
}
```

### Level 5
```css
#pond {
  display: flex;

align-items:flex-end;
}
```
### Level 6
```css
#pond {
  display: flex;
justify-content:center;
align-items:center;

}
```

### Level 7
```css
#pond {
  display: flex;
justify-content:space-around;
align-items:flex-end;

}
```
### Level 8
```css
#pond {
  display: flex;
flex-direction:row-reverse;
}
```
### Level 9
```css
#pond {
  display: flex;
flex-direction:column;

}
```
### Level 10
```css
#pond {
  display: flex;
flex-direction:row-reverse;
justify-content:flex-end;
}
```
### Level 11
```css
#pond {
  display: flex;
flex-direction: column;
justify-content:flex-end;
}
```
### Level 12
```css
#pond {
  display: flex;
justify-content:space-between;
flex-direction:column-reverse;

}
```
### Level 13
```css
#pond {
  display: flex;
justify-content:center;
flex-direction:row-reverse;
align-items:flex-end;

}
```
### Level 14
```css
#pond {
  display: flex;
}

.yellow {
order:1;
}
```
### Level 15
```css
#pond {
  display: flex;
}

.red {
order:-1

}
```
