class AddColumnToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :stripe_id, :string
  end
end
