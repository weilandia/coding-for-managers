## Adding a feature to your blog.

We're going to add some real functionality to the star/favorite system

What is the broad overview of what we want to achieve with our persistent stars?
* current user sees an empty star icon (if the current user hasn't starred it yet) next to each post and a cumulative star count from all users
* see a full star icon if the current user has starred it

What is the broad overview of how we might achieve this?
* when the user clicks on a star, an ajax request is made to the server
* the server receives the ajax request, creates a record of the starring, noting both the primary key (id) of both the user and the post so that they can be linked together.
* a response is sent back to the client with data indicating the new star count for the post
* in the success handler for the AJAX call we update the UI with the new star count and a new full star icon

So what do we need?
* a [join table](https://en.wikipedia.org/wiki/Associative_entity) for counting stars

`$ rails g migration CreateJoinTableUserPost user post`
* each join record should have a `post_id` and a `user_id`
* run `rails g model CreateJoinTableUserStars user_id:integer post_id:integer`
* check the migration file to make sure it's what we want
* run `rake db:migrate` to update the database schema accordint to the migration file
* In our Post model add `has_many :user_stars`
* In our User model add `has_many :user_stars`
* in our PostsController we need to handle the case of an incoming ajax call
* ...
* in the AJAX success function, we need to data the reponse data star_count
* find the right post using the data component or the post_id and the right `.star-count-display`
* use the jQuery `.text()` method to update the text to the new count

BONUS:
How can we control for one star per user per post?
How can we allow a user to retract his/her star vote?
