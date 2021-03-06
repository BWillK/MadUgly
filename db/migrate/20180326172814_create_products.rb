class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :quantity
      t.decimal :price, precision: 20, scale: 2
      t.boolean :active
      t.string :image

      t.timestamps
    end
  end
end
