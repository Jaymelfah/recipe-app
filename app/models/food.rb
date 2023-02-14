class Food < ApplicationRecord
    has_many :recipe_foods
    belongs_to :user

    validate: name, presence: true
    validate: measurement_unit, presence: true
    validate: price, presence: true
    validate: quantity, presence: true
end