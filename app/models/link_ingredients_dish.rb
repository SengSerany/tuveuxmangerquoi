class LinkIngredientsDish < ApplicationRecord
  belongs_to :user
  belongs_to :ingredient
  belongs_to :dish
end
