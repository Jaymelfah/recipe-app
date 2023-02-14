class Recipe < ApplicationRecord
  has_many :recipe_foods, dependent: :destroy
  belongs_to :user

  validates :name, presence: true
  validates :cooking_time, presence: true
  validates :preparation_time, presence: true
  validates :description, presence: true

  def total_price
    4 # code for total price will be added later for public recipe index page
  end
end
