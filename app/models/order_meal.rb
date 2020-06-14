class OrderMeal < ApplicationRecord
  belongs_to :order
  belongs_to :meal

  # VALIDATIONS

  validates :quantity, presence: true, length: { minimum: 1, maximum: 20 }
  
end
