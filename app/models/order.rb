class Order < ApplicationRecord
  belongs_to :user
  has_one :situation
  has_many :meals, :through => :order_meal

  # VALIDATIONS

  validates :price, presence: true, numericality: { only_float: true } 
  
end
