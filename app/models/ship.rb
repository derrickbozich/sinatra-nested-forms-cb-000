class Ship
  attr_accessor :name, :type, :booty

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
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
