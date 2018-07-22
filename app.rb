require './environment'
require_relative 'app/models/pirate'
require_relative 'app/models/ship'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      # @ship1 = Ship.new(pirate[ships][][:name],pirate[ships][][:type],pirate[ships][][:booty])
      # @ship2 = Ship.new(pirate[ships][][:name],pirate[ships][][:type],pirate[ships][][:booty])
      binding.pry
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all

      erb :'pirates/show'
    end

  end
end
