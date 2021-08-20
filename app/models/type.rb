class Type < ApplicationRecord
  belongs_to :user

  validates :name,
  presence: {message: ": ton type de plat doit avoir un nom.. 😞"},
  uniqueness: { case_sensitive: false, scope: :user_id, message: ": tu as déja un type de plat du même nom ! 😲 "}
end
