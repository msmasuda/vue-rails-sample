class CreateDepts < ActiveRecord::Migration[6.0]
  def change
    create_table :depts do |t|
      t.integer :dept_id
      t.string :dept_name

      t.timestamps
    end
  end
end
