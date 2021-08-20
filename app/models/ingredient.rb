class Ingredient < ApplicationRecord
  belongs_to :user

  validates :name,
    presence: {message: ": ton ingrédient doit avoir un nom.. 😞"},
    uniqueness: { case_sensitive: false, scope: :user_id, message: ": tu as déja ajouté cet ingrédient ! 😲 "}
end
