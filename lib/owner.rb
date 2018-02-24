
class Owner
  # code goes here
  attr_accessor :name, :pets

  @@all = []
  @@hash = {:fishes => [], :dogs => [], :cats => []}
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all = []
  end

  def species
    self.class.new("human").name
  end

  def say_species
    "I am a #{self.name}."
  end

  def pets
    @@hash
  end

  def buy_fish(name)
     @@hash[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @@hash[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @@hash[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each {|i| i.mood = "happy"}
  end

  def play_with_cats
   self.pets[:cats].each {|e| e.mood = "happy" }
 end

 def feed_fish
   self.pets[:fishes].each {|e| e.mood = "happy" }
 end

 def sell_pets
   self.pets.each {|k, v| v.each { |pet| pet.mood = "nervous" } }
   self.pets.each {|k, v| v.clear }
 end

 def list_pets
   "I have #{@@hash[:fishes].size} fish, #{@@hash[:dogs].size} dog(s), and #{@@hash[:cats].size} cat(s)."
 end


end
