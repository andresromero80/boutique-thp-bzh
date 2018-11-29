class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :firstname
      t.string :lastname
      t.string :address
      t.string :city
      t.string :country
      t.string :postal_code
      t.string :number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
