# Solutions

## Astronaut

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Exercise: Lost Astronaut</title>
    <style>
        #greeting {
          background: slategray;
          border: 2px solid black;
          padding: 5px;
          width: 262px;
        }
        #astronaut {
            width:45px;
            position:absolute;
            left:129px;
            top:50px;
            z-index:0;
        }
        #spaceship {
            z-index:1;
            position: absolute;    
        }
        #landing_pad {
          z-index:-1;
          position: absolute;
          width: 500px;
          bottom: 0px;
          right: 0px;
        }

        #ship{
            position:absolute;
            left:850px;
            bottom:300px;
        }
      </style>
  </head>
  <body>
    <div id="greeting">
      <p>Hey CSS cadet! Rescue the astronaut!</p>
    </div>
    <img id="spaceship" src="../assets/spaceship.png" width="300">
    <img id="astronaut" src="https://d13yacurqjgara.cloudfront.net/users/182160/screenshots/725814/ss-astronaut.png">
    <img id="landing_pad" src="http://www.collectspace.com/review/spacex_spaceportdrone04-lg.jpg" alt="">
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
### Level 16
```css
#pond {
  display: flex;
  align-items: flex-start;
}

.yellow {
align-self:flex-end;

}

```

## Flexbox Defense

### Level 1
```css
.tower-group-1 {
display: flex;

justify-content:center;

}
```

### Level 2
```css
.tower-group-1 {
display: flex;

justify-content:flex-end;

}
.tower-group-2 {
display: flex;

justify-content:center;

}
.tower-group-3 {
display: flex;

justify-content:flex-end;

}
```
###  Level 3
```css
.tower-group-1 {
display: flex;

justify-content:center;

}
.tower-group-2 {
display: flex;

justify-content:space-between;

}
```
### Level 4
```css
.tower-group-1 {
display: flex;

align-items:flex-end;

}
.tower-group-2 {
display: flex;

align-items:flex-end;

}
```
### Level 5
```css
.tower-group-1 {
display: flex;

justify-content:space-around;

align-items:flex-end;

}
.tower-group-2 {
display: flex;

justify-content:center;

}
.tower-group-3 {
display: flex;

justify-content:center;

align-items:center;

}
```
### Level 6
```css
.tower-group-1 {
display: flex;
justify-content:space-between;
align-items:center;
}
```

### Level 7
```css
.tower-group-1 {
display: flex;
flex-direction:column;
}
.tower-group-2 {
display: flex;
flex-direction:column;
}

```
### Level 8
```css
.tower-group-1 {
display: flex;
flex-direction:column;
}
.tower-group-2 {
display: flex;
justify-content:center;
flex-direction:column;
align-items:center;
}
```
### Level 9
```css
.tower-group-1 {
display: flex;
justify-content:space-around;
flex-direction:row-reverse;
}
.tower-group-2 {
display: flex;
justify-content:space-around;
align-items:center;
flex-direction:row-reverse;
}
```
### Level 10
```css
.tower-group-1 {
display: flex;
justify-content:space-around;
}
.tower-1-1 {
}
.tower-1-2 {
order:1;
}
.tower-1-3 {
}
.tower-group-2 {
display: flex;
justify-content:space-around;
}
.tower-2-1 {
}
.tower-2-2 {
order:-1;
}
.tower-2-3 {
}
```

### Level 11
```css
.tower-group-1 {
display: flex;
justify-content:space-between;
}
.tower-1-1 {
align-self:flex-end;
}
.tower-1-2 {
}
.tower-1-3 {
align-self:flex-end;
}
.tower-1-4 {
}
```

### Level 12
```css
.tower-group-1 {
display: flex;
justify-content:space-between;
align-items:center;
}
.tower-1-1 {
align-self:flex-start;
}
.tower-1-2 {
}
.tower-1-3 {
order:1;
}
.tower-1-4 {
}
.tower-1-5 {
order:2;
align-self:flex-end;
}
```
