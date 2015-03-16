# This class handles connecting to the Twitter API. In Rack Todo, this lived in app.rb. Here's we've abstracted it out into its own class. This class we will then initialize in app.rb.

# Our Gemfile has the twitter gem and config/environment requires it through Bundler.

class GetTweets
  attr_reader :handle

  def initialize(handle)
    @handle = handle
  end

  TWITTER = Twitter::REST::Client.new do |config|
    # go to https://dev.twitter.com/apps and create your own twitter app. Then grab your keys and replace these ones
    config.consumer_key = "v15lmmPWyPa44dtIQKgQdOXgv"
    config.consumer_secret = "1AwKIXp9RbALkguJBb78cVUDZ1A1wiAtdXkiIycEJYJDWFWR1P"
    config.access_token = "184686593-dOkZohtcG6eW4wNRAOuWQQd4ZmkHRMRv76LcUUlQ"
    config.access_token_secret = "VYnXg2W9FoySJ1kaZ40DDcwgKRdnKDNnAwkCkDynPD721"
  end

  def get_search_results
    twitter_search_results = []
    TWITTER.search(handle).each do |tweet|
      # we're saving the tweet user's name and the tweet text in an array of arrays
      twitter_search_results << [tweet.user.name, tweet.text]
    end
    twitter_search_results
  end

end
