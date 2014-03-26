require 'sinatra/base'

class App < Sinatra::Application
  get '/' do
    erb :index
  end

  get '/tasks/new' do
    erb :new
  end

  post '/' do
    @task = params[:task_name]
    erb :index
  end

end
