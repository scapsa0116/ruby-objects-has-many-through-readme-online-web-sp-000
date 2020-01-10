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

def new_meal(customer, total, tip = 0)
  Meal.new(customer, self, total, tip)
end 

def meals
  Meal.all.select do |meal|
    meal.waiter == self #checking for waiter now
  end
end
end