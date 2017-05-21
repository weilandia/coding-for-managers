# Intro to Rails (Part 2)

## What you will learn in this course
* Learn about Scaffolding
* Learn about Routes and Controllers
* Learn the different components of Routes and Controllers
* See how Routes, Controllers, and Models fit together
* Implement Routes/Controller for Posts

## Scaffolding
`rails scaffold` will build all of the model, view and controller (MVC) files for a new model in the application. Before we scaffold, let's clean up our c9 workspace by destroying our previous Post model and cleansing our database:

`rails destroy model Post`

`rake db:drop`

`rake db:create`

Now let's remove our old practice migration files (as in, right click - delete them, or through the command line).

Next, let's create a scaffold. Open a new scratch document in c9 and let's write our the specifications for our Post scaffold.

`rails generate scaffold post title:string body:text`

## Routes

**Intro**: Your routes direct an incoming url with the appropriate controller and view. Let's find your routes.rb file:
```rb
Rails.application.routes.draw do
  root 'posts#index'

  resources :posts
end
```

**Root Route**: Sets the controller and view that the user will be taken to if the visit your base url (`/`) (eg: http://p-school-blog.herokuapp.com/). Syntax: `root 'posts#index'`

**Resources**: Whenever you add a new controller `resource` to your `routes.rb` file (eg: `resources :posts`), it will register the controller actions for Index (read – all posts), show (read – a single post), new (get – a new empty post object), create (post – a new post based off of the entered content), edit (get – the post object that you want to edit), update (patch – persisting the newly edited info to your blog post), destroy (delete – deleting post from database).

We can look at all the routes that your app has by typing `rake routes`

**CRUD & Route Resources**: There are 4 main actions a controller can take: Create, Read, Update, and Delete.

HTTP Verb | Path            | Controller#Action | Use                                         |
----------|-----------------|-------------------|---------------------------------------------|
GET       | /posts          |   posts#index     | display a list of all posts                 |
GET       | /posts/new      |   posts#new       | return an HTML form for creating a new post |
POST      | /posts          |   posts#create    | create a new post                           |
GET       | /posts/:id      |   posts#show      | display a specific post                     |
GET       | /posts/:id/edit |   posts#edit      | return an HTML form for editing a post      |
PATCH/PUT | /posts/:id      |   posts#update    | update a specific post                      |
DELETE    | /posts/:id      |   posts#destroy   | delete a specific post                      |

**Controller & View naming conventions**: Once you’ve created a route, if your view is set to the same name as your controller (eg: `posts#show` `show.html.erb`), it will automatically associate the controller and view.

## Controllers
```rb
class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
```

**before_action**: Behavior that has to happen before a controller action is invoked. In the case of our posts controller, on `show`, `update`, `edit` and `destroy`, we want to load the post that is required by the incoming request.

**Instance Variables**: begin with an ‘@’ sign (eg: @post). Instance variables allow you to share objects from your controller into your associated view. For example, our posts#show controller action, which sets the @post instance variable enables our show.html.erb page to access the data for our blog post.

**Strong Parameters**: Create a safeguard for the parameters that can be assigned by users to an object. Only white-listed parameters can be manipulated by users.

## Views

**html.erb file format**: ERB allows ruby to be included in your html files. You can create an erb file by saving it as `your_file_name.html.erb`

**Printing data in your view with ERB**: Use this syntax to print ruby in your view - `<%= ruby_content %>`.

• Helpful printers include `<%= object.attribute %>`, `<%=link_to “Link Name”, link_path %>`, `<%= image_tag image_url %>`

**Adding ruby logic to your view with ERB**: You can wrap your html content with logic, such as conditionals and iterators with the following syntax:

```html
<% ruby_logic_statement %> <!-- HTML CONTENT -->
<% end %>
```

**Iterators**:
```html
<% Posts.each do |post| %> 
  <%= post.title %>
  <%= post.body %> 
<% end %>
```

**Conditionals**:
```html
<% if current_user %>
  <%=link_to “Edit profile”, edit_user_path(current_user) %>
<% else %>
  <%=link_to “Create User Account”, new_user_path %>
<% end %>
```

**Forms**: Form are key for creating and updating database objects. Rails offer a number of form helper methods to make creating forms much easier. Below is the general form syntax.
```html
<%= form_for(@post, :html => { :multipart => true } ) do |f| %> <% if @post.errors.any? %>
  <div class="error_messages"> <ul>
    <% @post.errors.full_messages.each do |message| %> <li><%= message %></li>
  <% end %> </ul>
  </div>
<% end %>
  <div class="field">
    <%= f.label :title %>
    <%= f.text_field :title, :required => true %>
  </div>
  <div class="field">
    <%= f.label :body %>
    <%= f.textarea :body, :required => true %>
  </div>
```

In addition to the basic form above other form field types include:

- `<%= text_area_tag(:message, "Hi, nice site", size: "24x6") %> <%= password_field_tag(:password) %>`
- `<%= hidden_field_tag(:parent_id, "5") %>`
- `<%= search_field(:user, :name) %>`
- `<%= telephone_field(:user, :phone) %>`
- `<%= date_field(:user, :born_on) %>`
- `<%= datetime_field(:user, :meeting_time) %>`
- `<%= month_field(:user, :birthday_month) %>`
- `<%= week_field(:user, :birthday_week) %>`
- `<%= url_field(:user, :homepage) %>`
- `<%= file_field(:image) %>`
- `<%= email_field(:user, :address) %>`
- `<%= time_field(:task, :started_at) %>`
- `<%= number_field(:product, :price, in: 1.0..20.0, step: 0.5) %> <%= range_field(:product, :discount, in: 1..100) %>`

**In-Class Exercise**: We will go about creating a couple of our views for the posts.  More specifically, we will be creating our `index` view that will compliment the routes we created earlier.

1. Create a 'posts' folder inside of your 'views' folder.
2. Create an `index.html.erb` file inside of the 'posts' folder.
3. Add the following code to `index.html.erb`:
```html
<h1>Listing posts</h1>

<table>
  <tr>
    <th>Title</th>
    <th>Body</th>
  </tr>

  <% @posts.each do |post| %>
    <tr>
      <td><%= post.title %></td>
      <td><%= post.body %></td>
      <td><%= link_to 'Show', post_path(post) %></td>
    </tr>
  <% end %>
</table>
```

4. From here we can start our servers and navigate the the page.
5. If there are no errors, we should see our page!! (If there are some errors, this is a good observation of how we would debug between the MVC framework and error messages provided by Rails.

## File Structure
- Each model is a single file in the ‘models’ folder
- Each controller is a single file in the ‘controllers’ folder
- All views associated with actions for a single controller are put into a folder that corresponds to the name of the controller (eg: PostsController!‘posts’) and each view file name should match up with the controller action (eg: posts#show!show.html.erb)

## Gems

**Introduction**:

Gems are open source, pre-built functionality that you can integrate into your Rails app to give it additional functionality. One of the benefits of Rails is that it is a huge community with an abundance of high-quality, well-documented, well-maintened gems to help you with almost anything you need to build.

**Gemfile**: Include gems in your app by adding them to your Gemfile, using the syntax: `gem gem-name`.

### Extra Resources:
- https://www.ruby-toolbox.com/
- https://www.codeschool.com/courses/rails-for-zombies-redux (for learning more about routing)
- https://www.codeschool.com/courses/rails-for-zombies-redux (for learning more about views)
- http://guides.rubyonrails.org/routing.html
- http://guides.rubyonrails.org/routing.html#crud-verbs-and-actions
- http://guides.rubyonrails.org/form_helpers.html
- http://guides.rubyonrails.org/form_helpers.html

### Looking forward:

In our next lesson we'll put all of the pieces together.  We will be walking through our applications to connect all of our views, controllers and models for a fully functional (but not styled) blogging app.
