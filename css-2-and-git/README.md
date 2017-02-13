# CSS Part 2

Open up our previous Cloud 9 Workspace and finish creating our flex box Blog. Which classes/ids needed to be applied to which elements?

How do we position certain elements in specific places? Let's do some more practice and get you familiar with css positioning.

**go to [CSS Exercises](css_exercises)**

1) Box Positioning

2) Computer Gallery

3) Astronaut

After the exercises, we're going to be remaking our landing page from the HTML section because it's super bare-bones.

### Cross-Browser Compatability
Making sure a site displays properly across different platforms can be a major headache for developers. To mitigate this, we test on multiple devices/browsers and use CSS browser prefixes to add support for CSS features before they are natively supported by the browser.

Prefixes:  
Android: `-webkit-`  
Chrome: `-webkit-`  
Firefox: `-moz-`  
Internet Explorer: `-ms-`  
iOS: `-webkit-`

[This css auto-prefixer tool can make your life easier.](http://pleeease.io/play/)

*Exercise: run your css through the auto-prefixer, save the new CSS and then view in another browser*

#### Head Meta-tags:

Add this to the head of your file to let your mobile browser know your site is optimized for mobile:

```html
<meta name="viewport" content="width=device-width, initial-scale=1">
```

# Git and Github

## Pre-work:

Read up on the basics of git: http://git-scm.com/book/en/v2/Getting-Started-Git-Basics

## Introduction:

The combination of Git (on your local computer) and Github (online) is a powerful toolset that enables developers to have a record and access to any versions of the code they create. Github allows developers to have a single repository online where they can share code and review new code before it is merged into their production code base. We’ll cover the basics of Git, Github, and how teams of developers use these tools to collaborate on their projects.


The basic functionality of git allows developers to track specific versions of their code-base, and revert to a previous version at any time (say, their most recent changes broke their system and they wanted to return to the previous version of their code). Git also enables developers to interact with online platforms like Github and Heroku where they can share and host their codebase.

## Navigating your file structure using your Terminal

#### Traversing your file structure using your terminal:

- Visiting your nearest parent folder: `$ cd ..`
- Traversing downwards: `$ cd folder_name/child_folder_name`
- Going back to your roots: `cd ~`

#### Orienting yourself within your file structure:

- Where am I?: `$ pwd`
- What’s inside this folder: `$ ls`

#### Shortcuts

- Auto complete `(file/folder name): tab`
- Go to beginning of line: `control + a`
- Go to end of line: `control + e`
- Erase line: `control + k`


## Getting started with Git

- https://try.github.io/levels/1/challenges/1
- Create a git repository: `$ git init`
- Check out the status of your git repository: `$ git status`
- Stage all of the files in your folder to be included in your first commit: `$ git add -A (to add individual files: `$ git add file_name`)`
- Make your first commit: `$ git commit -m “Some notes on your first commit"`

#### Reverting to past commits

- Discarding any uncommitted changes: `$ git reset --hard HEAD`
- See a list of past commits: `$ git log`
- Revert to a past commit: `$ git reset --hard [#shah ###]`

#### Creating and Merging Branches

- Creating a new branch: `$ git checkout –b [branch-name]`
- Moving between branches: `$ git checkout [branch-name]`
- Merging a new branch with your master code: `$ git merge [branch-name] [branch-to-merge-into]`
- Navigate into your master branch: `$ git checkout master`
- Merge your newly committed changes from your branch into master: `$ git merge [branch-name]`

## Github:

Github is a platform that enables developers to store their codebase online, review developers’ code branches, and share feedback and error shooting before it’s integrated in the full code base. Similar to Git, it stores a full-history of any changes made over the codebase life cycle, creating a safeguard as the number of developers working with the codebase increases over time and your codebase grows in complexity.

#### Linking your local Git repository with your Github repository

- Visit your Github repository and copy the “HTTPS Clone URL”. Enter `$ git clone [git clone url]`
- Go to your terminal, navigate to your blog file and link your git repo with your github repository: `$ git remote add origin [your HTTPS Cloned URL]`
- Now that your repos are linked, push your first commit to github: `$ git push -u origin master`

#### Git’s Branch Structure

- Create a new gh-pages branch in your terminal’s blog git repo: `$ git checkout -b gh-pages`
- Push your blog’s git repo to the gh-pages branch of your github repository: `$ git push -u origin ph-pages`
- View your code at: http://[your-github-username].github.io/[your-blog-file-name]/

#### Pull Requests: Screening your developments before releasing your code

- Let’s create a new branch where we’ll make some new changes that we’ll review before integrating into our master code base: `$ git checkout -b [your-branch-name]`
- Go ahead, make some changes to your code
- Stage your changes for your commit: `$ git add -A`
- Commit your changes: `$ git commit -m “A message about your changes”`
- Push your branch and new commit to github: `$ git push -u origin [your-branch-name]`
- Visit your github repo. You should see that your Github registered your pushing a new branch. Go ahead and click ‘Compare & pull request’ to submit a request to merge your code changes into your master code base. Don’t forget to include a message so that others know why they should include your changes.
- Once your pull request is open, go ahead and merge your code to the master code base.
- Problem, when we visit gh-pages, we still see the old version of your code. To update gh-pages, in the terminal, lets return to our master branch (`$ git checkout master`), pull the latest master version from github to our local repository (`$ git pull`), checkout out gh-pages branch (`$ git checkout gh-pages`), merge the updated master code-base into our gh-pages branch (`$ git merge master`), and, finally, push that updated gh-pages branch commit to github (`$ git push`)
- Visit your github gh-pages vanity url and you should see those newly made changes

## Extra Practice

- https://www.codecademy.com/learn/learn-git
- https://www.codeschool.com/courses/git-real
- http://rogerdudler.github.io/git-guide/
- https://guides.github.com/
