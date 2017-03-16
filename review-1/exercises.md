# Review (HTML/CSS/RUBY/RAILS)

We have covered a lot of ground so far in this course. Today we'll be reviewing what we've learned by building a home page and touching up your blog. Time permitting, we'll also be going over the solution for the authorization homework using CanCanCan. I'll want you to do something called **pair programming** today. Team up with a partner sitting next to you to go through today's exercises. Don't be shy!

## Creating a new route/controller in Rails for our home page

Exercise 1:

**We need a new route/controller for our home page. It is not explicitly part of our posts, so it should be a separate concern. Generate a `home` controller using `$ rails g controller home`. This should also generate a view directory for home - add a file named index.html.erb in that directory and write 'HELLO WORLD' in it for a temporary identifier. Go into the controller file and add an index method. Remember, the controller method and the view filename should match.** *Hint: the index method should be empty.*

Exercise 2:

**Our application won't send users to our home page yet because we haven't assigned a route to it. We need to change our `root` route. Adjust it to point to your new controller's index action instead of `posts#index`. Let's test it out - try going to your site's base URL while LOGGED OUT. Hmmm... It doesn't work - we don't see HELLO WORLD. Why not?**

Exercise 3:

**Our authentication is blocking users from going anywhere on our site without an account. How can we allow them to view our lading page without creating/logging into an account? We need to make an exception for the home controller's `index` action. Add `skip_before_action :authenticate_user!, only: [:index]` to the second line of your home controller (inside of the class definition, but not inside of the index method). This will bypass the top-level before_action in our application controller and let users see our home page.**

Exercise 4:

**Let's add an HTML with some CSS and an image for our home page. Where do these files go?**

Exercise 5:

**Let's add a way for users to get back to our homepage. We can add a Bootstrap-styled button just outside of our sign up logic inside of our main nav element in our `application.html.erb` file that will show regardless of whether a user is signed in or not.** *Hint: follow the formatting for the other `link_to` links and use `root_path` as the path.*

Exercise 6:

**We don't want our blog's nav to be on our home page. How can we NOT display our blog's nav element when we're at our root path.** *Hint: we need to add some logic into our application.html.erb that determines if we're on our root page. We can use the following method to check: `current_page?(root_url)`. That method will provide us with a boolean value we can use in a conditional statement.*

Exercise 7:

**How do we get to the blog section of our website? Let's update the blog link that is currently pointing at `#contact`** *Hint: This is an ERB file so we can add some Rails logic into it. What would give us a proper PATH to our blog? This path exists in another part of our app already.*

## Touching up the blog

Exercise 1:

**The buttons we added have a displeasing font color scheme - this happens after they are clicked once and is a result of the `:visited` pseudo-selector. Your task is to find the CSS that is committing this crime and get rid of it.** *Hint: it is in the same place as where we got rid of the black box background on `:hover`.*

Exercise 2:

**The alert section above the nav bar has some spacing between it and the nav bar that doesn't look great. How can we get rid of that awkward white space?** *Hint: inspect the element and see what property is making this happen. You can play around with adjusting various attributes to see what might fix it. The solution is just one line of CSS on an existing class that overrides some Bootstrap styling.*

Exercise 3:

**Add nice Bootstrap buttons to all the links on your blog's post index. Look at how we made the nav bar buttons for log in / sign up.** *Bonus: use non-default stying on some of the buttons for added effect.*

Homework:

**Use your HTML/CSS skills to beautify your homepage. You can remove/add anything, add a new background picture etc. If you have time, use your Rails/Ruby skills to customize the blog section of your website.**
