class CreateOrdersItems < ActiveRecord::Migration[5.2]
  def change
    create_table :orders_items do |t|
      t.belongs_to :order, index: true
      t.belongs_to :item, index: true
    end
  end
end