# Git and Github

Git (local machine) and Github (online) form a powerful version control toolset that enables developers to have a record of and access to any iteration of the code they write. Github allows developers to store (host) repositories (directories / folders / collections of code) online where they can share code and review new code before it is combined (merged) into their main (production) code base. We’ll cover the basics of Git, Github, and how teams of developers use these tools to collaborate on their projects.

The basic functionality of Git allows developers to track specific versions of their codebase, coordinate collaboration, and revert to a previous version at any time (ex: an engineer's most recent change added a bug to her company's dashboard and she wants to return to the previous version of their code that was bug-free). Git also enables developers to interact with online platforms like Github and Heroku where they can share and host their codebase.

## Let's refresh our terminal commands

#### Navigating folders/directories:

- Visit your parent folder/directory: `$ cd ..`
- Go into a directory: `$ cd folder_name/child_folder_name`
- Go back to your home directory: `cd ~`
- Find out where in the directory structure you are: `$ pwd`
- See what's inside a directory: `$ ls` or `$ ls directory_name`

#### Shortcuts

- Go to beginning of line: `control + a`
- Go to end of line: `control + e`
- Erase line: `control + k`

## Getting started with Git

- Let's create a new project in Cloud 9
- Erase all the generated files in your directory
- Check to see if git is installed `$ git --version`
- Create a git repository: `$ git init`
- Create a file `$ touch hello.rb`
- Write your first line of Ruby in hello.rb `puts "hello world!"`
- Check out the status of your git repository: `$ git status`

## Staging and committing

- Stage all of the files in your folder to be included in your first commit: `$ git add .`
- Staging is useful because you control what will be locked into the commit
- To add individual files: `$ git add file_name`
- Make your first commit: `$ git commit -m “Some descriptive notes surrounded by quotation marks"`
- See Whiteboard for further description
**Exercise: change your hello.rb file on your own or by adding the lines below and run the code**
```ruby
  gift = [
          "half of a leftover burrito",
          "a day-old cup of coffee",
          "a tesla",
          "a life-size quadrocopter",
          "a slice of stale wedding cake",
          "a medium-sized island off the coast of Sumatra",
          "a visual prosthesis",
         ]
  puts "All I got for valentine's day was #{gift.sample}."
```

- **Exercise: check the status of the repo. Then stage it. Finally, commit it.
- See Whiteboard for further description
- Use `$ git log` to look back at the history of this branch

## Branching

- Make a new branch with `$ git branch -c the-branch-will-be-named-whatever-you-type-here-no-spaces-use-hypens-plz`
**Exercise: modify the new branch by adding your own gift to the list or by creating another file. Stage it. Commit it.**
- See Whiteboard for further description
- Look back at the history of the new branch
- Switch branches using `$ git checkout master`. Look back at the history. Is it the same?

## Merging
- On your master branch, merge our other branch `$ git merge the-branch-you-named`
- What does fast-forward mean?
- See Whiteboard for further description


#### Using reset to return to a past commit

- Stash any uncommitted changes: `$ git stash`
- See a list of past commits: `$ git log`
- Revert to a past commit: `$ git reset --hard [#SHA-1 Hash ###]`

## Interacting with remote repos using Github:

Github is a platform that enables developers to store their codebase online, review developers’ code branches, and share feedback and error shooting before it’s integrated in the full code base. Similar to Git, it stores a full-history of any changes made over the codebase life cycle, creating a safeguard as the number of developers working with the codebase increases over time and your codebase grows in complexity.

#### Linking your local Git repository with your Github repository

- Visit your Github repository and copy the “HTTPS Clone URL”. Enter `$ git clone [git clone url]`
- Go to your terminal, navigate to your blog file and link your git repo with your github repository: `$ git remote add origin [your HTTPS Cloned URL]`
- Now that your repos are linked, push your first commit to github: `$ git push -u origin master`

#### Git’s Branch Structure

- Create a new gh-pages branch in your terminal’s blog git repo: `$ git checkout -b gh-pages`
- Push your blog’s git repo to the gh-pages branch of your github repository: `$ git push -u origin ph-pages`
- View your code at: http://[your-github-username].github.io/[your-blog-file-name]/

#### Pull Requests: Screening your developments before releasing your code

- Let’s create a new branch where we’ll make some new changes that we’ll review before integrating into our master code base: `$ git checkout -b [your-branch-name]`
- Go ahead, make some changes to your code
- Stage your changes for your commit: `$ git add -A`
- Commit your changes: `$ git commit -m “A message about your changes”`
- Push your branch and new commit to github: `$ git push -u origin [your-branch-name]`
- Visit your github repo. You should see that your Github registered your pushing a new branch. Go ahead and click ‘Compare & pull request’ to submit a request to merge your code changes into your master code base. Don’t forget to include a message so that others know why they should include your changes.
- Once your pull request is open, go ahead and merge your code to the master code base.
- Problem, when we visit gh-pages, we still see the old version of your code. To update gh-pages, in the terminal, lets return to our master branch (`$ git checkout master`), pull the latest master version from github to our local repository (`$ git pull`), checkout out gh-pages branch (`$ git checkout gh-pages`), merge the updated master code-base into our gh-pages branch (`$ git merge master`), and, finally, push that updated gh-pages branch commit to github (`$ git push`)
- Visit your github gh-pages vanity url and you should see those newly made changes

