class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end
  def say_species
     "I am a #{@species}."
  end
  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end
  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end
  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
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
