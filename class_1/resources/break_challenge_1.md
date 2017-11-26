# Break Challenge 1: print_salutation

The following code snippet is a Ruby method that prints "Hey #{name}!" for the given name. For example, ```hey('Robot')``` would print "Hey Robot!" to the screen. Further, the default name is "John", so simply calling ```hey``` would print "Hey John!".

```ruby
  def hey(name = 'John')
    puts "Hey #{name}!"
  end
```

1. In your new c9 workspace, find the command line and type ```irb```.  This will launch a Ruby [REPL](https://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop) where you can interact with the Ruby programming language.  Copy and past the above method, then call the method with your name.

2. Write a new method called ```print_salutation``` that not only takes a name as an argument, but also a salutation. This method should return "Good morning, Nick!" when it is called like this ```print_salutation('Good morning', 'Nick')```.

3. This same method should return "Howdy John!" when no arguments are given.
