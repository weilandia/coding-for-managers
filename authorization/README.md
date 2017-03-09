# Authorization for Rails

|Objectives|
|-----------|
|Explain how authorization differs from authentication|
|Use CanCanCan to implement authorization helpers in a Rails application|

Authorization is an important aspect to most any application. As a system, it is put in place to determine whether the current user has the permission to perform the requested action. Based on this, it typically happens after a user is authenticated, but before a request is processed.

### Adding cancancan

1. Add the gem 'cancancan' to your Gemfile.
2. run 'bundle install' in the terminal.
3. Add this to your application controller:
```rb
  class ApplicationController < ActionController::API
    include CanCan::ControllerAdditions
  end
```
This line will load the functionality of CanCanCan into your application.  This functionality comes with some key words that help you define which users CAN (get it) do things and which ones cannot.

 4.  Now define abilities running the command 'rails g cancan:ability' in the terminal.  This will create an 'ability.rb' file that you will use to help set the authorization of the users in the application.
 5.  In your 'ability.rb' file add this block of code:
 ```rb
 class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :read, Post

    can [:create, :update, :destroy], Post do |post|
      post.user == user
    end
  end
end
```
This code allows all users to read all posts.  However, the user can only create, update, and destroy posts if the user.id of the post matches their id.

6. At the top of the 'posts_controller.rb' add this line before your definitions of your method: 'load_and_authorize_resource only: [:edit, :update, :destroy]'
and also comment out 'before_action :set_post, only: [:show, :edit, :update, :destroy]'

```rb
class PostsController < ApplicationController
  # before_action :set_post, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource  only: [:edit, :update, :destroy]
```

6. In the 'posts_controller.rb' for your CRUD actions you will need to set the instance of a user to the current user like so:
```rb
 # GET /posts/new
  def new
    @user = current_user
    @post = Post.new
  end
```
This will ensure that the user that creates or edits posts is the user and helps to check the authorization.

7. In the 'posts_controller.rb' modify the instance of a post in your create method to look like this:
```rb
@post = @user.posts.build(post_params)
```
This will finally ensure that the post is associated with the user creating it.

8. In the 'posts_controller.rb' modify the instance of a post in your show method to look like this:
```rb
 # GET /posts/1
 # GET /posts/1.json
 def show
   @user = current_user
   @post = Post.find(params[:id])
 end
```
This will ensure that you will have access to the correct post on that page

9. You will want to have a flash message to let the user know that have tried to access a page they are not authorized to do so:
```rb
# application_controller.rb

  rescue_from CanCan::AccessDenied do |exception|
    flash[:notice] = "Access denied!"
    flash.keep(:notice)
    redirect_to root_url
  end
  ```

At this point you should be able to create different users and make posts for those users.  When an unauthorized user tries to modify or delete a posts they will not be able to and be met with an error saying so.
