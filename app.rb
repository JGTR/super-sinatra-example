require 'sinatra/base'

module SuperSinatra
  class App < Sinatra::Base

    get '/' do
      erb :super_hero
    end

    post '/team' do
      @teamname = params[:team][:name]
      @teammoto = params[:team][:moto]

      @hero1 = params[:team][:hero][0]
      @hero2 = params[:team][:hero][1]

      erb :team
    end

  end
end