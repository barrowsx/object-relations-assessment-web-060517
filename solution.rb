# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name
  @@all = []


  def initialize(first_name, last_name)
    @reviews = []
    @restaurants = []
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(query_name)
    self.all.select do |customer|
      customer.full_name == query_name
    end[0]
  end

  def self.find_all_by_first_name(query_name)
    var = self.all.select do |customer|
      customer.first_name == query_name
    end
    var
  end

  def add_review(restaurant, content)
    @restaurants << restaurant
    review = Review.new(self, restaurant)
    review.review_content = content
    @reviews << review
    restaurant.reviews << review
    restaurant.customers << self
  end
end

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
