class LinkIngredientsDish < ApplicationRecord
  belongs_to :user
  belongs_to :ingredient
  belongs_to :dish

  validates :ingredient,
  uniqueness: { message: ": tu as déja ajouté cet ingrédient dans ce plat ! 😲 "}
end
