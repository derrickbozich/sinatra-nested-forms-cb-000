class Pirate
  attr_accessor :name, :weight, :height

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end
end
