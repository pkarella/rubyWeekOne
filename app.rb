require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:anagram)
end
get('/result')do
player1 = params.fetch('one')
player2 = params.fetch('two')

if self.anagram(two)=='true'
  @winner = 'its an anagram and this is also a palindrome'
end
erb(:results)
end
