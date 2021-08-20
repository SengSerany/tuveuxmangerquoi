class LinkListsDish < ApplicationRecord
  belongs_to :user
  belongs_to :list
  belongs_to :dish

  validates :dish,
  presence: {message: ": tu dois choisir un plat pour l'ajouter à ce liste 😲"},
  uniqueness: { scope: [:user_id, :list], message: ": tu as déja ajouté ce plat dans ta liste ! 😲 "}
end
