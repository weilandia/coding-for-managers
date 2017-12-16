# If it's evenly divisible by 3, 5, and 7 print `SuperFizzBuzz`
# *   If it's evenly divisible by 3 and 7 print `SuperFizz`
# *   If it's evenly divisible by 5 and 7 print `SuperBuzz`
# *   If it's evenly divisible by 3 and 5 print `FizzBuzz`
# *   If it's evenly divisible by 3, print `Fizz`
# *   If it's evenly divisible by 5, print `Buzz`
# *   If it's evenly divisible by 7, print `Super`
# *   Otherwise print just the number

i = 0

while i <= 1000
  i += 1
end

until i >= 1000
  i += 1
end

1001.times do |n|
end

[*0..1000].each do |n|
end

0.upto(1000) do |n|
  if n % 3 == 0 && n % 5 == 0 && n % 7 == 0
    puts "SuperFizzBuzz"
  elsif n % 3 == 0 && n % 7 == 0
    puts "SuperFizz"
  elsif n % 5 == 0 && n % 7 == 0
    puts "SuperBuzz"
  elsif n % 3 == 0 && n % 5 == 0
    puts "FizzBuzz"
  elsif n % 3 == 0
    puts "Fizz"
  elsif n % 5 == 0
    puts "Buzz"
  elsif n % 7 == 0
    puts "Super"
  else
    puts n
  end
end
