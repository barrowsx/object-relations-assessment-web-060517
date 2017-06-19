class Review

  attr_accessor :review_content

  @@all = []

  def initialize(customer, restaurant)
    @restaurant = restaurant
    @customer = customer
    @@all << self
  end

  def customer
    @customer
  end

  def restaurant
    @restaurant
  end

  def self.all
    @@all
  end

end
