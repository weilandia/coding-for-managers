# Solutions

## Add Yes to a `<p>` element
```html
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("p").append("YES!");
});
</script>
</head>
<body>

<p>Is jQuery FUN or what? </p>

</body>
</html>
```

## Insert a third `<li>` element
```html
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("ol").append("<li>List item 3</li>");
});
</script>
</head>
<body>

<ol>
  <li>List item 1</li>
  <li>List item 2</li>
</ol>

</body>
</html>
```
## Insert Hello at the beginning of a `<p>` element

```html
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("p").prepend("Hello");
});
</script>
</head>
<body>

<p> World!</p>

</body>
</html>
```
