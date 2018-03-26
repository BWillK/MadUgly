class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    drop_table :customers
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :full_name
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
