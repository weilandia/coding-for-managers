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
  <% flash.each do |name, msg| -%>
    <div class="flash <%= name %>"><%= msg %></div>
  <% end -%>  
```
right above: `<%= yield %>`

In our application-wide stylesheet (`/app/assets/stylesheets/application.css`), let's add:
```css
.flash {
  padding: 10px;
  font-style: italic;
  color: #fff;
}
.flash.success {
  background: green;
}
.flash.failure {
  background: red;
}
.flash.alert {
  background: red;
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
<header class="ps-navbar">
    <a href="/" class="ps-nav-brand">PS Blog</a>
    <nav class="ps-navbar-nav">
        <li>
          <a href="/">Home</a>
        </li>
        <% if user_signed_in? %>
            <li>
              <a href="<%= new_post_path %>">Write a Post</a>
            </li>
            <li>
              <%= link_to('Sign Out', destroy_user_session_path, method: :delete) %>
            </li>
        <% else %>
            <li>
              <a href="<%= new_user_registration_path %>">Sign Up</a>
            </li>
            <li>
              <a href="<%= new_user_session_path %>">Sign In</a>
            </li>
        <% end %>
    </nav>
</header>
```

### Create your first user

Now that you have set everything up you can create your first user. Devise creates all the code and routes required to create accounts, log in, log out, etc.

**You can test whether the user was registered by going to the rails console and typing 'User.all'.  If your registration was successful you should see the user in the records of the User model**

Finally, force the user to redirect to the login page if the user was not logged in. Open up app/controllers/application_controller.rb and add:
```rb
  before_action :authenticate_user!
```
after `protect_from_forgery with: :exception.`

## Add `user_id` as a foreign key to your posts model

`rails g migration AddUserIdToPosts user_id:integer`

`rake db:migrate`

## Connect User and Posts

Active Record associations provide convenience methods to your models.
1.  Add the line `has_many :posts` in your `user.rb` file. This will provide you with the convenience method `posts` on any `user`. For instance: `User.find(5).posts` will give you all the posts that are associated with that user.

2.  Add the line `belongs_to :user` in your `post.rb` file. Adding these two lines will associate your models for later use. This will provide you with the convenience method `user` on any `post`. For instance: `Post.find(12).user` will give you the user that is associated with that post.

3. In the `posts_controller.rb` modify the instance of a post in your create method to look like this:
```rb
  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end
```

This will ensure that each post is associated with the user that created it. There are other ways of creating a post with the user_id attached, but the above method is the most straight forward.

## Validate that a post has a user and add the author email to the Post#Index page
```ruby
validates :user, :title, :body, presence: true

```
```ruby
<h1>Posts#index</h1>
<table>
    <thead>
        <td>Id</td>
        <td>Author Email</td>
        <td>Title</td>
        <td>Word Count</td>
    </thead>
    <tbody>
        <% @posts.each do |post| %>
            <tr>
                <td><%= post.id %></td>
                <td><%= post.user.email %></td>
                <td><%= post.title %></td>
                <td><%= post.word_count %></td>
            </tr>
        <% end %>
    </tbody>
</table>
```

Homework: [Add permissiong/authorization to your app using cancancan](../authorization)
