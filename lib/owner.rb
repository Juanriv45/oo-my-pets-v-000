class Owner
  # code goes here
  @@all = []

  def self.all 
    @@all
  end

  def self.reset_all
    @@all = []

  end
end