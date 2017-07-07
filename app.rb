require('sinatra')
require('sinatra/reloader')

get('/') do
  erb(:index)
end

get('/word/new') do
 erb(:word_form)
 end

get('/words') do
 @words = Word.all()
 erb(:vehicles)
end

post('/word/new') do
  word = Word.save()
  erb(:submit)
end
