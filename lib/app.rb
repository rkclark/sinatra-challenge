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
  '<img src="http://f.cl.ly/items/0k0v3e2X3l2f3i1n1Y19/Screen%20Shot%202013-09-10%20at%2011.32.00.png" alt="A photo of a cat" title="A kitty" style="border: 3px dashed red;padding-right: 50px;">'
end
