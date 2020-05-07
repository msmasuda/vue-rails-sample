class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :user_id
      t.integer :dept_id
      t.integer :role_id
      t.string :name
      t.string :phone_no
      t.string :address
      t.string :birthday
      t.string :favorite
      t.string :hate
      t.string :emergency_contact
      t.string :emergency_contact_no
      t.string :avatar

      t.timestamps
    end
  end
end
