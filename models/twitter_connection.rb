# This class handles connecting to the Twitter API. In Rack Todo, this lived in app.rb. Here's we've abstracted it out into it's own class. 

# Our Gemfile has the twitter gem and config/environment requires it.

# We're going to rack this up as middleware in config.ru.

class TwitterConnection
  TWITTER = Twitter::REST::Client.new do |config|
    config.consumer_key = "9vahfyWzOnjJxj83SJxROQ"
    config.consumer_secret = "aYCt7k10fYf4svlSNz9oP7GbFi1QYPnUdvpOZpjgwYM"
    config.access_token = "2085091-QdSttXlwq50BXqOUrNmd2zIPdQyxP873TzzsKhW8k"
    config.access_token_secret = "MxwEh2JRvmHBYcMfsFv3o0MYhMx2yM77tVABftVboAE"
  end

  def get_search_results(handle)
    twitter_search_results = []
    TWITTER.search(handle).each do |tweet|
      # we're saving the tweet user's name and the tweet text in an array of arrays
      twitter_search_results << [tweet.user.name, tweet.text]
    end
    twitter_search_results
  end

end