class RemoveColumnFromCustomers < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :address_street, :string
    remove_column :customers, :address_province, :string
    remove_column :customers, :address_country, :string
    remove_column :customers, :address_postal_code, :string
    remove_column :customers, :full_name

    add_column :customers, :address_shipping_street, :string
    add_column :customers, :address_shipping_city, :string
    add_column :customers, :address_shipping_postal_code, :string
    add_column :customers, :address_shipping_province, :string
    add_column :customers, :address_shipping_country, :string
    add_column :customers, :address_billing_street, :string
    add_column :customers, :address_billing_city, :string
    add_column :customers, :address_billing_postal_code, :string
    add_column :customers, :address_billing_province, :string
    add_column :customers, :address_billing_country, :string

  end
end