## Extra Practice

- https://www.codecademy.com/learn/learn-git
- https://www.codeschool.com/courses/git-real
- http://rogerdudler.github.io/git-guide/
- https://guides.github.com/

# Intro to Ruby

|Objectives|
|----------|
|Have an introduction to the Ruby language|
|Recognize different data types in Ruby|
|Perform exercises to increase Ruby awareness|
|Look ahead to how Ruby will be used in our projects|

Ruby is a backend scripting language. Many of the JavaScript constructs that you learned, such as functions, variables, objects, iterators, and conditionals, are very similar to those used in Ruby. The main difference between Ruby and JavaScript is that JavaScript is asynchronous (multiple tasks can be running at one time), while Ruby is synchronous (tasks must be run sequentially). One of the benefits of Ruby is that it includes a huge library of methods and built in functionality, which makes your life a lot easier. Another benefit of Ruby, is that Rails, a Model-View-Controller (MVC) framework with an abundance of open-source functionality plug-ins that you can integrate into your app, is built on top of it enabling you to combine the two to quickly build awesome websites.

**Note: Open your terminal and type irb to open a Ruby console. As you learn each step below, please follow along by practicing what you’re learning in your terminal.**

### What is an Object?
**Everything in ruby is an object. Whether that is a string, complicated data structure, or functions. A few common objects include:**

- Integer: whole number (eg: 1)
- Float: numbers that include decimal points (eg: 1.3)
- Strings: a piece of text. (eg: “hello world”)
- Booleans: true / false
- Arrays: a series of values. (eg: [1, 2, 3, 4])
- Hashes: a collection of key value pairs. (eg: `casey = {“age” => 31, “height” => 5.8, “occupation” => “web developer”}`)
- Methods: Bundle functionality. Analogous to functions in JavaScript.
- Classes: Serve as ‘factories’ or ‘molds’ for creating new objects with a particular specifications and functionalities.

### Data Types:
- Integers: Integers are whole numbers. Any arithmetic done on an integer will always produce another integer.

  **For example, `1 / 2 will ## returns 0`.**
- In order to deal with fractions, you have to use floats. You can do this by using Ruby’s built in .to_f method.

  **For example: `(1.to_float)/2   ## returns .5`.**
- Floats: Stands for floating point. It allows you to work with numbers that have decimal places.

**In-Class Exercise: Use floats and integers to divide two objects and return a fraction. Then, convert that fraction into an integer.**

- Strings & String Interpolation: Strings represent text. For example “Hello world” or “34 is my favorite number”.
- String Interpolation: In ruby allows you to combine strings by adding them together. Eg: `“Hello“ + “ World” ##“Hello World”`.
- Including variables in strings: In ruby, you can include a variable in a double quoted string (a string wrapped in “ “ instead of ‘ ’) by surrounding the variable with #{variable}. For example, if have a variable, myName = “Min”. Then “Hello #{myName}!”!“Hello Min!”

**In-Class Exercise: Create a string of text that includes three variables.**

- Booleans: True or false. In Ruby, you might have a method that returns true/false, or you might use a statement that evaluates to a Boolean for an if...else statement. For example, if (2 + 2 == 4)....else...end In this case, (2+2 == 4) evaluates to true or false. If true, then it will perform the subsequent operation, otherwise, it will perform the operation detailed in the else statement.

**In-Class Exercise: Write 5 statements. 2 that evaluate to true. 3 that evaluate to false. Make each one as unique as possible.**

### Transforming Data Types: Ruby has a number of built in methods to transform one data type to another.

- To Float `.to_f`: Transforms a string or integer into a float. `“1”.to_f => 1.0` ; `1.to_f => 1.0`
- To Integer `.to_i`: Transforms a string (eg: “5”) or a float into an integer. `“5”.to_i => 5`; This can be really helpful when you have a string representation of a number that you want to perform numeric functions on.
- To String `.to_s`: Transforms an integer or float into a string. `1.to_s => “1”`. Similarly with to_i, you’ll find this helpful at times when you want to use numbers for displays.
- Arrays: An array is a combination of objects separated, each separated by a comma. Eg: `[1, “two”, three, {hello: world, weather_today: “sunny”}]`. Arrays are an incredibly important building block as we start building out full backend applications. For example, we’ll query and work with all of the blog posts, categories, and users via arrays of objects. Your ability to access the array data that you want and use common array methods will make produce dividends as a coder.
- Accessing Array Data: Imagine we have an array with values between 1 and 6. `ourArray = [1,2,3,4,5,6]`
- Accessing A Single Array Object: `ourArray[object_index]`. Arrays start with a 0 index, meaning that `ourArray[0] => 1`. `ourArray[5] => 6`. `ourArray[100] => nil`.
- Accessing a single array object counting down from the end: To access the last array object, counting backwards, you use negative numbers, starting with -1. `ourArray[-1] =>6`.
- Accessing a specific number of objects, from a index onwards: if you wanted to access 3 array objects, starting with the 2nd object in the array: `ourArray[1,3] => [2,3,4]`.
- Accessing all objects between two objects: `ourArray[1..4] => [2,3,4]`.This is inclusive,in that it includes the first object, last object, and everything in between.

