require 'sinatra/base'

class App < Sinatra::Application
  get '/' do
    erb :tasks
  end
end
