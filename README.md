---
tags: sinatra, todo, twitter api, tutorial
languages: ruby
resources: 
---

# Sinatra Twitter Todo

We've already worked with [Rack to query the Twitter API](http://learn.flatironschool.com/lessons/1086) and get the latest @flatironschool tweets. Let's work through how to do the same thing with Sinatra. 

Go to each file sequentially and read the comments. They should guide you to the next file in the application's path. Below the order of operations as well.

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

Go through these sequentially:

1. `models/twitter_connection.rb`
2. `config.ru`
3. `app.rb`
4. `views/tweets.erb`

Run `rackup` to see the tweets!