class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @customers = []
    @reviews = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(restaurant_name)
    self.all.find do |restaurant|
      restaurant.name == restaurant_name
    end
  end

  def reviews
    @reviews
  end

  def customers
    @customers
  end

end
