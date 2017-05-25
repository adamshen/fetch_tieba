require 'sinatra'
require_relative '../tieba'

get '/' do
  erb :index
end