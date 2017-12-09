# Strings & Integers

---

# Warmup

* In your own words:
    * What's a string?
    * What's an integer?
    * What's a float?
* How/why do we use variables in Ruby?

---

# Share

---

# Intro

There are several different data types in Ruby. Today, we'll focus on Strings and Integers. We'll also talk about variables (structures used to store references to data, not data types themselves).    

# Strings

* Defined by quotations marks (single or double)
* Can be empty
* Like everything in Ruby, strings are objects

---

# Which of the following are valid strings? Why?

* ’’
* “123”
* 123
* ”@*#%&”
* hello, world!
* ‘987654321.”
* “hot chocolate is the best”

---

# Substrings

* Access portions of a string using square brackets and indices

---

# Single Characters

Type the following examples in IRB and determine what they do:

* "hello, world"[0]
* "Turing"[0]
* "ruby"[2]
* "lunch"[-1]

---

# Ranges

Type the following examples in IRB and determine what they do:

* "hello, world"[0..4]
* "Turing"[0..1]
* "ruby"[1..-1]
* "lunch"[0..-2]

---

# String Methods

* Structure
* Sample methods
    * `#upcase`
    * `#capitalize`
    * `#center`
* Can also call the following on any Ruby object
    * `.methods`
    * `.class`

---

# Documentation Review

|String Methods| |
|----|----|
|downcase|reverse |
|empty? |split |
|gsub|start_with? |
|include?|tr |
|index |upcase |
|length| |

---

# String Concatenation

* Can use `+` to concatenate strings
* If strings are saved to variables, can still use `+` to concatenate

---

# String Interpolation

* Can use curly braces inside a double quoted string to perform string interpolation.

```ruby
student = 'Carl'
"Welcome to class, " + student + "."
=> "Welcome to class, Carl."
"Welcome to class, #{student}"
=> "Welcome to class, Carl."
```

---

# Variables
* Statically typed versus dynamically Typed
```Java
Java
String str = "Hello";  //variable str statically typed as string
str = 5;               //would throw an error since str is supposed to be a string only
```

```Ruby
str = "Hello"
str = 5
```

# Variable Assignment

```ruby
x = 10
=> 10
x
=> 10
```

---

# Assigment and Evaluating Expressions

```ruby
b = 10 + 5
=> 15
b
=> 15
```

---

# What is `c`

```ruby
c = 15
=> ?
c = "hello"
=> ?
c
=> ?
```

---

# Naming Local Variables

* Requirements
    * always start with a lowercase letter (underscore is permitted, though uncommon)
    * have no spaces
    * do not contain most special characters like $, @, and &

---

# Naming Local Variables

* Conventions
    * use snake case where each word in the name is lowercase and connected by underscores (_)
    * are named after the meaning of their contents, not the type of their contents
    * aren’t abbreviated

---

# Naming Practice

*Try it:* Use IRB to store values with each of the following variable names. Which names are good, which are actually invalid Ruby, and which are valid but go against Ruby style?

* `time_machine`
* `student_count_integer`
* `homeworkAssignment`
* `Team`
* `3_sections`
* `top_ppl`  

---

## Integers

Numeric data comes in two types: Integers and Floats. Integers are whole numbers (no decimals) and in older versions of Ruby are either of the class Fixnum or Bignum. Floats are numbers that have decimal places.

```ruby
$ irb
$ 123456789.class
$ 1_000_000_000_000_000_000_000.class
$ 5.6.class
$ 1.239.class
$ 43e+3.class
```

*Try it*: Predict the return value before trying these in IRB. Which of these work? Which of these do something you didn't expect?

```ruby
$ 3 + 4
$ 2 * 4
$ 2 ** 5
$ 6 - 2
$ 4 / 2
$ 3 / 4
$ 3.0 / 4.0
$ 3 / 4.0
$ 3.0 / 4
$ 1.5.to_s
$ 5.5.to_i
$ 1 + "2"
$ 1 + "2".to_i
$ (1 + 2) * 3
$ 1 + (2 * 3)
```

We can also (somewhat) combine strings and integers. Try these:

```ruby
$ "hi" * 5
$ 5 * "hi"
```

### Introducing Number Methods

All of the arithmetic operations that you tried above are actually methods. Let's look at the documentation for [Integer](https://ruby-doc.org/core-2.4.0/Integer.html) and [Float](https://ruby-doc.org/core-2.4.0/Float.html).

```
round
to_f
to_i
to_s
floor
ceil
abs
%
==
>
>=
even?
odd?
next
```

Spicier methods:

```
upto
times
```

## Recap

Today, you accomplished the following:
* What are the naming requirements for Ruby local variables? What are the conventions?
* How do you assign a value to a variable?
* Define "string"
* What is the syntax for string concatenation (aka How do you concatenate strings?)
* What is the syntax for interpolation? (aka How do you interpolate variables into strings?)
* Name a String method
* Define "integer"
* Define "float"
* Name an Integer method
* Name a Float method
* How do you get to the Ruby Docs?

## Classwork  
*  Work through Core-Types for String and Ints_and_Floats  

```bash  
$ git clone https://github.com/weilandia/intro-ruby-exercises.git  
$ cd ruby-exercises/core-types  
$ gem install bundler  
$ bundle  
$ ruby string_test.rb  
```  
   Make the tests pass, exploring a variety of ways to interact with strings and fixnums. Jot down your own definition of what each method does.  


*  Complete the [Working with Strings and Integers](./exercises/strings_and_integers.md) challenge.
