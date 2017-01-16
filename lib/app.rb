require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  'Hello!'
end

get '/secret' do
  'Secret stuff'
end

get '/otherstuff' do
  'Other stuff'
end

get '/cat' do
  erb(:index)
end
