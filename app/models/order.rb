class Order < ApplicationRecord
  belongs_to :user
  has_one :situation
  has_many :meals, :through => :order_meal
end
