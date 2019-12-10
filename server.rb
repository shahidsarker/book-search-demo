require 'sinatra'
require 'googlebooks'

get '/' do
  # render a form
  erb :index
end