**In-Class Exercise: Create an array with 8 array items.**
1. Print out the third item in the array.
2. Print out the second to last array item.
3. Print out the first 3 items in the array.
4. Print out all array items between the 2nd and 5th array item.

### Commonly used Ruby array methods:
ourArray = ["Min", "Gaurav", "Adam", "Anastassia", "Constantin", "Casey"]
               " Length - .length: ourArray.length!6. The number of objects in an array.


- Count - .count: ourArray.count!6. The number of objects in an array.
- Each – .each: Allows you to loop through each object in an array to perform a specific operation.
- First - .first: Returns the first element in an array.
- Last - .last: Returns the last element in an array.
- Pop - .pop: Removes the last element of an array. ourArray.pop!6 . ourArray is now [1,2,3,4,5]
- Push - .push: Inserts new objects into the end of an array. ourArray.push(7)![1,2,3,4,5,6,7] ; ourArray.push(8,9) ! [1,2,3,4,5,6,8,9]
- Reverse - .reverse: Returns a new array in the reverse order. This is only temporary. It doesn’t actually transform the array object. ourArray.reverse![6,5,4,3,2,1] ; ourArray is still [1,2,3,4,5,6]
- Index – index: Returns the index of that item in the array. ourArray.index(3)!2.
- Unique – uniq: Returns a new that only includes the unique values in array. Eg. [1,2,2].uniq![1,2]

### Hashes: Hashes are a combination of key: value pairs.
**Much of the data that we’ll be working with in ruby is stored in the form of a hash. For example, if Andy were are user, we might store his information as such: andy = {height: 70, weight: 170, age: 29, profession: “programmer”}.**

- Accessing hash data: You can access a particular key-value pair using the syntax: variable_name[:key]. Eg: carlos[:age]!29
- Hash syntax options: There are three different ways of defining a hash. The two syntax types that include a => are known as ‘hash rockets’.
```rb
{key: value}
{“key” => value}
{:key => value}
```

### Operators:

- Plus:a+b
- Minus:a-b
- Times:a*b
- Divided by: a / b
- Modulo: Returns the division remainder of two numbers. Eg: 5 % 3 ! 2. 6 % 3 ! 0.
- Exponent: a ** b
#### Comparison Operators:
- `==`  Checks whether the value of two operands is equal. If yes, evaluates to true, if no, evaluates to false
- `!=` Checks whether the value of two operands ARE NOT equal. If yes, evaluates to true, if no, evaluates to false
- `>` Checks if operand on left is greater than operand on right. If yes, evaluates to true, if no, evaluates to false
- `<` Less than
- `<=` Less than or equal to
- `>=` Greater than or equal to
- `<=>` Combined comparison. Returns 0 if both operands are equal. 1 if left operand is greater. -1 left is lesser.


### Variables: Unlike JavaScript, in ruby there’s no need to include a ‘var’ or end a line with a ‘;’
```rb
myNumber = 5
myString = “Hello Friends”
```

### Classes
**A class enables you to group a number of methods and variables together. Classes act as re-usable factory like structure that you can use to create custom objects.**
```rb
class BestFriend
def initialize(name) # The initialize method is what’s called when you use the class factory to create a new object. Eg: carlos = BestFriend.new(“Carlos”)
@name = name # variables that start with an ‘@’ are instance varibles, which are accessible anywhere within the class
end
```
```rb
def say_kind_things
puts “#{@name}, you’re my favorite person on earth. Don’t forget that!”
end
```
```rb
def invite_me_to_dinner
puts “Hey, #{@name}. Want to grab dinner tonight?”
end
```
Classes operate as a factory that builds individual objects, but are not objects themselves. If you want to use a class to create an object, you’ll need to create a new instance of the class:
```rb
bestie = BestFriend.new(“Carlos”) # pattern: ClassName + .new + (initialize_method_paramenters) bestie.say_kind_things!Carlos, you’re my favorite person on earth. Don’t forget that! besite.invite_me_to_dinner!Hey, Carlos. Want to grab dinner tonight?
```


Extra Resources:

- For more practice with Ruby, check out: http://rubymonk.com/learning/books/1-ruby-primer
- Ruby documentation with a full list of built in functionality: http://www.ruby-doc.org/core-2.2.0/
- More on arrays and array methods: http://www.ruby-doc.org/core-2.2.0/Array.html
- More on hashes and hash methods: http://www.ruby-doc.org/core-2.2.0/Hash.html
- More on hashes and hash methods: http://www.ruby-doc.org/core-2.2.0/Hash.html

## Looking Forward:

In our next lesson we will take the principles you've learned today and apply them to the basis of our final project.  While these exercises seem very rudimentary, they are the basis of how many CRUD applications are contructed in Ruby on Rails.
