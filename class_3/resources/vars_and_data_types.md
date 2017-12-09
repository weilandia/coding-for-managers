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

# Variables  

Programming is all about creating abstractions; in order to create an abstraction, we must be able to assign names to things. Variables are a way of creating a name for a piece of data.

* Statically typed vs. dynamic

Let’s try an example:

```ruby
number = 10
number
```

The line `num = 10` creates the variable named `number` and stores the value 10 into it.

In English we read left-to-right, so it’s natural to read code left to right. But when evaluating an assignment using the single equals sign (=), Ruby actually evaluates the right side first. Take the following example:

```ruby
sum = 10 + 5
```

The 10 + 5 is evaluated first, and the result is given the name sum.

*Try it*: What is c at the end of this? Why?

```ruby
$ irb
$ c = 15
$ c = "hello"
$ c
```

### Naming Variables

Ruby variables have a few **requirements**. Local variables ...

* have no spaces
* do not contain most special characters like $, @, and &
* can contain underscores & numbers, but CANNOT start with a number

A few examples of invalid Ruby variable names include:

* `student names` - variables cannot include a space
* `account_$` - variables cannot include most special characters
* `1st_lesson` – variables can’t start with a number, should just be first_lesson

In addition to those requirements, Rubyists have a few common style **conventions** for variable names:

* always start with a lowercase letter (underscore is permitted, though uncommon)
* use snake case where each word in the name is lowercase and connected by underscores ( _ )
* are named after the meaning of their contents, not the type of their contents
* are NEVER abbreviated, especially **NO SINGLE LETTER VARIABLES**

Good variable names might be count, students_in_class, or first_lesson.

A few examples of Ruby variable names with poor convention include:

* `studentsInClass` – uses camel-case rather than snake-case, should be students_in_class
* `student_name_string` – includes the type of the data in the name, should just be students
* `msg` or `v` – abbreviates rather than just using message  


*Try it:* Use IRB to store values with each of the following variable names. Which names are good, which are actually invalid Ruby, and which are valid but go against Ruby style?

* `time_machine`
* `student_count_integer`
* `homeworkAssignment`
* `Team`
* `3_sections`
* `top_ppl`  


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

Which of the following are invalid? Which go against convention?

* time_machine
* student_count_integer
* homeworkAssignment
* 3_sections
* top_ppl

---

# Integers

```ruby
123456789.class
1_000_000_000_000_000_000_000.class
5.6.class
1.239.class
```

---

# Integer Practice

See lesson plan.

---

# Documentation Review

|Integer Methods | |
|----|----|
|round|%|
|to_f|==|
|to_i|>|
|to_s|>=|
|floor|even?|
|ceil|odd?|
|abs|next|

---

Homework
