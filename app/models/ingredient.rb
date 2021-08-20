class Ingredient < ApplicationRecord
  belongs_to :user

  validates :name,
    presence: {message: ": ton ingrédient doit avoir un nom.. 😞"},
    uniqueness: { case_sensitive: false, message: ": tu as déja ajouté cet ingrédient ! 😲 "}
end
