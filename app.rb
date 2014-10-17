require_relative 'config/environment'

class App < Sinatra::Base

  # this route is a GET request to our application. It will handle delivering the tweets
  get '/' do
    # first we need to instantiate a new instance of our TwitterConnection class
    connection = TwitterConnection.new 

    # we're calling the get_search_results method on that instance and assigning it to an instance variable. 
    @tweets = connection.get_search_results("flatironschool")

    # this instance variable can then be passed to our ERB template in views
    erb :tweets
  end
end