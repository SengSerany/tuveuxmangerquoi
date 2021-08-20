class Dish < ApplicationRecord
  belongs_to :user

  validates :name,
  presence: {message: ": ton plat doit avoir un nom.. 😞"},
  uniqueness: { case_sensitive: false, message: ": tu as déja ajouté ce plat ! 😲 "}
end
