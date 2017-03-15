# Review (HTML/CSS/GIT/RUBY/RAILS)

We have covered a lot of ground so far in this course. Today we'll be building a landing page for your blog, adding your rails app into source control, and touching up your blog. Time permitting, we'll also be going over the solution for the authorization homework using CanCanCan.

## Creating a new route/controller in Rails for our landing page

Exercise 1:

**We need a new route/controller for our landing page. It is not explicitly part of our posts, so it should be a separate concern. Generate a `home` controller using `$ rails g controller home`. This should also generate a view directory for home - add a file named index.html.erb in that directory and write 'HELLO WORLD' in it for a temporary identifier. Go into the controller file and add an index method. Remember, the controller method and the view filename should match.** *Hint: the index method should be empty.*

Exercise 2:

**We need to change our `root` route. Adjust it to point to your new controller's index action instead of `posts#index`. Let's test it out - try going to your site's base URL. It doesn't work - we don't see HELLO WORLD. Why not?**

Exercise 3:

**Our authentication is blocking users from going anywhere on our site without an account. How can we allow them to view our lading page without creating/logging into an account? We need to make an exception for the home controller's `index` action. Add `skip_before_action :authenticate_user!, only: [:index]` to the second line of your home controller. This will bypass the top-level before_action in our application controller and let users see our landing page.**

Exercise 4:

**We need to change our `root` route. Adjust it to point to your new controller's index action instead of `posts#index`.**

Exercise 5:
**Let's add a way for users to get back to our homepage. We can add a Bootstrap-styled button just outside of our sign up logic in our `application.html.erb` file that will show regardless of whether a user is signed in or not.** *Hint: follow the formatting for the other `link_to` links and use `root_path` as the path.* 

Exercise 6:
**We don't want our blog's nav .** *Hint: follow the formatting for the other `link_to` links and use `root_path` as the path.* 

## Touching up the blog

Exercise 1:

**The buttons we added have a displeasing font color scheme - this happens after they are clicked once and is a result of the `:visited` pseudo-selector. Your task is to find the CSS that is committing this crime and get rid of it.** *Hint: it is in the same place as where we got rid of the black box background on `:hover`.*

Exercise 2:

**The alert section above the nav bar has some spacing between it and the nav bar that doesn't look great. How can we get rid of that awkward white space?** *Hint: inspect the element and see what property is making this happen. You can play around with adjusting various attributes to see what might fix it. The solution is just one line of CSS on an existing class that overrides some Bootstrap styling.*

Exercise 3:

**Add nice Bootstrap buttons to all the links on your blog's post index. Look at how we made the nav bar buttons for log in / sign up.** *Bonus: use non-default stying on some of the buttons for added effect.*