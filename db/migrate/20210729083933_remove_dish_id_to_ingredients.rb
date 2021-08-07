class RemoveDishIdToIngredients < ActiveRecord::Migration[6.0]
  def change
    remove_column :ingredients, :dish_id, :belongs_to
  end
end
