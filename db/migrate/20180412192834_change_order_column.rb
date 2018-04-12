class ChangeOrderColumn < ActiveRecord::Migration[5.1]
  def change
    drop_table :order_items
    drop_table :orders
    drop_table :order_statuses

  end
end
