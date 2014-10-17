---
tags: sinatra, todo, twitter api, tutorial
languages: ruby
resources: 
---

# Sinatra Twitter Todo

We've already worked with [Rack to query the Twitter API](http://learn.flatironschool.com/lessons/1086) and get the latest @flatironschool tweets. Let's work through how to do the same thing with Sinatra. 

Go to each file sequentially and read the comments. They should guide you to the next file in the application's path. Below is the order of the application as well.

First, the Anatomy of a Basic Sinatra App

```bash
├── Gemfile
├── README.md
├── Rakefile
├── app.rb # where the routes live
├── config
│   └── environment.rb # project manifest where files are required
├── config.ru # after requiring all of the files, run App (app.rb)
├── models # classes and ActiveRecord models
├── public # front-end stuff
│   ├── images
│   ├── javascripts
│   └── stylesheets
├── spec # tests
│   ├── sinatra_twitter_todo_spec.rb
│   └── spec_helper.rb
└── views # template files that render HTML
```

Go through these files sequentially:

1. `models/twitter_connection.rb`
2. `app.rb`
3. `views/tweets.erb`
4. `config.ru`

Run `bundle` and then `rackup`. Then go to `http://localhost:9292` to see the tweets!

When you're done, run `rspec` and pass the one test.