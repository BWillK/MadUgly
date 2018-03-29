class DropCategoriesProductsTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :categories_products
  end
end
