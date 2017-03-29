# Review (JS/JQUERY/APIs)

At the end of the day, programming is about storing, fetching, manipulating and presenting data. With JS/jQuery, we learned about manipulating and presenting data to our users. With APIs we learned about fetching data from an external server and from our own server. Today we'll be extending this knowledge by handling user input, interacting with the HTML `<form>` API

## Giving life to your form

Exercise 1:

**Currently, the form on our homepage doesn't do anything when you press `submit`. That's pretty useless. A form like this is a powerful tool for gathering user input - if you choose to, you can send the user's repsonse to you server, analyze his/her input and perform a certain action depending on what he/she wrote. We're going to do something simpler, but still very useful - we're going to send the form data to your email! Use the following code snippet to get started - use it to replace the existing form on you landing page:** 

```html
<div id="contact">
  <h2 class="contact-title">Contact Me</h2>
  <form id="contact_me" action="https://formspree.io/your@email.com" method="POST">
    <input required="required" type="text" name="name" placeholder="Your name"/>
    <input required="required" type="email" name="_replyto" placeholder="Your email">
    <textarea required="required" placeholder="I'd love to hear from you - send me a message!"></textarea>
    <input class="submit-button" type="submit" value="Send">
  </form>
</div>
```

**You may also want to prettify your form a bit. You can do that with the following CSS:**

```css
#contact_me {
  display: flex;
  flex-direction: column;
  height: 240px;
  justify-content: space-between;
  width: 300px;
  margin: 0 auto;
}

#contact_me input{
  width: 100%;
  height:30px;
  font-size: 15px;
  border:1px solid grey;
  border-radius: 3px;
  color:black;
}

#contact_me textarea {
  width: 100%;
  height: 100px;
  font-size: 15px;
  border: 1px solid grey;
  border-radius:3px;
  color:black;
}
```

**Let's activate Formspree and test it out!**

Exercise 2:

**Create a thank-you page for your user to see after they submit your form. This requires the creation of a new view (I would name it `thanks.html.erb` and put it under the `home` views directory), a new `HomeController` method. You must also create a custom route for the thank-you page. For now, the page should be very simple - it shoud thank the user and offer him/her a link back to your home/landing (*hint: `root`*) page. If you are feeling extra clever, you can use a JavaScript `setTimeout` to automatically send the user back to your root page. Add `<input type="hidden" name="_next" value="https://name-of-your-workspace.c9users.io/thanks"/>` into your form. This will tell Formspree that you want to direct your user to a certain page after the submission succeeds.**

Exercise 3:

**The blog still doesn't look super great, especially the post index page. Let's make it look much nicer. First, in your `posts/index.html.erb` file, let's display each post's author's `email` instead of his/her `user_id`. Let's get rid of displaying the category right now since we haven't implemented it yet and it is taking up valuable room. Let's also get rid of the table header `<thead>` and rename the `<h1>` heading to `Posts`. If you haven't done so already, let's make the `show`, `edit`, `destroy` buttons into Bootstrap buttons. Also rename `destroy` to `delete` to sound less violent.** 

Exercise 4:

**Let's add a quick favoriting system to the blog entries. Bootstrap comes with a nice [icon set](http://getbootstrap.com/components/#glyphicons) that can be accessed using CSS. Create a new `<td>` at the beginning of the `<tr>` and inside of that, create an empty `<div>`. Then let's give that div the following classes: `glyphicon glyphicon-star-empty favorite`. Great! You should see an empty star displayed next to each of your posts. Now let's bring it to life using JavaScript! Find your `home.coffee` file and rename it `home.js`, making sure to comment out the first three lines using `//` or by highlighting that content and pressing `command /`. In this file, set up a jQuery click** 


*Hint: the index method should be empty.*

Homework:

**Use your HTML/CSS skills to beautify your homepage. You can remove/add anything, add a new background picture etc. If you have time, use your Rails/Ruby skills to customize the blog section of your website.**
