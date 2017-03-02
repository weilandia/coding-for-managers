# Intro to Ruby
Ruby is a dynamically-typed high-level server-side object-oriented language. It has a large following, good documentation, and is used in Ruby on Rails, one of the most popular web frameworks in the world.

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
Have you tried `Math.sqrt(9)`. Math is what is called an Object and `.sqrt()` a Method. An object is a data structure that contains **properties** and **methods**.
A method is a function. Some methods are already built in ruby (like sqrt()) but you can also build some yourself!

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

Let's build our first program! We are going to build a function. A function looks like this:

 `def name-of-your-function(parameter1, parameter2,....)
    your code
  end
 `

Here is an example:

```ruby
def say_hello(name)
  puts "Hey " + name.capitalize + "!"
end
```

# Basic Logic

Next, let's get familiar with some basic logic:
- Booleans: `true` / `false`
Booleans only return 2 values: True or False. For example:
`3 > 4 ==> FALSE`
`4 > 3 ==> TRUE`
`3 > 3 ==> FALSE`

- Control statements: `if`/`elsif`/`else`
Control statements execute an action if this action is true. For example

`IF(x > 4) THEN puts "hello world"`
If we set up x to a number greater than 4, you'll see `hello world` in your console. If x is less or equal than 4, the code won't be executed. Here is how you should write it in ruby:

```rb
if x > 4
  puts "hello world"
end
```
Don't forget the `end` at the end of your if statement.

Now you can have several conditions you want to set. For example:

```rb
if your_age < 40
  puts "you are not older than 40 years old"

elsif your_age < 50
  puts "you are older than 40 but not older than 50"
end
```
If you set your variable `your_age`to a number less than 40 your code will return `you are not older than 40 years old`. If your variable is set to a number greater than 40 but not greater than 50, your code will return `you are older than 40 but not older than 50`.

But what if you set your variable to a number greater than 50? Right now your code will return nothing. That is why, you can use an `else`. This will be used when NO conditions are met. For example:

```rb
if your_age < 40
  puts "you are not older than 40 years old"

elsif your_age < 50
  puts "you are older than 40 but not older than 50"

else
  puts "You are older than 50"
end
```

Now every number you set in your variable can be handled by your code.

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
**Exercise: name_length** *Write a function `name_length` that takes an array of strings as an argument, and return how many of the names are longer than 4 characters. Hint: use a variable for counting, the `.each` method and an `if` conditional*

for example:
```ruby
name_length(['nemo', 'mary', 'melissa', 'pedro'])
# => 2
name_length(['jerry', 'arti', 'kyle', 'hao'])
# => 1
```

##### Hash

Accessing data quickly is important. How can we access a piece of data without looking through an entire array? With Hashes.

- Hashes are a collection of key value pairs.

try the following:

`casey = {age: 31, height: 5.8, occupation: "web developer"}`

`casey[:age]`

**How can we access Casey's occupation?**

**How can we add another attribute to Casey?**

`casey[:location] = "San Francisco"`


### Classes

A `class` enables you to group a number of methods and variables together into a custom object. Classes act as re-usable factory-like structure.
There are several important components to a `class`:
- initializer
- instance variables
- class variables
- methods


```rb
class RobotFriend
  def initialize(robot_name, companion_name, num_cpus = 2) # The initialize method is what’s called when you use the class factory to create a new object. Eg: jerry = RobotFriend.new("Jerry")
    @name = robot_name # variables that start with an ‘@’ are instance varibles, which are accessible anywhere within the class
    @companion_name = companion_name
    @num_cpus = num_cpus
  end

  def self.disclaimer
    puts "Hello. I am a RobotFriend factory. I create RobotFriends for you. Please remember that your RobotFriend is not a sentient being and that your RobotFriend requires periodical charging of its batteries."
  end

  def say_kind_things
    process
    puts "#{@companion_name}, you’re my favorite person on earth. Don’t forget that!"
  end  

  def make_introduction
    process
    puts "Hello kind stranger! My name is #{@name} and this is my friend #{@companion_name}. You should be friends!"
  end

  def invite_companion_to_dinner
    process
    puts "Hey, #{@companion_name}. Want to grab dinner tonight?"
  end

  def upgrade!
    @num_cpus *= 2
    puts "#{@name} successfully upgraded to #{@num_cpus} CPUs"
  end

  private
  def process
    display = "processing"
    limiter = 10 / @num_cpus
    (0..limiter).each do
      system "clear"
      (0..3).each do |num|
        print display + "."*num + "\r"
        sleep 0.2
      end
    end
  end
end
```

```rb
companion = RobotFriend.new("Harold", "Jenni") # pattern: ClassName + .new + (initialize_method_paramenters)
companion.say_kind_things
```
**Exercise:** *Our robot friend is a little slow. Upgrade it to be faster and try invoking/calling/executing the `make_introduction` method. Maybe upgrade it again and call the `invite_companion_to_dinner`.*

**Exercise:** *Add another method to our RobotFriend class called `change_companion` that takes one argument: a name. The method must first print a line saying goodbye to the old companion, then it must change the instance variable, then it must print a line introducing itself to the new companion.*

Extra Resources:

- For more practice with Ruby, check out: http://rubymonk.com/learning/books/1-ruby-primer
- Ruby documentation with a full list of built in functionality: http://www.ruby-doc.org/core-2.2.0/
- More on arrays and array methods: http://www.ruby-doc.org/core-2.2.0/Array.html
- More on hashes and hash methods: http://www.ruby-doc.org/core-2.2.0/Hash.html
- More on hashes and hash methods: http://www.ruby-doc.org/core-2.2.0/Hash.html

## Looking Forward:

In our next lesson we will take the principles you've learned today and apply them to the basis of our final project.  While these exercises seem very rudimentary, they are the basis of how many CRUD applications are contructed in Ruby on Rails.
