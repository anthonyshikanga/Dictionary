require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/definition')


get('/') do
  erb(:index)
end

get('/word/new') do
  erb(:word_form)
end

post('/words/:id/definition') do
  word = params.fetch('word')
  definition = params.fetch('definition')
  Word.new(word,definition).save()
  @word_entries = Word.all()
  erb(:submit)
end

get '/words' do
  @word_entries = Word.all()
  erb(:words)
end


get '/words/:id' do
  "Hello World"
end


get '/words/:id/definition' do
  @word_def = Word.find(params.fetch('id').to_i())
  erb(:definition)
end

get '/words/1/new' do
  @word_def = Word.find(params.fetch('id').to_i())
  erb(:definition)
end
