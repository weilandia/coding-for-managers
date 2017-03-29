# Review (JS/JQUERY/APIs)

At the end of the day, programming is about storing, fetching, manipulating and presenting data. With JS/jQuery, we learned about manipulating and presenting data to our users. With APIs we learned about fetching data from an external server and from our own server. Today we'll be extending this knowledge by handling user input, interacting with the HTML `<form>` API

## Giving life to your form

Exercise 1:

**Currently, the form on our homepage doesn't do anything when you press `submit`. That's pretty useless. A form like this is a powerful tool for gathering user input - if you choose to, you can send the user's repsonse to you server, analyze his/her input and perform a certain action depending on what he/she wrote. We're going to do something simpler, but still very useful - we're going to send the form data to your email! Use the following code snippet to get started:** 

```html
<div id="contact">
  <h2 class="contact-title">Contact Me</h2>
  <form id="contact_me" action="https://formspree.io/your@email.com" method="POST">
    <input required="required" type="text" name="name" placeholder="Your name"/>
    <input required="required" type="email" name="_replyto" placeholder="Your email">
    <textarea required="required" placeholder="I'd love to hear from you - send me a message!"></textarea>
    <input type="hidden" name="_next" value="https://rails-redux-cdepman.c9users.io/thanks" />
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

Exercise 2:

**Create a thank-you page for your user to see after they submit your form. This requires the creation of a new view (I would name it `thanks.html.erb` and put it under the `home` views directory), a new `HomeController` method. You must also create a custom route for the thank-you page. For now, the page should be very simple - it shoud thank the user and offer him/her a link back to your home/landing (*hint: `root`*) page. If you are feeling extra clever, you can use a JavaScript `setTimeout` to automatically send the user back to your root page.** 

Exercise 3:

**The blog still doesn't look super great, especially the index page. Let's make it look much nicer.** 


*Hint: the index method should be empty.*

Homework:

**Use your HTML/CSS skills to beautify your homepage. You can remove/add anything, add a new background picture etc. If you have time, use your Rails/Ruby skills to customize the blog section of your website.**
