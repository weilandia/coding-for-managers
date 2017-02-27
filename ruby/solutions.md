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
