# Solutions

## The Views Ain't Always Pretty

### Views Simple

```
<h1><%= zombie.name %></h1>

<p>
  <%= zombie.graveyard %>
</p>

```
### Linking

```
<p>
<%=link_to zombie.name, zombie %>
</p>


```
### Each Blocks
```
<ul>
<% zombies.each do |zombie| %>
  <%=zombie.name %>
  <%end %>
</ul>
```

### IF
```
<ul>
  <% zombies.each do |zombie| %>
    <li>
      <%= zombie.name %>
      <% if zombie.tweets.size > 1 %>
      SMART ZOMBIE
      <% end %>
    </li>
  <% end %>
</ul>
```

### Linking in Blocks
```
<ul>
  <% zombies.each do |zombie| %>
    <li>
      <%= link_to zombie.name, edit_zombie_path(zombie) %>
    </li>
  <% end %>
</ul>
```

## Controllers Must Be Eaten

### Show Action
```rb
class ZombiesController < ApplicationController
  def show
    # put the show code here
    @zombie = Zombie.find(params[:id])
  end
end

```
### Respond

```rb
class ZombiesController < ApplicationController
  def show
    @zombie = Zombie.find(params[:id])

    respond_to do |format|
      format.xml {render :xml => @zombie}
    end
  end
end

```
### Controller Create Action
```rb
class ZombiesController < ApplicationController
  def create
    @zombie = Zombie.create(zombie_params)
    redirect_to zombie_path(@zombie)
  end

  private

  def zombie_params
    params.require(:zombie).permit(:name, :graveyard)
  end
end
```
### Controller Before Action

```rb
class ZombiesController < ApplicationController
  before_action :find_zombie
  before_action :has_tweets , only: :show

  def show
    render action: :show
  end

  def find_zombie
    @zombie = Zombie.find params[:id]
  end

  def has_tweets
    if @zombie.tweets.size == 0
      redirect_to zombies_path
    end
  end

end
```

## Routing Into Darkness

### Resource Route
```rb
TwitterForZombies::Application.routes.draw do
  resources :zombies
end
```
### Route Matching
```rb
TwitterForZombies::Application.routes.draw do
  get '/undead' => 'zombies#undead'
end
```

### Route Redirecting
```rb
TwitterForZombies::Application.routes.draw do
  get '/undead' => redirect('/zombies')
end

```
### Root Route
```rb
TwitterForZombies::Application.routes.draw do
  root to: "zombies#index"
end
```
### Named Route
```rb
TwitterForZombies::Application.routes.draw do
  get '/zombies/:name', to: 'zombies#index', as: 'graveyard'
end
```
