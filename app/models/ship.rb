class Ship
  attr_accessor :name, :type, :booty

  def initialize(params)
    @name = pirate[:ships][:name]
    @type = pirate[:ships][:type]
    @booty = pirate[:ships][:booty]
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end
