class LinkIngredientsDish < ApplicationRecord
  belongs_to :user
  belongs_to :ingredient
  belongs_to :dish

  validates :ingredient,
  presence: {message: ": tu dois choisir ou créer un ingrédient pour l'ajouter à ce plat 😲"},
  uniqueness: { scope: [:user_id, :dish] ,message: ": tu as déja ajouté cet ingrédient dans ce plat ! 😲 "}
end
