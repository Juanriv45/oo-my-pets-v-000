class Owner
  # code goes here
  attr_accessor :species
  @@all = []
  def initialize(species)
    @species = species
    @@all << self
  end
  def self.all
    @@all
  end
  def self.reset_all
    @@all.clear
  end
  def self.count
    @@all.count
  end
end
