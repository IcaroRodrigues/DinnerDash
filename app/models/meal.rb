class Meal < ApplicationRecord
  belongs_to :meal_category
  has_many :order, :through => :order_meal
  #accepts_nested_attributes_for :meal_category

  # VALIDATIONS

  validates :name, :description, :price, :available, :meal_category_id, presence: true

  validates :name, :description, length: { minimum: 1, maximum: 45 }

  validates :name, uniqueness: { case_sensitive: false } 

  validates :price, numericality: { only_float: true }

  validates :meal_category_id, length: { minimum: 1, maximum: 3 }
end
