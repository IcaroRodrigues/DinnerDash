# frozen_string_literal: true

class User < ActiveRecord::Base
  
  validates :name, :email, :password, presence: true

  validates :name, :email, length: { minimum: 1, maximum: 45 }

  validates :name, uniqueness: { case_sensitive: false } 

end
