class HorseApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)
  set :method_override, true
  get '/horses' do
    @horses = Horse.all
    erb :"horses/index"
  end

  get '/horses/new' do
    erb :"horses/new"
  end

  post '/horses' do
    horse = Horse.new(params[:horse])
    horse.save
    redirect '/horses'
  end

  get '/horses/:id' do
    @horse = Horse.find(params[:id])
    erb :"horses/show"
  end

  get '/horses/:id/edit' do
    @horse = Horse.find(params[:id])
    erb :"horses/edit"
  end

  put '/horses/:id' do
    @horse = Horse.update(id.to_i, params[:horse])
    redirect '/horses/<%= horse.id %>'
  end

  delete '/horses/:id' do |id|
    Horse.destroy(id.to_i)
    redirect '/horses'
  end

  get '/breeds' do
    @breeds = Breed.all
    erb :"breeds/index"
  end

  get '/jockeys' do
    @jockeys = Jockey.all
    erb :"jockeys/index"
  end

  get '/jockeys/new' do
    erb :"jockeys/new"
  end

  post '/jockeys' do
    jockey = Jockey.new(params[:jockey])
    jockey.save
    redirect '/jockeys'
  end

  get '/jockeys/:id' do
    @jockey = Jockey.find(params[:id])
    erb :"jockeys/show"
  end

  get '/jockeys/:id/edit' do
    @jockey = Jockey.find(params[:id])
    erb :"jockeys/edit"
  end

  put '/jockeys/:id' do |id|
    @jockey = Jockey.update(id.to_i, params[:jockey])
    redirect "/jockeys"
  end

  delete '/jockeys/:id' do |id|
    Jockey.destroy(id.to_i)
    redirect '/jockeys'
  end
end
