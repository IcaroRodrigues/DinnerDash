class Situation < ApplicationRecord
    has_many :orders

    # VALIDATIONS

    validates :description, presence: true, length: { minumum: 1, maximum: 45 }
end
