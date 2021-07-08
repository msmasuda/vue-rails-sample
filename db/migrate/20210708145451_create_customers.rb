class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name, :null => false
      t.string :phone
      t.string :email
      t.string :address
      t.integer :prefecture
      t.string :post_code
      t.integer :gender
      t.date :birthday
      t.text :memo

      t.timestamps
    end
  end
end
