# Intro to Rails

## What is Rails?
Rails is an open-source Model View Controller (MVC) framework that is built in Ruby. It does the hard work of designing the configurations and file structure you need to build your app. Rails includes a vast source of helper methods and functionally that speed up your web development process. On top of that, Rails integrates with ‘gems’ (similar to JavaScript libraries), which allow you to integrate additional functionality into your app, without building it yourself. Given the size of the Rails community, there is a high-quality, well-maintaned gem for almost any functionality you’d like to build.


## What you will learn in this course
* Learn what Rails is
* Become familiar with the docs
* Start a New Rails Project
* Manipulate the Models through Active Record


## Rails MVC Structure

From the inside out...

**Schema & Database:** The schema represents the structures for the models that you’ll have stored in the database.
• In our blog app for example, one database model we’ll need is a post. The components of a blog post include a title, image, image caption, intro and body.

**Model:** Is your gateway for interacting with objects and classes in your database. Here’s where you have methods that interact with your objects/classes and ensure (‘validate’) that all the necessary information has been associated with your object (eg: a post has a title).

**Controller:** Establish the logic that is applied to a specific page. For example, fetching the proper blog post to be displayed when someone visits that blog url.

**View:** Represent the page that a visitor sees.


## 4.1 Schema & Database

Rails 4 Data Types:
```rb      
:binary
:boolean
:date
:datetime
:decimal
:float
:integer
:primary_key
:references
:string
:text
:time
:timestamp
```
[float vs decimal](http://stackoverflow.com/questions/8514167/float-vs-decimal-in-activerecord)

In the case of our blog post, we want to have:

```rb
- title:string
- body:text
- user_id:integer
- category_id:integer
```

### Adding new models and migrating them into your database
Let's go ahead and create a new workspace in Cloud 9, using a Ruby On Rails workspace.  Name it whatever you'd like

• Creating a new model:
`$ rails generate model Post title:string body:text`

• Migrating your changes into the database: When you create a new model or make additions, you’ll see that a new ‘migration’ file is added to the bottom of your db/migrate folder. They represent a blueprint for the change you’d like to make, but haven’t yet been persisted into your database. In order to make those changes in your database, you’ll have to run the command: `$ rake db:migrate`

• Destroying a new model:
`$ rails destroy model Post`

**In-Class Exercise: Create the table for your blog posts in your database. It should have the following attributes: a `title`, a `body`, a `user_id` and a `category_id`**

• More on database migrations: http://guides.rubyonrails.org/v3.2.21/migrations.html

<details><summary>Solution:</summary>
- Open a new terminal window in C9
-Run this command:
```rb
$ rails generate model Post title:string body:text user_id:integer category_id:integer
```
-If successful, you should see a response like this:
```bash
Running via Spring preloader in process 2834
      invoke  active_record
      create    db/migrate/20161130151329_create_posts.rb
      create    app/models/post.rb
      invoke    test_unit
      create      test/models/post_test.rb
      create      test/fixtures/posts.yml
```
</details>

• Adding data attributes to an existing model:
`$ rails generate migration AddSubTitleToPosts subtitle:string`

## 4.2 Active Record Interface

ActiveRecord is an API (aka: ‘system’) that allows you to interact between your models and database objects. It makes the process of fetching multiple database objects (eg: all users, or most recent posts) as well as creating, updating, and deleting individual objects simple and straightforward. It also produces detailed error statements that enable you to debug errors in your system.


**Naming:** models in activerecord are uppercase and singular: eg: Post or User. There active record models refer to lowercase plural database tables. `Post => posts, User =>users`.


**CRUD:** (create, read, update, delete) represent the 4 main operations that you’ll run on data.

• Create: Adds a new object to your database.
- `Post.create(title: "My First Blog Post", body: "lots of blog content")`
- An alternative to the create method, is to create a blank new User object and then set their attributes and then save the object. NOTE: if you forget to save the object, it won’t be added to the database:
```rb
  my_first_post = Post.new
  my_first_post.title = "My First Blog Post"
  my_first_post.body = "lots of blog content"
  my_first_post.save!
```
**In-Class Exercise: Using your rails console, create and save three blog posts.**


<details><summary>Solution:</summary>
- Follow this format when creating a new blogpost:

```ruby
  my_first_post = Post.new
  my_first_post.title = "My second post"
  my_first_post.body = "This is the body of my second post"
  my_first_post.save!
```

- When successful you should see something similar to this:
```ruby
2.3.0 :023 > my_second_post.save!
   (0.3ms)  begin transaction
  SQL (0.8ms)  INSERT INTO "posts" ("title", "body", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["title", "My second post"], ["body", "This is the body of my second post"], ["created_at", "2016-11-30 15:40:11.660606"], ["updated_at", "2016-11-30 15:40:11.660606"]]
   (10.5ms)  commit transaction
 => true
```
</details>


• Read aka ‘Query’: ActiveRecords’ read operations allow you to fetch one or more objects of a certain type from your database.

- NOTE: The syntax used for ActiveRecord record query syntax mirrors that of the array methods that we learned when studying Ruby. Common queries would include `.first`, `.last`, etc.

- Common ActiveRecord Queries:
    - Get all posts: `Post.all`
    - Get the first post: `Post.first`
    - Count the number of posts: `Post.count`
    - Get the last post: `Post.last`
    - Get ten posts: `Post.all.limit(10)`
    - Get posts that have the title of "My first post": `Post.where(title: "My first post")`

For more information on database migrations, check out: http://guides.rubyonrails.org/v3.2.21/migrations.html
For a full list of ActiveRecord Queries, visit: http://guides.rubyonrails.org/active_record_querying.html

- Update: 2 common ways of updating an object include the following:

  `my_first_post = Post.find(id)`

- How to update (and save) one or multiple attribute using a single method:

  `my_first_post.update(body: "revamped body...")`

You can use `.update` or `.update_attributes` to update ONE or MULTIPLE attributes.

  `my_first_post.update_attributes(body: "revamped body...")`
  `my_first_post.update(body: "revamped body...", title: "new title...")`

- Delete: Use the `.destroy` method to delete an object from your database. However, we will use this sparingly. We will want most data to persist in our DB for later analysis.

  `my_first_post.destroy`


**In-Class Exercise: Access your second blog post. Update its two attributes and save it.**


<details><summary>Solution:</summary>
- Use this format for multiple attributes:
```ruby
my_second_post.update_attributes({title: "newest title", body: "a newest body"})
```

-If successful you should get this output:
```ruby
   (0.2ms)  begin transaction
  SQL (0.5ms)  UPDATE "posts" SET "title" = ?, "intro" = ?, "body" = ?, "updated_at" = ? WHERE "posts"."id" = ?  [["title", "newest title"], ["body", "a newest body"], ["updated_at", "2016-11-30 15:51:11.623844"], ["id", 2]]
   (12.0ms)  commit transaction
 => true
```
Don't forget to SAVE your variable in the database before updating it, otherwise you will have a "rollback transaction"

</details>


## 4.3 Models

##### Validation

**Validations:** The model allows you to ensure that all of the data that you want for a particular object is present. For example, for our Post model, we might want to require a title and body while leaving other attributes optional.

```rb
class Post < ActiveRecord::Base
  validates :title, :body, presence: true
end
```

**In-Class Exercise: After adding our validations, try creating a new post without the required attributes.**


<details><summary>Solution:</summary>

```rb
  result `Post.create(title: "this post will have no body!")`
  puts result
  posts_found = Post.where(title: "this post will have no body!")
  posts_found
```

NOTE: if you use the update_attributes method, along with updating the object, it will also return a boolean that reports on whether or not the model was able to save to the database. This will be incredibly helpful when you want to update records (eg: a user wants to update his/her account information) to send the client a success/failure message.

</details>


**Associations:** The model allows you to outline how your model is associated with other models. For example in the case of our post, we included a user_id attribute.

**belongs_to:** By stating that our Post model ‘belongs_to’ the User model we can now access the associated user who published a particular post by entering: my_post_name.user

**has_many:** In order to complete the linkage between a Post and User we need to outline what type of association a Post has within the User model. One user can published many posts, we can therefore add a `has_many :posts` association to the user object. This allows us to easily access all of the posts that have been published by entering: `my_user.posts`

##### Instance Methods:

Instance methods are methods that are invoked on a single instance of a model. In the case of posts, an instance method would be invoked on a single blog post (eg: `my_post.next_post`)

```ruby
class Post < ActiveRecord::Base
  validates :title, :body, presence: true

  def length_of_post
    self.title.length + self.body.length
  end
end
```

##### Class Methods:
Class methods are invoked on a model at the class level. For example, if we wanted to get all posts that have been published, we could use the ‘published’ class method: Post.published . If you would like to deepen your knowledge of class methods, read up on scopes (which allow you to create class methods that are re-usable active-record queries, eg: Post.published_in_the_past_week) : http://api.rubyonrails.org/classes/ActiveRecord/Scoping/Named/ClassMethods.html

```ruby
class Post < ActiveRecord::Base
  validates :title, :body, presence: true

  def self.published
    Post.where("published_at IS NOT NULL")
  end
end
```

**EXTRA RESOURCES:**
 1. Read Rails Sections 4.1 – 4.4 below
 2. Learning About Rails - ActiveRecord:
   • Read this articles: http://edgeguides.rubyonrails.org/active_record_basics.html
   • Watch Rails Zombie Video and do its Exercise on ActiveRecord Queries:
     http://railsforzombies.org/levels/1
 3. Learn About Models
   • Watch Rails Zombie Video and do its Exercise on Models: http://railsforzombies.org/levels/2

##### Looking Forward:
In the upcoming lesson we will begin to incorporate controllers and views into our Rails application.
