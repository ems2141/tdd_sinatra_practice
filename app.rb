require 'sinatra/base'

class App < Sinatra::Application
  TASKS_ARRAY =[]

  get '/' do
    erb :index
  end

  get '/tasks/new' do
    erb :new
  end

  post '/tasks' do
    TASKS_ARRAY << params[:task_name]
    erb :tasks
  end

  get '/tasks/:id' do

    erb :id
  end

end
