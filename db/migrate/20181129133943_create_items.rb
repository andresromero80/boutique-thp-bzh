class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.string :short_description
      t.text :long_description
      t.float :price
      t.string :image_url

      t.timestamps
    end
  end
end
