class CreateOrderedProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :ordered_products do |t|
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true
      t.integer :quantity
      t.decimal :price, precision: 20, scale: 2

      t.timestamps
    end
  end
end
