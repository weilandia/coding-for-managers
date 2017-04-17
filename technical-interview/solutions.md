#Solutions

1. A [join table](https://en.wikipedia.org/wiki/Associative_entity) and model for favorites

To create this table, run: `$ rails g model favorites user_id:integer post_id:integer`

2. Some model logic to record / count favorites

```rb
class Favorite < ActiveRecord::Base
    def self.mark_favorite(post_id, user_id)
        Favorite.create(post_id: post_id, user_id: user_id)
        Favorite.where(post_id: post_id).count
    end
end
```

3. An API controller
```rb
class Api::V1::FavoritesController < ApplicationController
    def mark_favorite
        render :json => Favorite.mark_favorite(params[:post_id], current_user.id)
    end
end
```

4. A route
```rb
post "api/v1/favorite" => "api/v1/favorites#mark_favorite"
```

5. Migrate and add Rails model associations

* Run `rake db:migrate` to put our new favorites table into the database
* In our Post model add `has_many :favorites`
* In our User model add `has_many :favorites`

6. A data property on each post in our HTML to help us know each post's id

```html
...
<td>
  <div data-id="<%= post.id %>" class="glyphicon glyphicon-star-empty favorite"></div>
</td>
...
```

7. A counter element in our HTML

```html
<td>
  <div data-id="<%= post.id %>" class="glyphicon glyphicon-star-empty favorite"></div>
  <div class="favorite-count"><%= post.favorites.count %></div>
</td>
```

8. An AJAX call inside of our click listener

```js
$(".favorite").click(function(){
  $(this).removeClass("glyphicon-star-empty");
  $(this).addClass("glyphicon-star");
  console.log(this.dataset.id);
})
```


```js
  $(".favorite").click(function(){
    $(this).removeClass("glyphicon-star-empty");
    $(this).addClass("glyphicon-star");
    markFavorite(this.dataset.id);
  });

  function markFavorite(postID){
    $.ajax({
      url: 'api/v1/favorite',
      method: "POST",
      data: { post_id: postID },
      success: function (response) {
          console.log(response);
          $(".favorite-count[data-id='" + postID + "']").text(response)
      },
      error: function (data) {
          console.log(data);
      }
    });  
  }
```

9. Make the star stay filled in if a user has already liked it.
```html
<td>
  <% if post.favorites.find_by(user_id: current_user.id) %>
    <div data-id="<%= post.id %>" class="glyphicon glyphicon-star favorite"></div>
  <% else %>
    <div data-id="<%= post.id %>" class="glyphicon glyphicon-star-empty favorite"></div>
  <% end %>
  <div data-id="<%= post.id %>" class="favorite-count"><%= post.favorites.count %></div>
</td>
```
