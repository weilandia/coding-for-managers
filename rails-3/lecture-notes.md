# Intro to Rails (Part 3)

## What you will learn in this course
* Understand the role of libraries/gems
* Install and configure devise for Rails
* Create views for registration process
* Register a new user

## Gems

**Introduction**:

Gems are libraries - collections of open source, pre-built functions and classes that you can integrate into your Rails app to give it additional capabilities. One of the benefits of Rails is that it is a huge community with an abundance of high-quality, well-documented, well-maintained gems to help you with almost anything you need to build.

**Gemfile**: Include gems in your app by adding them to your Gemfile, using the syntax: `gem gem-name`.

## Add devise gem

Adding authentication is vital to any modern web application. We will spend today adding the `devise` gem to our blog application. Devise is a powerful library that helps Rails developers integrate the tools needed to authenticate users and provide a security layer to the app.

[More about devise](http://devise.plataformatec.com.br/)

Open up your Gemfile and add this line
```rb
gem 'devise'
```
and run
```bash
$ bundle install
```

## Set up devise in your app

Run the following command in the terminal.
```rb
$ rails g devise:install
```

## Configure Devise

Ensure you have defined default url options in your environments files. Open up config/environments/development.rb and add this line:
```rb
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
```

Open up app/views/layouts/application.html.erb and add:

```html
  <% if alert %>
    <p class="alert"><%= alert %></p>
  <% end %>
```
right above: `<%= yield %>`

In our application-wide stylesheet (`/app/assets/stylesheets/application.css`), let's add:
```css
.alert {
  color: red;
  font-style: italic;
}
```

At this point we have effectively implemented the `devise` gem into the application and we are ready to create our `User` model and add security to it.

## Setup the User model

We’ll use a bundled generator script in conjunction with `devise` to create the User model.
```bash
$ rails g devise User
$ rake db:migrate
```

### Add sign-up and login links

All we need to do now is to add appropriate links or notice about the user being logged in in the top right corner of the navigation bar.

In order to do that, edit app/views/layouts/application.html.erb add:
```rb
  <% if user_signed_in? %>
    Logged in as <strong><%= current_user.email %></strong>.
    <%= link_to 'Edit profile', edit_user_registration_path, :class => 'navbar-link' %> |
    <%= link_to "Logout", destroy_user_session_path, method: :delete, :class => 'navbar-link'  %>
  <% else %>
    <%= link_to "Sign up", new_user_registration_path, :class => 'navbar-link'  %> |
    <%= link_to "Login", new_user_session_path, :class => 'navbar-link'  %>
  <% end %>
```

### Create your first user

Now that you have set everything up you can create your first user. Devise creates all the code and routes required to create accounts, log in, log out, etc.

**You can test whether the user was registered by going to the rails console and typing 'User.all'.  If your registration was successful you should see the user in the records of the User model**

Finally, force the user to redirect to the login page if the user was not logged in. Open up app/controllers/application_controller.rb and add:
```rb
  before_action :authenticate_user!
```
after `protect_from_forgery with: :exception.`

## Connect User and Posts

1.  Add the line `has_many :posts` in your `user.rb` file.
2.  Add the line `belongs_to :user` in your `post.rb` file. Adding these two lines will associate your models for later use.

3. In the `posts_controller.rb` for your CRUD actions you will need to set the instance of a user to the current user like so:
```rb
 # GET /posts/new
  def new
    @user = current_user
    @post = Post.new(user_id: current_user.id)
  end
```
This will ensure that the user that creates or edits posts is the user and helps to check the authorization.

4. In the `posts_controller.rb` modify the instance of a post in your create method to look like this:
```rb
  def create
    @user = current_user
    @post = @user.posts.build(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end
```
This will finally ensure that the post is associated with the user creating it.

Homework: [Add permissiong/authorization to your app using cancancan](../authorization)
