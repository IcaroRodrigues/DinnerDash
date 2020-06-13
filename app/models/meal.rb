class Meal < ApplicationRecord
  belongs_to :meal_category
  has_many :order, :through => :order_meal
  #accepts_nested_attributes_for :meal_category
end
