require('sinatra')
require('sinatra/reloader')
get('/') do
  erb(:anagram)
end
