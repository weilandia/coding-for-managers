# Introducing Hashes

---

# Warmup

[Ruby Doc](http://ruby-doc.org/core-2.4.2/Hash.html) defines a hash as "a dictionary-like collection of unique keys and their values. Also called associative arrays, they are similar to Arrays, but where an Array uses integers as its index, a Hash allows you to use any object type."

* What information can you tease from this definition?
* What else do you know about hashes?

---

# Dictionary-Like/Keys & Values

* Hashes allow us to store/look up values by keys of our choosing.
* In a dictionary the keys would be words and the values definitions.
* A hash would allow us to store all of those words out of order and still be able to find their definitions.

---

# Key Value Pairs

* Collection of key/value pairs
* Key must be unique
* Values can be any object (including other arrays and hashes)

---

# Syntax

```ruby
new_hash = {}
# Different syntax
new_hash = Hash.new
# Different syntax with default value
new_hash = Hash.new(0)
```

---

# Key Syntax: Hash Rockets

```ruby
old_tv = {
  "screen size" => 50,
  "price" => 300,
  "brand" => "Samsung"
}
```

---

# Key Syntax: Symbols

```ruby
new_tv = {
  screen_size: 50,
  price: 300,
  brand: "Samsung"
}
```

---

# Advantages of Using Symbols

* Strings are compared character by character
* Symbols are compared by their `object_id`
* Symbols help your code run faster

---

# Accessing Attributes by Keys

* Symbols by themselves (outside a key/value pair) look like this: `:brand`

```ruby
old_tv.keys
old_tv.values
old_tv["screen size"]
old_tv["brand"]

new_tv.keys
new_tv[:screen_size]
new_tv[:price]
```

---

# Adding Key/Value Pairs

```ruby
new_tv[:resolution] = "720p"
new_tv
```

## Pair Exercise

For this exercise you'll work in pairs.

* Person `A` is in charge of reading the instructions
* Person `B` is in charge of working in pry (in such a way that their partner can see!)

### Steps

1. Create a hash called `new_band`.
2. Add a bassist to your `new_band` hash.
3. Find the name of your bassist by accessing the `:bassist` key in the `new_band` hash.
4. Find the value attached to `:vocalist` in your hash.
5. Add a vocalist to your hash.
6. Add a drummer to your hash.
7. What are the keys of your hash? What kind of object does that method return?
8. What are the values of your hash? What kind of object does that method return?
9. Assign a new value to the `:vocalist` key of your hash.
10. How has `keys` changed after the last step? How has `values` changed? What

## Independent Work

Finally let's break up for some independent work with Hashes and Arrays.

### Hash and Array Nesting

As our programs get more complex, we'll sometimes encounter more sophisticated combinations of these structures. Consider the following scenarios:

#### Array within an Array

```ruby
a = [[1, 2, 3], [4, 5, 6]]
```

* what is `a.count`?
* what is `a.first.count`?
* how can I access the element `5`?

#### Hash within an Array

```ruby
a = [{pizza: "tasty"}, {calzone: "also tasty"}]
```

* what is `a.count`
* what is `a.first.count`
* how can I access the value `"also tasty"`

#### Hash within a Hash

```ruby
h = {
  dog: {
    name: "Chance",
    weight: "45 pounds"
  },
  cat: {
    name: "Sassy",
    weight: "15 pounds"
  }
}
```

* what is `h.count`?
* what is `h.keys`?
* what is `h.values`?
* how can I access the valued `"15 pounds"`?


## Further Practice

### Ruby Docs

Get familiar with the Ruby Docs on [Hashes](https://ruby-doc.org/core-2.4.0/Hash.html)

### Practicing with Hashes and Nesting: State Capitals

You have 2 hashes, one which maps state names to state abbreviations,
and one which maps state abbreviations to their capital:

```
states = {"Oregon" => "OR",
          "Alabama" => "AL",
          "New Jersey" => "NJ",
          "Colorado" => "CO"}

capitals = {"OR" => "Salem",
            "AL" => "Montgomery",
            "NJ" => "Trenton",
            "CO" => "Denver"}
```

* Level 1: Write some code which given a state name ("Oregon") outputs
  its capital ("Salem")
* Level 2: Handle the case when a state's information is not known by
  returning "Unknown"

# Wrap Up


Things to consider:

* How are they structured?
* When you would use each one?
* How do you interact with each one?

# Exercises
* Do hash_test in ruby core exercises
