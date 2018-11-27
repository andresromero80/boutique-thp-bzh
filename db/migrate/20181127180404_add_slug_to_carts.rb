class AddSlugToCarts < ActiveRecord::Migration[5.2]
  def change
    add_column :carts, :slug, :string
  end
end
