class OrderMeal < ApplicationRecord
  belongs_to :order
  belongs_to :meal

  # VALIDATIONS

  validates :quantity, presence: true, length: { minimum: 1, maximum: 20 } 
  
  validates :order_id, presence: true
  validates :meal_id, presence: true

  before_update :update_order
  after_destroy :update_order
  after_create :update_order
    
  def update_order

    self.order.price = ( self.quantity * self.meal.price  ) + self.order.price

    self.order.save
  
  end 
end
