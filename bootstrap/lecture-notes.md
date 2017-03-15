# <img src="https://cloud.githubusercontent.com/assets/8397980/19818474/bd21af4c-9d04-11e6-8df6-1ed154718dce.png" height="60">
# Intro to Bootstrap

## What you will learn in this course
* Describe what Bootstrap is and explain how the grid system works
* Place different Bootstrap components onto a static page
* Manipulate different Bootstrap elements with custom CSS
* Design and create webpages using Bootstrap elements and styling 

### Why you might want to use Bootstrap

1. <b>Speed of Development</b><br>
The use of Bootstrap really increases the speed at which a developer can stylize their webpage.  There are a lot of prewritten tools that allow the developer to put together a page without coding from scratch.

2. <b>Responsiveness</b><br>
Bootstrap comes with a responsive design pattern that allows programmers to create pages that respond to the different screen sizes of phones, tablets, and computer monitors.

3. <b>Customization</b><br>
While Bootstrap comes with a lot of built in features, a developer can customize the different components of Bootstrap to create a look that fits the needs of the site.

4. <b>Support</b><br>
There is a large community of developers that use Bootstrap in their personal projects and on the professional landscape.  Because of this, there is a large and well-documented community of support throughout the web whenever a developer has a question or runs into a problem.

### How to use Bootstrap

Add the viewport meta tag and the <a href="http://getbootstrap.com/getting-started/#download">Bootstrap CDN</a> to the ```<head></head>``` of your HTML file.

```
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
</head>
```

### Bootstrap Grid System

1.  `.container` class holds `.row` classes
2.  Rows create horizontal groups of columns, based on a system of 12 columns
```
<body>
	<div class="container-fluid">
	  <div class="row">
	    <div class="col-xs-12 col-sm-6 col-md-3">
	      <p>I take up a quarter of the page on a medium device and above.</p>
	    </div>
	    <div class="col-xs-12 col-sm-6 col-md-3">
	      <p>I take up half the page on a small device</p>
	    </div>
	  </div>
	</div>
</body>
```
4.  `xs-*`, `sm-*`, `md-*`, `lg-*` refer to targeted device sizes ([spec reference](http://getbootstrap.com/css/#buttons-options))
5.  The best way to learn about the Bootstrap grid system is to see it in action:

- <b><a href="https://www.instacart.com/">Instacart</a></b><br>
- <b><a href="https://www.lyft.com/">Lyft</a></b><br>
- <b><a href="https://www.meteor.com/">Meteor</a></b>

## Challenges

1. Create an ```index.html``` file and add the Bootstrap CDN (or use this boilerplate to get started).
2. Add one container, one row, and three col-** classes (your columns can be any width that add up to 12).
3. Make sure your three columns stack vertically when you are on mobile (xs) devices.
4. Add content to your columns.

## Further Reading

* <a href="https://scotch.io/tutorials/understanding-the-bootstrap-3-grid-system">Understanding the Bootstrap System</a><br>

* <a href="http://expo.getbootstrap.com/">Inspiring Uses of Bootstrap</a><br>

* <a href="http://www.creativebloq.com/wireframes/top-wireframing-tools-11121302">Some Wireframing Tools</a>

* <a href="https://startbootstrap.com/bootstrap-resources/">Some Bootstrap Resources</a>

* <a href="https://www.youtube.com/watch?v=gqOEoUR5RHg">YouTube Bootstrap Tutorial</a>

# Adding Bootstrap to Rails

## How to add Bootstrap to your existing application:
In this lesson we will explore two ways with which you can import Bootstrap into your code.  The first way is by integrating Bootstrap itself.  The second way is by using the `bootswatch-rails` gem in order to bring in different themes to your website.

1. Add the necessary gems to our Gemfile.

Much like in our last lesson, we will be making use of installing gems into our application.  In order to use Bootstrap for our blogs in this class we will be adding two different gems:  `bootstrap-sass` and `autoprefixer-rails`.  The `bootstrap-sass` gem will integrate all of the components of Bootstrap.  The `autoprefixer-rails` gem will automatically add the proper vendor (browser) prefixes when our CSS code is compiled.

```rails
  # Gemfile
  gem 'bootstrap-sass'
  gem 'autoprefixer-rails'
```

Follow this with the `bundle install` command in your C9 terminal.

2. Import Bootstrap CSS and Javascript Assets.

At this point we will want to import the various CSS and Javascript assets into our applications.  This will allow us to customize the Bootstrap style.  The Javascript assets will help make our page more dynamic and user friendly.  For this we will need to alter two existing files into our application.

First, you will rename `app/assets/stylesheets/application.css` to `app/assets/stylesheets/application.css.scss`.

Then, you will add this code to the bottom of your renamed file:
```rb

@import "bootstrap-sprockets";
@import "bootstrap";
```
This will help render the assets needed for your Bootstrap components to work.

Next, you will add the following code to `app/assets/javascripts/application.js`:
```rb
//= require bootstrap-sprockets
```

It is important to note that placement of this line is important.  You will want the structure of the file to look like this:
```rb
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .
```

### Let's add in some Bootstrap styling to our blog app

**Exercise: add the `table` and `table-hover` classes to the table of posts in your posts `index.html` file.**

**Exercise: add a `bg-warning` to your alert in your `application.html.erb` file.**

**Exercise: add a `nav` around your sign in logic in your `application.html.erb` file. Give that div the following two classes: `nav navbar-inverse`.**

**Exercise: add the classes `btn btn-default navbar-btn` to the links in your nav. Change the defualt styling of a few of the buttons by using this guide: http://getbootstrap.com/css/#buttons-options**

### Using themes for inspiration:

From here I would go to a website like: https://bootswatch.com/ in order to look at different styling elements. You can follow the source code and integrate it into your application.

Luckily, Bootswatch has a gem for us to use to easily implement different themes into our page. We can use the initial steps from http://stackoverflow.com/questions/14796962/mongoose-schema-reference as a guide for how to use that gem.

1. Install `gem 'bootswatch-rails'` into your Gemfile.
2. Edit your `application.css.scss` to look like this:
```rb
// Example using 'Cerulean' bootswatch

//Import bootstrap-sprockets
@import "bootstrap-sprockets";

// Import cerulean variables
@import "bootswatch/cerulean/variables";

// Then bootstrap itself
@import "bootstrap";

// Bootstrap body padding for fixed navbar
body { padding-top: 60px; }

// And finally bootswatch style itself
@import "bootswatch/cerulean/bootswatch";
```
In this case we're using the 'Cerulean' theme by Bootswatch.

3. You can easily edit/overwrite styles the theme within your `application.css.scss` file to adjust the look of your application.
4. Once you have the them you want you will be able to use the source code in the examples provided by Bootswatch in order to customize you page.


### Resources:
https://www.railstutorial.org/book/filling_in_the_layout
https://bootswatch.com/
https://github.com/maxim/bootswatch-rails

## Where we are going from here:

Up to this point you have now created your application, added the associated models, routes, and views.  You have also integrated authentication and authorization for the users of your application.  Now your application has the elements of style that you can edit to give it a more personal and professional touch. In our review class, we'll be adding a landing page as well as improving some functionality on the rails side.
