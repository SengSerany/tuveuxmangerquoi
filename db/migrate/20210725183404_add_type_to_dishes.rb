class AddTypeToDishes < ActiveRecord::Migration[6.0]
  def change
    add_reference :dishes, :type, null: false, foreign_key: true
  end
end
