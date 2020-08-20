class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail, presence: true, uniqueness: { scope: :ingredient }
  validates :ingredient, presence: true

  belongs_to :ingredient
  belongs_to :cocktail
end
