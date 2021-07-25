class DropTablename < ActiveRecord::Migration[6.0]
  def change
    drop_table :link_b_type_a_dishes
  end
end
