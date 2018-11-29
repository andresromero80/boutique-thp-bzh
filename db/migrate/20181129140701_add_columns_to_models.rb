class AddColumnsToModels < ActiveRecord::Migration[5.2]
  def change
  	
  	add_column :items, :slug, :string
  	add_column :carts, :slug, :string
  end
end
