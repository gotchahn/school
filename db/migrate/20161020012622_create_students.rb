class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.text :name
      t.datetime :birthday_at
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
