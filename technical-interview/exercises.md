## Adding a feature to your blog.

We're going to add some real functionality to the favoriting system

What is the broad overview of what we want to achieve with our persistent favorites?
* current user sees an empty star icon (if the current user hasn't favorited it yet) next to each post and a cumulative favorited count from all users
* see a full star icon if the current user has favorited it

What is the broad overview of how we might achieve this?
* when the user clicks on a star, an ajax request is made to the server
* the server receives the ajax request, creates a record of the favorite, noting both the primary key (id) of both the user and the post so that they can be linked together.
* a response is sent back to the client with data indicating the new favorite count for the post
* in the success handler for the AJAX call we update the UI with the favorite count and a new full star icon

So what do we need?

1. A [join table](https://en.wikipedia.org/wiki/Associative_entity) and model for favorites

`$ rails g model favorites user_id:integer post_id:integer`

You should be presented with a migration file like so:
```rb
class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
```
2. A m


* this will ensure that each join record will have a `post_id` and a `user_id`

* run `rake db:migrate` to update the database schema accordint to the migration file
* In our Post model add `has_many :user_favorites`
* In our User model add `has_many :user_favorites`
* in our PostsController we need to handle the case of an incoming ajax call
* ...
* in the AJAX success function, we need to data the reponse data star_count
* find the right post using the data component or the post_id and the right `.star-count-display`
* use the jQuery `.text()` method to update the text to the new count

BONUS:
How can we control for one star per user per post?
How can we allow a user to retract his/her star vote?
