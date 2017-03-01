# Solutions

## name_length

```rb
def name_length(array)
count = 0
array.each do |item|
if item.length <= 2
count += 1
end
end
return count
end

name_length(['nemo', 'mary', 'melissa', 'po'])
```

## RobotFriend

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

  def change_companion(new_name)
    puts "say goodbye to #{@companion_name}"
    @name = new_name
    puts "say hello to #{@name}"
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

companion = RobotFriend.new("Harold", "Jenni") # pattern: ClassName + .new + (initialize_method_paramenters)
```
You could also have written the function this way

```rb
def change_companion(new_name)
  @old_name = companion_name
  @companion_name = new_name
  puts "Say goodbye to #{@old_name}! Say hello to #{@companion_name}"
end
```

## Try Ruby

### Level 1

```
> help
> 2+6
=> 8
Success!
> 4*10
=> 40
> 5-12
=> -7
> 40/4
=> 10
> next
> "Jimmy"
=> "Jimmy"
Success!
> "Jimmy".re­verse
=> "ymmiJ"
Success!
> "Jimmy".le­ngth
=> 5
Success!
> "Jimmy"*5
=> "JimmyJimmyJimmyJimmyJimmy"
Success!
>  
```

### Level 2

```
> 40.reverse­
=> #<NoMethodError: undefined method `reverse' for 40:Fixnum>
Oh no!
> 40.to_s.re­verse
=> "04"
That's better!
> []
=> []
Success!
> [12, 47, 35]
=> [12, 47, 35]
Success!
> [12, 47,35­].max
=> 47
Success!
> ticket = [12, 47, 35]
=> [12, 47, 35]
Success!
> ticket
=> [12, 47, 35]
Success!
> ticket.sor­t!
=> [12, 35, 47]
> ticket
=> [12, 35, 47]
> next
> print poem
=> "My toast has flown from my hand
And my toast has gone to the moon.
But when I saw it on television,
Planting our flag on Halley's comet,
More still did I want to eat it."
Success!
> poem['toas­t'] = 'hone­ydew'
=> "honeydew"
Success!
> next
> poem.rever­se
=> ".ti tae ot tnaw I did llits eroM
,temoc s'yellaH no galf ruo gnitnalP
,noisivelet no ti was I nehw tuB
.noom eht ot enog sah tsaot ym dnA
dnah ym morf nwolf sah wedyenoh yM"
Success!
> poem.lines­.to_a.reve­rse
=> ["More still did I want to eat it.
", "Planting our flag on Halley's comet,
", "But when I saw it on television,
", "And my toast has gone to the moon.
", "My honeydew has flown from my hand
"]
Success!
> print poem.­lines.to_a­.reverse.j­oin
More still did I want to eat it.
Planting our flag on Halley's comet,
But when I saw it on television,
And my toast has gone to the moon.
My honeydew has flown from my hand
Success!
```
