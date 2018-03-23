class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.float :CustomerID
      t.string :First_Name
      t.string :Last_Name
      t.string :Full_Name
      t.string :Address
      t.date :Date_Created
      t.float :AccountID
      t.string :Email

      t.timestamps
    end
  end
end
