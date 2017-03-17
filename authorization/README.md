# Authorization for Rails

## What you will learn in this homework
* Explain how authorization differs from authentication
* Further practice using gems
* Use CanCanCan to implement authorization helpers in a Rails application

Authorization is an important aspect to most any application. As a system, it is put in place to determine whether the current user has the permission to perform the requested action. Based on this, it typically happens after a user is authenticated, but before a request is processed.

### Adding cancancan

1. Add the gem `cancancan` to your Gemfile.

2. run `bundle install` in the terminal.

3. Add this into your Application Controller class:
```rb
  include CanCan::ControllerAdditions
```
This line will load the functionality of CanCanCan into your application.  This functionality comes with some key words that help you define which users CAN (get it) do things and which ones cannot.

4.  Now define abilities running the command `rails g cancan:ability` in the terminal.  This will create an `ability.rb` file that you will use to help set the authorization of the users in the application.

5.  In your `ability.rb` file add this block of code:
```rb
class Ability
  include CanCan::Ability

  def initialize(user)
    user = user || User.new # guest user (not logged in)
    can [:read], Post
    can [:create, :update, :destroy], Post, user_id: user.id
  end
end
```
This code allows all users to read all posts.  However, the user can only create, update, and destroy posts if the user.id of the post matches their id.

6. At the top of the `posts_controller.rb` add this line before your definitions of your method: `load_and_authorize_resource only: [:edit, :update, :destroy]`
and also delete `before_action :set_post, only: [:show, :edit, :update, :destroy]` as this new `load_and_authorize_resource` will be doing the same thing for us but only after running the resource through the cancancan check.

```rb
load_and_authorize_resource  only: [:edit, :update, :destroy]
```

7. You will want to have an alert message to let the user know that have tried to access a page they are not authorized to do so. Add the following inside your Application  Controller class, right under `include CanCan::ControllerAdditions`:
```rb
rescue_from CanCan::AccessDenied do |exception|
  flash[:alert] = "You must be the owner of this resource to modify it!"
  flash.keep(:alert)
  redirect_to posts_path
end
```

At this point you should be able to create different users and make posts for those users.  When an unauthorized user tries to modify or delete a posts they will not be able to and be met with an alert saying so.
