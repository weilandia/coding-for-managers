# Programming Overview

There have been a lot of topics covered in this course.  Today we will take a look at some of the more important aspects of each topic, how they relate to each other, and give additional resources for those who wish to pursue more practice in programming.

## HTML
HTML (Hyper-text Markup Language) and CSS (Cascading Style Sheets) represent the skeleton and outer-facade of any page that you see on the Internet. Any front-end or full-stack developer will be working with these daily. The basic concepts within HTML and CSS can be learned quickly and you’ll have time to deepen your knowledge of specific attributes, tricks, and resources over time.

### Resources:
- <a href="https://www.codecademy.com/learn/make-a-website">Codecademy</a>
- <a href="http://www.w3schools.com/">W3Schools</a>
- <a href="http://learn.shayhowe.com/html-css/">Learn to Code HTML/CSS</a>
- <a href="https://websitesetup.org/html-beginners-guide/">HTML Beginner's Guide</a>
- <a href="https://mva.microsoft.com/en-US/training-courses/html5-css3-fundamentals-development-for-absolute-beginners-14207?l=Y4COscFfB_7500115888">Microsoft Guide</a>

## CSS

HTML was NEVER intended to contain tags for formatting a web page! Development of large websites, where fonts and color information were added to every single page, became a long and expensive process. To solve this problem, the World Wide Web Consortium (W3C) created CSS. CSS removed the style formatting from the HTML page! -W3Schools

### Resources
- <a href="http://www.w3schools.com/css/css_intro.asp">W3Schools</a>
- <a href="http://learnlayout.com/">Learn Layout</a>
- <a href="https://www.tutorialspoint.com/css/">Tutorials Point</a>

## Bootstrap/Responsive Design

Bootstrap is a free and open-source front-end web framework for designing websites and web applications. It contains HTML- and CSS-based design templates for typography, forms, buttons, navigation and other interface components, as well as optional JavaScript extensions. Unlike many web frameworks, it concerns itself with front-end development only. -Wikipedia

### Resources
- <a href="https://scotch.io/tutorials/understanding-the-bootstrap-3-grid-system">Understanding the Bootstrap System</a>
- <a href="http://expo.getbootstrap.com/">Inspiring Uses of Bootstrap</a>
- <a href="http://www.creativebloq.com/wireframes/top-wireframing-tools-11121302">Some Wireframing Tools</a>
- <a href="https://startbootstrap.com/bootstrap-resources/">Some Bootstrap Resources</a>
- <a href="http://www.w3schools.com/bootstrap/">W3 Schools Bootstrap Tutorial</a>
- <a href="https://www.youtube.com/watch?v=gqOEoUR5RHg">YouTube Bootstrap Tutorial</a>

## Git/Github

The combination of Git (on your local computer) and Github (online) is a powerful toolset that enables developers to have a record and access to any versions of the code they create. Github allows developers to have a single repository online where they can share code and review new code before it is merged into their production code base. We’ll cover the basics of Git, Github, and how teams of developers use these tools to collaborate on their projects.

The basic functionality of git allows developers to track specific versions of their code-base, and revert to a previous version at any time (say, their most recent changes broke their system and they wanted to return to the previous version of their code). Git also enables developers to interact with online platforms like Github and Heroku where they can share and host their codebase.

### Resources

- <a href="https://www.codecademy.com/learn/learn-git">Codecademy</a>
- <a href="https://www.codeschool.com/courses/git-real">Git Real</a>
- <a href="http://rogerdudler.github.io/git-guide/">Git Guide</a>
- <a href="https://guides.github.com/">Github Guides</a>

## Javascript

Like Java, Python, and Ruby, JavaScript is a scripting language that allows you to build systems that do cool things. One of the benefits of JavaScript is that it can run in your browser, serving as a ‘client-side’ scripting language. Any cool effects that you see on a webpage are likely enabled by JavaScript.

### Resources

- <a href="https://www.codecademy.com/learn/javascript">Codecademy</a>
- <a href="https://www.tutorialspoint.com/javascript/">Tutorials Point</a>
- <a href="https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/JavaScript_basics">JS Basics</a>

## Intro to Ruby

Ruby is a backend scripting language. Many of the JavaScript constructs that you learned, such as functions, variables, objects, iterators, and conditionals, are very similar to those used in Ruby. The main difference between Ruby and JavaScript is that JavaScript is asynchronous (multiple tasks can be running at one time), while Ruby is synchronous (tasks must be run sequentially). One of the benefits of Ruby is that it includes a huge library of methods and built in functionality, which makes your life a lot easier. Another benefit of Ruby, is that Rails, a Model-View-Controller (MVC) framework with an abundance of open-source functionality plug-ins that you can integrate into your app, is built on top of it enabling you to combine the two to quickly build awesome websites.

### Resources

