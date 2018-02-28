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
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  def sell_pets
    @pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
    end
    @pets.clear
  end
  def list_pets
    "I have #{@pets[:fish].count}"
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
