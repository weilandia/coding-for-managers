# Git and Github

Git (local machine) and Github (online) form a powerful version control toolset that enables developers to have a record of and access to any iteration of the code they write. Github allows developers to store (host) repositories (directories / folders / collections of code) online where they can share code and review new code before it is combined (merged) into their main (production) code base. We’ll cover the basics of Git, Github, and how teams of developers use these tools to collaborate on their projects.

The basic functionality of Git allows developers to track specific versions of their codebase, coordinate collaboration, and revert to a previous version at any time (ex: an engineer's most recent change added a bug to her company's dashboard and she wants to return to the previous version of their code that was bug-free). Git also enables developers to interact with online platforms like Github and Heroku where they can share and host their codebase.

## Let's refresh our terminal commands

#### Navigating folders/directories:

- Visit your parent folder/directory: `$ cd ..`
- Go into a directory: `$ cd folder_name/child_folder_name`
- Go back to your home directory: `cd ~`
- Find out where in the directory structure you are: `$ pwd`
- See what's inside a directory: `$ ls` or `$ ls directory_name`

#### Shortcuts

- Go to beginning of line: `control + a`
- Go to end of line: `control + e`
- Erase line: `control + k`

## Getting started with Git

- Let's create a new project in Cloud 9
- Erase all the generated files in your directory
- Check to see if git is installed `$ git --version`
- Create a git repository: `$ git init`
- Create a file `$ touch hello.rb`
- Write your first line of Ruby in hello.rb: `puts "hello world!"`

**Exercise: use the command `ruby` to run `hello.rb`. Similar to other commands, the syntax is `<command> <filename>`**
- Check out the status of your git repository: `$ git status`

## Staging and committing

- Stage all of the files in your folder to be included in your first commit: `$ git add .`
- Staging is useful because you control what will be locked into the commit
- To add individual files: `$ git add file_name`
- Make your first commit: `$ git commit -m “Some descriptive notes surrounded by quotation marks"`
- See Whiteboard for further description

**Exercise: change your hello.rb file on your own or by adding the lines below and run the code**
```ruby
  gift = [
          "half of a leftover burrito",
          "a day-old cup of coffee",
          "a tesla",
          "a life-size quadrocopter",
          "a slice of stale wedding cake",
          "a medium-sized island off the coast of Sumatra",
          "a visual prosthesis",
         ]
  puts "All I got for valentine's day was #{gift.sample}."
```

**Exercise: check the status of the repo. Then stage it. Finally, commit it.**
- See Whiteboard for further description
- Use `$ git log` to look back at the history of this branch

## Branching

- Make a new branch with `$ git branch -c the-branch-will-be-named-whatever-you-type-here-no-spaces-use-hypens-plz`

**Exercise: modify the new branch by adding your own gift to the list or by creating another file. Stage it. Commit it.**
- See Whiteboard for further description
- Look back at the history of the new branch
- Switch branches using `$ git checkout master`. Look back at the history. Is it the same?

## Merging
- On your master branch, merge our other branch `$ git merge the-branch-you-named`
- What does fast-forward mean?
- See Whiteboard for further description


## Resetting

- Stash any uncommitted changes: `$ git stash`
- See a list of past commits: `$ git log`
- Revert to a past commit: `$ git reset --hard [#SHA-1 Hash ###]`

## Interacting with remote repos using Github:

Github is a platform that enables developers to store their codebase online, review developers’ code branches, and share feedback and error shooting before it’s integrated in the full code base. Similar to Git, it stores a full-history of any changes made over the codebase life cycle, creating a safeguard as the number of developers working with the codebase increases over time and your codebase grows in complexity.

#### Linking your local Git repository with your Github repository

- Visit your Github page and create a new repo with a name like `my-website`
- Copy the “HTTPS Clone URL”. Enter `$ git clone [git clone url]` in tour terminal on Cloud 9

**Exercise: Copy the “HTTPS Clone URL”. Enter `$ git clone [git clone url]` in tour terminal on Cloud 9. Enter the your directory using `cd` and then add a new file to the empty repo and make your first commit.**
- See your remote by typing `git remote -v`
- Push your first commit to github: `$ git push origin master`
- View your code on github

#### Pull Requests: Screening your developments before releasing your code

- Let’s create a new branch where we’ll make some new changes that we’ll review before integrating into our master code base: `$ git checkout -b [your-branch-name]`
- Make some changes to your code
- Stage your changes for your commit
- Commit your changes
- Push your branch and new commit to github: `$ git push origin [your-branch-name]`
- Visit your github repo. You should see that your Github registered your pushing a new branch. Go ahead and click ‘Compare & pull request’ to submit a request to merge your code changes into your master code base. Don’t forget to include a message so that others know why they should include your changes.
- Once your pull request is open, go ahead and merge your code to the master code base.
- Problem, when we visit gh-pages, we still see the old version of your code. To update gh-pages, in the terminal, lets return to our master branch (`$ git checkout master`), pull the latest master version from github to our local repository (`$ git pull`), checkout out gh-pages branch (`$ git checkout gh-pages`), merge the updated master code-base into our gh-pages branch (`$ git merge master`), and, finally, push that updated gh-pages branch commit to github (`$ git push`)
- Visit your github gh-pages vanity url and you should see those newly made changes

## Extra Practice

- https://www.codecademy.com/learn/learn-git
- https://www.codeschool.com/courses/git-real
- http://rogerdudler.github.io/git-guide/
- https://guides.github.com/