- <a href="http://rubymonk.com/learning/books/1-ruby-primer">Ruby Monk</a>
- <a href="http://www.ruby-doc.org/core-2.2.0/">Ruby Lessons</a>
- <a href="http://www.ruby-doc.org/core-2.2.0/Array.html">Arrays and Methods</a>
- <a href="http://www.ruby-doc.org/core-2.2.0/Hash.html">Hashes and Methods</a>

## Intro to Rails

Rails is an open-source Model View Controller (MVC) framework that is built in Ruby. It does the hard work of designing the configurations and file structure you need to build your app. Rails includes a vast source of helper methods and functionally that speed up your web development process. On top of that, Rails integrates with ‘gems’ (similar to JavaScript libraries), which allow you to integrate additional functionality into your app, without building it yourself. Given the size of the Rails community, there is a high-quality, well-maintaned gem for almost any functionality you’d like to build.

### Resources

- <a href="http://edgeguides.rubyonrails.org/active_record_basics.html">ActiveRecord Basics</a>
- <a href="http://railsforzombies.org/levels/1">Rails for Zombies</a>
- <a href="http://railsforzombies.org/levels/2">Rails for Zombies Pt. 2</a>

## Rails: Part Two

### Resources

- <a href="https://www.ruby-toolbox.com/">Ruby Toolbox</a>
- <a href="https://www.codeschool.com/courses/rails-for-zombies-redux">Rails for Zombies(for learning more about routing)</a>
- <a href="https://www.codeschool.com/courses/rails-for-zombies-redux">Rails for Zombies(for learning more about views)</a>
- <a href="http://guides.rubyonrails.org/routing.html">Routing Guides</a>
- <a href="http://guides.rubyonrails.org/form_helpers.html">Form Helpers</a>

## Rails: Putting it all together

In this lesson we put all of the different components of Rails together in a comprehensive fashion.

### Resources

- <a href="http://guides.rubyonrails.org/getting_started.html">Getting Started with Rails</a>

## Authentication with Devise

Adding authentication and authorization is extremely vital to any modern web application. The need for basic security and authenticaiton is essential for good data and customer experience. We will spend today adding the 'Devise' gem to our blog appliction. This is a program that will help us integrate the tools needed to authenticate and authorize users. With this gem we will not need to write the complicated code needed to add security to our pages.

### Resources

- <a href="http://www.korenlc.com/rails-tutorial-authentication-with-devise/">Devise Tutorial</a>
- <a href="https://github.com/plataformatec/devise">Devise Github</a>

## Bootstrap Integration

Earlier in the curriculum we learned about the different ways one could use Bootstrap to help ease styling.  In this lesson we take a closer look at how to integrate different templates into the Rails platform and how to use these templates to help make your style look more professional.

### Resources

- <a href="https://www.railstutorial.org/book/filling_in_the_layout">Rails Tutorial</a>
- <a href="https://bootswatch.com/">Bootswatch</a>
- <a href="https://github.com/maxim/bootswatch-rails">Bootswatch-Rails Github</a>

## JQuery

DOM stands for **Document Object Model**. It's a fancy way of describing what's going on in your browser when you visit a website. You may think a webpage is just a chunk of HTML, CSS, and JavaScript code. But, there's an important step between a webpage being pure data (text) and being a rendered page users can explore. Everything you interact with in the browser can be represented as a JavaScript object. For example, this paragraph is an object, and it's full of information about being an HTML `<p>` tag.

### Resources

- <a href="http://www.tutorialspoint.com/jquery/">Tutorials Point</a>
- <a href="https://learn.jquery.com/">Learn JQuery</a>
- <a href="https://www.codecademy.com/learn/jquery">Codecademy</a>


## Heroku Deployment

In this lesson we discussed deploying your website to the interenet.  We also did a walk through of how to deploy your website through Heroku, a popular and free service for website deployment.

### Resources

- <a href="https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/Publishing_your_website">Publising</a>
- <a href="https://devcenter.heroku.com/articles/rails4">Rails 4 on Heroku</a>
- <a href="https://devcenter.heroku.com/articles/heroku-postgresql">Heroku Postgres</a>
- <a href="https://devcenter.heroku.com/articles/rake">Running Rake Commands</a>

## Technical Interview Prep

### Resources

[Software Engineer Interview Questions](https://blog.udemy.com/software-engineer-interview-questions/)

[Example of Coding/Engineer Interview @ Google](https://www.youtube.com/watch?v=XKu_SEDAykw&t=558s)

[Cracking the PM Interview](https://www.amazon.com/dp/0984782818/ref=cm_sw_su_dp)

[Cracking the Coding Interview](https://www.amazon.com/Cracking-Coding-Interview-Programming-Questions/dp/0984782850/ref=sr_1_1?s=books&ie=UTF8&qid=1488503459&sr=1-1&keywords=cracking+the+coding+interview)

[How should I prepare for a technical program manager interview](https://www.quora.com/How-should-I-prepare-for-a-Technical-Program-Manager-interview-at-Amazon)

[Software Engineering Interview at Facebook](https://www.facebook.com/careers/life/preparing-for-your-software-engineering-interview-at-facebook)
