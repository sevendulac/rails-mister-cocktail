class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail, uniqueness: {scope: :ingredient}
  validates :ingredient, uniqueness: true
  belongs_to :cocktail
  belongs_to :ingredient
end
