# Deploying to Heroku with Git, Rails & Postgres

Deployment is generally the last stage of development (after thorough testing) and creates/replaces your public production application with a new version of your app. Deployment involves not only transferring new code to a live server, but also configuring that server to deal with your files and run your application. In the simplest terms, this means telling the server what files to execute when it receives an incoming request. Luckily, Heroku does almost all of this configuration for us.

## Add Source Control

1. Run `git init` on the command line to add source control to your project. We don't want to make our first commit yet since there are some secrets / API keys we don't want to share with the rest of the world.

2. Sign up for a <a href="https://www.heroku.com" target="_blank">Heroku account</a>.

## Create Your Heroku App

  1. Add a new app using the heroku toolbelt command. In the Terminal, from your project's root directory, run:
  *If you don't supply a name for your app, Heroku will create a random one for you. The name must be unique across all of Heroku and the command line interface will tell you if the name you want is already taken. It's generally a good idea to give your app a name to personalize it and reflect its purpose.*

```s
$ heroku create YOUR_APP_NAME
```

2. Let's check the status of our remote repositories:

```s
$ git remote -v
```

You should see something like this:

```s
$ heroku	https://git.heroku.com/YOUR_APP_NAME.git (fetch)
$ heroku	https://git.heroku.com/YOUR_APP_NAME.git (push)
```

## Prepare Your App for Deploy I: Update the `Gemfile`

1. SQLite3 was not meant to be used in production and Heroku doesn't support it. We're going to be adding a different SQL database, Postgres, to our project. Postgres is more robust, more scalable, and is supported by Heroku.

  * first, move the `gem 'sqlite3'` into the `group :development` section. This will ensure that we only use SQLite3 when we're in the development environment (on your local machine or on Cloud9) The section should now look like this:
  ```ruby
  group :development do
    # Access an IRB console on exception pages or by using <%= console %> in views
    gem 'web-console', '~> 2.0'

    # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
    gem 'spring'
    # Use sqlite3 as the database for Active Record
    gem 'sqlite3'
  end
  ```
  * second, create a `group :production` section and add in the Postgres gem `gem 'pg'`:
  ```ruby
  group :production do
    gem 'pg'
  end
  ```

2. Ideally, Rails does not serve up assets. That heavy lifting should be delegated to a CDN. But in our case, we need to tell Rails to serve up our JS/CSS/Images directly from our server. We'll use the `rails_12factor` gem.
  
  * add the gem `rails_12factor` into the `group :production` section:
  ```ruby
  group :production do
    gem 'pg'
    gem 'rails_12factor'
  end
  ```


3. Run this command in your Terminal to bundle install:

  ```sh
  $ bundle install
  ```

## Prepare Your App for Deploy II: Update your database config

1. Open `database.yml` (search for the file using `cmd p`)
2. Now we need to update our `production` settings to use Postgres. Your production config should look like the following:

```rb
production:
  adapter: postgresql
  database: my_database_production
  pool: 5
  timeout: 5000
``` 

## Prepare Your App for Deploy III: Assets, ENV
  1. We need to use a special Rails image helper for our langing page image. Add the following css rule inside of the `.background-image` selector.
  ```css
    background-image: image_url("generic_background.jpg");
  ```

  2. Copy and remove your ENV variable for Dark Sky that is currently in `development.rb`. This is especially important if we're putting this code into github where it can be seen by the public.

  3. In Cloud9, set the ENV variable on the cloud9 server by executing the following command:

  ```s
  $ echo "export DARK_SKY_API_KEY=yourDarkSkyAPIKey" >> ~/.profile
  ```

  4. In the Heroku app web console, go to you app and click on the settings tab. There you will find a button that says `Reveal Config Vars`. Click on that and enter `DARK_SKY_API_KEY` as a key and your API key as the value.

## Prepare Your App for Deploy IV: Personalize Generic Items
  1. This website will be live for the public to view (if they have a link). All places with {your name here} or something similar should have real content instead of placeholder material. One generic item might be the title of your site that gets shown in the browser tab. Replace that with something more meaningful.

## Prepare Your App for Deploy V: Put your code on Github

1. Go to github.com and log in. Create a new repository with a blog-worthy name. Leave all the defaults and click on `Create Repository`. On the next screen, copy the HTTPS link.

