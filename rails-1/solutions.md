# Solutions

## Active Record


```rb
Zombie.find(1)
```
```rb
Zombie.create
```
```rb
Zombie.last
```
```rb
Zombie.order(:name)
```
```rb
Zombie.find(3).update(graveyard:"Benny Hills Memorial")
```
```rb
Zombie.find(3).destroy
```

## Models
```rb
class Zombie < ActiveRecord::Base
end
```
```rb
class Zombie < ActiveRecord::Base
  validates_presence_of :name
end
```
```rb
class Zombie < ActiveRecord::Base
  validates :name, uniqueness:true
end
```
```rb
class Zombie < ActiveRecord::Base
  validates :name, presence:true, uniqueness:true
end
```
```rb
class Weapon < ActiveRecord::Base
  belongs_to :zombie
end
```
```rb
Zombie.find(1).weapons
```
