class CreateCartsItems < ActiveRecord::Migration[5.2]
  def change
    create_table :carts_items do |t|
      t.belongs_to :cart, index: true
      t.belongs_to :item, index: true
    end
  end
end
