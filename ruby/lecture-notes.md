# Intro to Ruby
Ruby is a high-level server-side object-oriented language. It has a large following, good documentation, and is used in Ruby on Rails, one of the most popular web frameworks in the world.

## What you will learn in this course
* Have an introduction to the Ruby language
* Recognize different data types in Ruby
* Perform exercises to increase Ruby awareness
* Look ahead to how Ruby will be used with Rails


## Ruby in your Terminal

To start an interactive Ruby session, go on your console and type:

`$ irb`

**What is a REPL?**
You will enter in what is called a REPL specific to Ruby. REPL stands for Read-Eval-Print Loop. It is an environment that takes a user input (read), interprete it (eval) and return the result to the user (print) and do it each time the user asks to do it (loop). 

# Basic Data Types

We're going to first learn about 4 basic types of objects in Ruby:
- `Integer`: whole number (eg: 1)
- `Float`: a decimal number, higher precision (eg: 21.356)
- `String`: a single character or group of them (eg: "hello world")
- `Nil`: an uninitialized, undefined, or empty value

Try the following:

`> 3 + 2`

`> 3 * 2.25`

`> 3 / 2`

**What is interesting about the result of 3 / 2?**

`> 3 ** 2`

`> Math.sqrt(9)`

**What is an object and what is OOP?**

Enter the next two commands:

`> a = 4 * 3`

`> b = 6 + 2`

**What is a variable?**

Try the following:

`> temp_val = a + b`

`> puts temp_val`

`> temp_val = a * b - temp_val`

`> puts temp_val`

Let's give Ruby a command with a string:

`> puts "hello world!"`

**Why does it output `nil`?**

Let's build our first program!

```ruby
def say_hello(name)
  puts "Hey " + name.capitalize + "!"
end
```

# Basic Logic

Next, let's get familiar with some basic logic:
- Booleans: `true` / `false`
- Control statements: `if`/`elsif`/`else`

##### Comparison Operators:
- `==`: Checks whether the value of two operands is equal. If yes, evaluates to true, if no, evaluates to false
- `!=`: Checks whether the value of two operands ARE NOT equal. If yes, evaluates to true, if no, evaluates to false
- `>`: Checks if operand on left is greater than operand on right. If yes, evaluates to true, if no, evaluates to false
- `<`: Less than

##### Logical Operators:
- `&&`: AND (statements on both sides must be true)
- `||`: OR (one of the statements on both sides must be true)

```ruby
def milk_is_expired?(days_old)

  result = ""

  if days_old < 5
    result = "No!"    
  elsif days_old < 12
    result = "Not yet."
  elsif days_old < 16
    result = "Maybe. Smell test first!"
  else
    result = "Yes."
  end

  return result
end
```

# Advanced Data Types

##### Array
Ordered lists of data are important. Let's get familiar with `arrays`:
- Array: a zero-indexed ordered series of values. (eg: [1, 2, 3, 4])

Try the following:

`> my_array = ["Min", "Ashmeet", "Adam", "Anastasia", "Constantine", "Lauren"]`

`> my_array[0]`

`> my_array[200]`

**How do we access "Lauren"?**

Common array methods:
- `.count`: `my_array.count`
- `.first`: `my_array.first`
- `.last`: `my_array.last`
- `.push`: `my_array.push("Jarad")`

*protip: you can see all the methods available on an object with the `.methods` method*

**How can we look at all the items in an array without explicitly accessing each index?**
- `.each`
```ruby
  my_array.each do |array_item|
    puts array_item
  end
```
**Exercise:** *Write a function `name_length` that takes an array of strings as an argument, and return how many of the names are longer than 4 characters. Hint: use a variable for counting, the `.each` method and an `if` conditional*

for example:
```ruby
name_length(['nemo', 'mary', 'melissa', 'pedro'])
# => 2
name_length(['jerry', 'arti', 'kyle', 'hao'])
# => 1
```

##### Hash

Accessing data quickly is important. How can we access a piece of data without looking through an entire array?

- Hashes: a collection of key value pairs.

try the following:

`casey = {age: 31, height: 5.8, occupation: "web developer"}`

`casey[:age]`

**How can we access Casey's occupation?**

**How can we add another attribute to Casey?**

`casey[:location] = "San Francisco"`


### Classes
A class enables you to group a number of methods and variables together into a custom object. Classes act as re-usable factory-like structure.
```rb
class RobotFriend
  def initialize(robot_name, companion_name) # The initialize method is what’s called when you use the class factory to create a new object. Eg: carlos = RobotFriend.new("Carlos")
    @name = robot_name # variables that start with an ‘@’ are instance varibles, which are accessible anywhere within the class
    @companion_name = companion_name
  end

  def say_kind_things
    puts "#{@companion_name}, you’re my favorite person on earth. Don’t forget that!"
  end  

  def make_introduction
    puts "Hello kind stranger! My name is #{@name} and this is my friend #{@companion_name}. You should be friends!"
  end

  def invite_me_to_dinner
    puts "Hey, #{@name}. Want to grab dinner tonight?"
  end
end
```

```rb
companion = RobotFriend.new("Harold", "Jenni") # pattern: ClassName + .new + (initialize_method_paramenters)
companion.say_kind_things
companion.invite_me_to_dinner
```

Extra Resources:

- For more practice with Ruby, check out: http://rubymonk.com/learning/books/1-ruby-primer
- Ruby documentation with a full list of built in functionality: http://www.ruby-doc.org/core-2.2.0/
- More on arrays and array methods: http://www.ruby-doc.org/core-2.2.0/Array.html
- More on hashes and hash methods: http://www.ruby-doc.org/core-2.2.0/Hash.html
- More on hashes and hash methods: http://www.ruby-doc.org/core-2.2.0/Hash.html

## Looking Forward:

In our next lesson we will take the principles you've learned today and apply them to the basis of our final project.  While these exercises seem very rudimentary, they are the basis of how many CRUD applications are contructed in Ruby on Rails.
