class Owner
  # code goes here
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end
end
