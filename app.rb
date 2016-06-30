require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagram_output') do
  @string = params.fetch('string')
  @first_str = params.fetch('first_str')
  @anagram = @first_str.anagram?(@string)
  erb(:anagram_output)
end
