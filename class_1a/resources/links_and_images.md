# Links and Images

### Links

* Why are links and images different than what we've covered so far?

* To start off, let's create a directory called ```links_and_images``` and add the following files:
  * ```all_the_links.html```
  * ```images.html```
  * ```other.html```

*How should we create these files?*

* Go into each of these new files and create an HTML5 base template (like we did before) and add a single <h1> that has the name of the file in *camelCase*

* A link element is made of of an *anchor* and an *href attribute*

* Let's create a link to the images page.

*What happens if a link doesn't have an href attr?*


### Absolute links, relative links, and root relative links

* Absolute links are the most detailed and include three parts:
  * Scheme
  * Domain
  * Path

*Create an absolute link to the Product School Website from our links page.*

* Relative links
  * Points to another file in your website OR another part of your application

*Create a directory inside of links_and_images and an html file within that directory.  Add a link from our links page to that file with text that says "LINK DOWN".*

*BONUS create a link from that file you just created to our links file with text that says "LINK UP".*

* Root relative links
  * Super useful
  * We cannot use our current website to learn about root relative links because we would need the root of our webserver to act as our root. The *root* is designated as "/"
  * We can, however, simulate this experience with the file structure in our workspaces via the command line!
  * We can treat "~" as "/"

*Why does this matter? Could we always use absolute links?*

*Why might root relative links be important in a web application?*

* What are link targets?
  * \_blank
  * More info: [Mozilla Developer Network](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a)

**A special rant about naming conventions and overall code organization**
1. Be obsessive. Consistent conventions make can prevent code from getting out of control.
2. Never put spaces in file names. *Try it and open that file in the browser*
3. There are a few different patterns for naming files depending on the file type. Regardless of those conventions (which we'll discuss as they come up) you're typically safe with one of the following:
 * Snake case
 * Camel case
 * hypens (kebab-case??)


### Images

* Image formats for the web
  *Match the qualities*
  * JPG/JPEG
  * GIF
  * PNG
  * SVG

  * Good for simple animations but not great for color.
  * Useful for opacity, but not great for size.
  * Large color palette without too much size. Good for photos.
  * Not pixel-based. All around awesome. Scales super well.

* Image elements are made up of an <img> tag and a *src* attribute.

```
<img src='path_to_file' />
```

*On your images page, add at least one image for each file format from the assets directory.  Include a heading with the format name and a paragraph that describes what the format is good for.*

*BONUS add another image that is not from our local directory, but instead from the web.*

* Image dimensions
  * We will discuss this more when we talk about CSS, but you can set the height and width of an image element directly on the element using attributes.

* Accessibility!
  * Text alternatives for images *alt attribute*
