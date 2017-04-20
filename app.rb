require('rspec')
require('./lib/combo')
require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:form)
end

get('/output') do
  # code
end
