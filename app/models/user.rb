class User < ActiveRecord::Base

  has_secure_password
  
  validates :name, :email, :password, presence: true

  validates :name, :email, length: { minimum: 1, maximum: 45 }, uniqueness: { case_sensitive: false }

  validates :name, uniqueness: { case_sensitive: false } 

  validates :password, length: { minimum: 6 }, if: -> { new_record? || !password.nil? }

end
