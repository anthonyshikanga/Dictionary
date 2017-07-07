require('sinatra')
require('sinatra/reloader')

get('/') do
  erb(:index)
end

get('/word/new') do
 erb(:word_form)
 end
