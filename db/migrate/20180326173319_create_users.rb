class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    drop_table :users
    create_table :users do |t|
      t.references :customer, foreign_key: true
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
