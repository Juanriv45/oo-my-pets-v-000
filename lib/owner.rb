class Owner
  # code goes here
  attr_reader :species
  @@all = []
  def initialize(species)
    @species = species
    @@all << self
  end
  def self.say_species
    puts "I am #{@species}."
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
