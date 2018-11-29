class CreateJoinTableOrdersItems < ActiveRecord::Migration[5.2]
  def change
    create_join_table :orders, :items do |t|
      # t.index [:order_id, :item_id]
      # t.index [:item_id, :order_id]
      t.belongs_to :order, index: true
      t.belongs_to :item, index: true
    end
  end
end
