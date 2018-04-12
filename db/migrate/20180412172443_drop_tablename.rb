class DropTablename < ActiveRecord::Migration[5.1]
  def up
    drop_table :orders
  end

  def down
    create_table :orders do |t|
      t.references :customer, foreign_key: true
      t.decimal :total, precision: 20, scale: 2
      t.decimal :taxes, precision: 20, scale: 2

      t.timestamps
    end
  end

end
