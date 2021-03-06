# jQuery With Rails

- jQuery was a Rails dependency until Rails 5.1
- We are using Rails 4.2, so our app already has jQuery as a gem dependency and it's already loaded in our application layout

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
<h3>
  <%= link_to "#heart", class: "js-heart-post" do %>
    <%= fa_icon "heart-o" %>
  <% end %>
  <span class="js-heart-count"> 20</span>
</h3>
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
rails g migration create_likes user:references post:references
```

- Plan our routes and controller
```rb
resources :posts do
  resources :likes, only: [:create, :destroy]
end
```
```rb
rails g controller likes create destroy
```

- Build out our API
- Build out our JS
