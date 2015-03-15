---
tags: sinatra, todo, twitter api, tutorial
languages: ruby
resources: 4
---

# Sinatra Twitter Todo

We're going to use Sinatra to get the latest @flatironschool tweets.

Go to each file sequentially and read the comments. They should guide you to the next file in the application's path. Below is the order of the application as well.

First, the Anatomy of a Basic Sinatra App

```bash
├── Gemfile
├── README.md
├── Rakefile
├── app.rb # the main web server program
├── config
│   └── environment.rb # project manifest where files are required
├── config.ru # after requiring all of the files, this runs App (app.rb)
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

Go through these files sequentially and follow the comments:

1. `config/environment.rb`
2. `models/get_tweets.rb`
3. `app.rb`
4. `views/tweets.erb`
5. `config.ru`

Run `bundle` and then `rackup`. Then go to `http://localhost:9292` to see the tweets! Play around with getting tweets for other search queries, or, tweet @flatironschool and see your tweet! If you make any changes to the code, you'll need to restart the server and `rackup` again.

## Specs

There's one test, which should already be passing. Let's take a look at it:

```ruby
it "handles GET to '/'" do 
  get '/'
  expect(last_response).to be_ok
  expect(last_response.status).to eq(200)
end
```

We're using the Rack::Test module in our specs to make a get request to '/'. The tests expects the status response to be ok (aka, 200). Refer back to the [Status Codes](http://learn.flatironschool.com/admin/lessons/122) lesson.

In other words, what this test is expecting is that all of our code, from start to finish (our code in our GetTweets class, our get method in `app.rb`, and our rendering of data in our ERB file) results in an ok (200) response from our server.

## Resources

* [Sinatra Routes](http://www.sinatrarb.com/intro.html#Routes)
* [ERB Templates with Sinatra](http://www.sinatrarb.com/intro.html#Views%20/%20Templates)
* [Rack Middleware](http://www.sinatrarb.com/intro.html#Rack%20Middleware)
* [Rack::Test Module in Sinatra](http://www.sinatrarb.com/intro.html#Testing)
