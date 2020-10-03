class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates_associated :ingredient, :cocktail
  validates :ingredient_id, uniqueness: { scope: :cocktail_id}
end
