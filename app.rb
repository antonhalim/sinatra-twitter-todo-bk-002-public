require_relative 'config/environment'

# this file is our main web server program. Sinatra has built in methods for HTTP methods (get, post, puts, delete) which the App class (we named it that; you can call it anything) gets from inheriting from Sinatra::Base.

# you can think of this file as the Controller of the Model/View/Controller (MVC) architecture: http://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller

class App < Sinatra::Base

  # this route is a GET request to our application. It will handle delivering the tweets
  get '/' do
    # first we need to instantiate a new instance of our GetTweets class
    connection = GetTweets.new("flatironschool")

    # we're calling the get_search_results method on that instance and assigning it to an instance variable. 
    @tweets = connection.get_search_results

    # this instance variable can then be passed to our ERB template in views
    erb :tweets
  end
end

# this class is then run in config.ru