class Dose < ApplicationRecord
  belongs_to :cocktail #, class_name: "Cocktail", foreign_key: "cocktail_id"
  belongs_to :ingredient #, class_name: "Ingredient", foreign_key: "ingredient_id"
end
