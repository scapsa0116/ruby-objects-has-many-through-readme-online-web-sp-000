class Waiter
attr_accessor :name, :experience
@@all = []
def initialize(name, experience)
  @name = name 
  @experience = experience 
  @@all << self 
end 

def self.all 
  @@all 
end 

def new_meal(customer, total, tip)
  Meal.new (customer, self, total, tip = 0)
end 
end