2. Back in Cloud9, enter the following command in the terminal: `git remote add origin https://github.com/yourname/your-repo-name.git`

3. To confirm this worked, try `git remote -v` and you should see two new entries.

4. Run `git add .` to stage all the files in your app that aren't excluded in the `.gitignore` file.

5. Run `git commit -m "initial commit"` to commit or freeze that version of all the files into source control.

6. Push your code to github by entering the following command: `git push origin master`

## Deploy to Heroku

1. You should be all set up now, so add and commit your new changes, then push to Heroku:

```s
$ git status
$ git add .
$ git commit -m "update for initial deploy"
```

2. Push to Heroku:
```s
$ git push heroku master
```

3. Hold onto your seat, grab some popcorn, and watch the deploy sequence (you'll need to complete steps 4 and 5 for the .

Your Terminal output should look something like this (but a little longer):

```s
Initializing repository, done.
Counting objects: 64, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (53/53), done.
Writing objects: 100% (64/64), 14.57 KiB | 0 bytes/s, done.
Total 64 (delta 5), reused 0 (delta 0)

-----> Ruby app detected
-----> Compiling Ruby/Rails
-----> Using Ruby version: ruby-2.0.0
-----> Installing dependencies using 1.5.2
        New app detected loading default bundler cache
        Running: bundle install --without development:test --path vendor/bundle --binstubs vendor/bundle/bin -j4 --deployment
        Fetching gem metadata from https://rubygems.org/..........
        Fetching additional metadata from https://rubygems.org/..
        Using i18n (0.6.9)
        .
        .
        .
        Installing sass-rails (4.0.3)
        Installing rails (4.0.4)
        Your bundle is complete!
        Gems in the groups development and test were not installed.
        It was installed into ./vendor/bundle
        Bundle completed (11.82s)
        Cleaning up the bundler cache.
-----> Writing config/database.yml to read from DATABASE_URL
-----> Preparing app for Rails asset pipeline
        Running: rake assets:precompile
        I, [2014-05-02T18:02:09.672047 #732]  INFO -- : Writing /tmp/build_625a98e6-1b9e-4e57-ba48-8f9cd7bf7d18/public/assets/application-c8d048bf2b32f85ef4807549fa44b21b.js
        I, [2014-05-02T18:02:09.694428 #732]  INFO -- : Writing /tmp/build_625a98e6-1b9e-4e57-ba48-8f9cd7bf7d18/public/assets/application-d0b54dd563966c42aad5fd85b1c1f713.css
        Asset precompilation completed (6.52s)
        Cleaning assets
        Running: rake assets:clean
-----> WARNINGS:
        Include 'rails_12factor' gem to enable all platform features
        See https://devcenter.heroku.com/articles/rails-integration-gems for more information.

-----> Compressing... done, 21.4MB
-----> Launching... done, v6
        http://thingsthingsthings.herokuapp.com/ deployed to Heroku

To git.heroku.com/YOUR_APP_NAME.git
  * [new branch]      master -> master
```

4. run `$ heroku run rake db:migrate` to migrate the database onto the production Postgres database

5. run `$ heroku info` to see the URL of your deployed app. Go check it out!


## Debugging

When visiting your deployed app for the first time, you may experiece an error or two.
1. If this happens to you, check your Heroku logs in the terminal:

  ```s
  $ heroku logs -t
  ```

2. Scan all of the logs for error messages. If you see obvious error messages, google what they mean. If you still can't find a solution, ask!


## Heroku Doc References

**Basic Heroku Rails, PostgreSQL Setup:**

* <a href="https://devcenter.heroku.com/articles/rails4" target="_blank">Rails 4 on Heroku</a>
* <a href="https://devcenter.heroku.com/articles/heroku-postgresql" target="_blank">Heroku Postgres</a>
* <a href="https://devcenter.heroku.com/articles/rake" target="_blank">Running Rake Commands</a>

**Adding Collaborators on Heroku:**

* <a href="https://devcenter.heroku.com/articles/sharing" target="_blank">Collaborating with Other Developers on Your App</a>

**Adding a Git Remote:**

Your Heroku collaborators should add the project's Heroku remote to their local git repositories.

*  <a href="https://help.github.com/articles/adding-a-remote/" target="_blank">Adding a remote (GitHub Help)</a>