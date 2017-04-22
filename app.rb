require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/anagram')

get('/') do
  erb(:anagram)
end

get('/result') do
  @input1 = params.fetch('input1')
  @input2 = params.fetch('input2')
  @result = @input1.anagram(@input2)
  erb(:results)
end
