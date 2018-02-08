require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:playernames] = [params[:Player1] , params[:Player2]]
    redirect('/play')
  end

  get '/play' do
    @player1 = session[:playernames][0]
    @player2 = session[:playernames][1]
    erb(:play)
  end

  run! if app_file == $0
end
