require('rspec')
require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/combo')
also_reload('lib/**/*.rb')

get('/') do
  erb(:form)
end

get('/coins') do
  @result = coin_return(params.fetch('amount'))
  erb(:output)
end
