require('sinatra')
require('sinatra/reloader')
require('./lib/coins')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/coins_output') do
  @quarters = params.fetch('quarters')
  @dimes = params.fetch('dimes')
  @nickels = params.fetch('nickels')
  @coins = params.fetch('coins').coins(@quarters, @dimes, @nickels)
  erb(:coins_output)
end
