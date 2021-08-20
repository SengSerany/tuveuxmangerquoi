class List < ApplicationRecord
  belongs_to :user

  validates :name,
    presence: {message: ": ta liste doit avoir un nom.. 😞"},
    uniqueness: { case_sensitive: false, scope: :user_id ,message: ": tu as déja une liste du même nom ! 😲 "}
end
