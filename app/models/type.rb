class Type < ApplicationRecord
  belongs_to :user

  validates :name,
  presence: {message: ": ton type de plat doit avoir un nom.. 😞"},
  uniqueness: { case_sensitive: false, message: ": tu as déja un type de plat du même nom ! 😲 "}
end
