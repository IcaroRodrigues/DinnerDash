class MealCategory < ApplicationRecord
    has_many :meals

    # VALIDATIONS

    validates :name, presence: true, length: { minimum: 1, maximum: 45 }, uniqueness: { case_sensitive: false }

end
