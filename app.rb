require './environment'
# require_relative './app/models/pirate'
# require_relative './app/models/ship'

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
      @pirate = Pirate.new(pirate[:name], pirate[:weight], pirate[:height])
      # @ship1 = Ship.new(pirate[ships][][:name],pirate[ships][][:type],pirate[ships][][:booty])
      # @ship2 = Ship.new(pirate[ships][][:name],pirate[ships][][:type],pirate[ships][][:booty])

      pirate[:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all
      binding.pry

      erb :'pirates/show'
    end

  end
end
