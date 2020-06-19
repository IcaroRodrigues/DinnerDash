class Order < ApplicationRecord
  belongs_to :user
  has_one :situation
  has_many :meals, :through => :order_meal
  after_initialize :set_default
  before_update :set_price

  # VALIDATIONS

  validates :price, presence: true, numericality: { only_float: true } 

  def set_default 
    if self.price == numericality
      self.price = 0
    end
  end
  
  def set_price
    @price = 0
    self.OrderMeal.each do | order_meal |
      @price = (OrderMeal.quality * OrderMeal.meal.price ) + @price
    end
    sel.price = @price
  
  end  
  
end
