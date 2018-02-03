# Public APIs + jQuery With Rails

# APIs

## What you'll learn in this course
* Understand the role of an API
 it's already loaded in our application layout
* Understand the JSON data format
* Learn how to make an AJAX request
* Understand the asynchronous nature of JavaScript


### The role of an API
Public APIs are designed to allow external clients to access data on a server. Clients, in this case, can be user devices or other web servers. Large companies like the New York Times offer access to items like old articles through their API. Some APIs are completely open while others require authentication. A common form of authentication is an API key - which usually must be obtained through registration and/or payment. Every API has its own set of rules of interaction that a developer must learn by reading the API's documentation (the quality of documentation can vary wildly!).

### What we are building

- We are going to use jQuery to do a few things:
1. Allow a blog reader to click a heart, which will increment the heart count
2. It will also send an AJAX request to the server so the heart count can be persisted to the database

### What is an AJAX request?

**Copied from https://www.w3schools.com/xml/ajax_intro.asp**
AJAX is a developer's dream, because you can:

- Update a web page without reloading the page
- Request data from a server - after the page has loaded
- Receive data from a server - after the page has loaded
- Send data to a server - in the background

If you'd like to get into the details, [here's a good article](https://www.codementor.io/sheena/ajax-tutorial-web-development-du107rzaq)

### How do we make an AJAX request?

- We are going to use the [Open Air Quality API](https://docs.openaq.org/) to explore AJAX requests.

```js
  $.ajax({
    method: "GET",
    url: "https://api.openaq.org/v1/countries",
    data: { limit: 10 },
    success: function(data) {
      console.log(data);
    }
  })

  $.get("https://api.openaq.org/v1/countries", { limit: 5 }, function(data) {
    console.log(data);
  })
```

### Using AJAX requests to improve our blog app

* First let's plan out the UI for liking a blog post
- We'll need some icons, so let's use `gem "font-awesome-rails"`
- By looking at the docs, we can see how to get started

*Adding the icon to our app*
```html
<% if current_user.present? %>
  <h3>
    <%= link_to "#heart", class: "js-heart-post", data: { url: post_likes_path(@post) } do %>
      <%= fa_icon "heart-o" %>
    <% end %>
    <span class="js-heart-count heart-count"> 20</span>
  </h3>
<% end %>
```

* User story:
As a user, I want to be able to 'heart' a blog a blog post.
As a user, I want to be able to 'unheart' a blog post.
As a user, I want to be able to see how many 'hearts' a blog post has.

When a blog post is deleted, any data related to the blog post should also be deleted.


- Let's get started with this:
```js
$(document).on('turbolinks:load', function() {
  $(".js-heart-post").click(function(e) {
    e.preventDefault();
    console.log("Write the feature 🎉");
  });
});
```

- Build our data model
```rb
rails g model like user:references post:references
```

*Where should we put 'has_many' relationships?*

- Plan our routes and controller
```rb
resources :posts do
  resources :likes, only: [:create, :destroy]
end
```

```rb
rails g controller likes create destroy
```

- Wire up ajax call

```javascript
$(document).on('turbolinks:load', function() {
  $(".js-heart-post").click(function(e) {
    e.preventDefault();
    $.ajax({
      method: "POST",
      url: $(this).data("url"),
      success: function(data) {
      }
    });
  });
});
```

- Wire up create controller
```ruby
def create
  post = Post.find(params[:post_id])
  like = post.likes.create(user_id: current_user.id)

  render json: {
    like: like.attributes,
    post: {
      like_count: post.likes.count
    }
  }
end
```


- Build out our API
- Build out our JS
