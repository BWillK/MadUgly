class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :full_name
      t.string :address
      t.string :email
      t.references :user, foreign_key: true
      t.references :cate

      t.timestamps
    end
  end
end
