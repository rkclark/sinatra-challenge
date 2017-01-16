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

get '/random-cat' do
  @name = ['bob', 'bill','donald','obama'].sample
  erb(:index)
end

get '/named-cat' do
  p params
  p request.body
  p request.query_string
  erb(:cat_form)
end

post '/named-cat' do
  p params
  p request.body
  p request.query_string
  @name = params[:name]
  erb(:index)
end
