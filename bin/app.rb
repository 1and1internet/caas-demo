require 'sinatra'

set :port, 8080
set :bind, '0.0.0.0'
set :views, "views"

get '/' do
  erb :index
end

get '/demo/' do
  greeting = params[:greeting] || "Hi There"
  erb :demo, :locals => {'greeting' => greeting}
end
