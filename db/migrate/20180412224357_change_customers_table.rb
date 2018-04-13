class ChangeCustomersTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :address
    add_column :customers, :address_street, :string
    add_column :customers, :address_province, :string
    add_column :customers, :address_country, :string
    add_column :customers, :address_postal_code, :string
  end
end
