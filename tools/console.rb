require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

cust = Customer.new("Joe", "Blow")
cust2 = Customer.new("Joe", "Throe")
cust3 = Customer.new("Not", "Joe")

cust.add_review(Restaurant.new("place"), "xd")
cust2.add_review(Restaurant.all[0], "kek")
Pry.start
