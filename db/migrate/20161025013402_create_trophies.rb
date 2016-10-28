class CreateTrophies < ActiveRecord::Migration
  def change
    create_table :trophies do |t|
      t.integer :points
      t.text :description
      t.references :student, index: true

      t.timestamps
    end
  end
end
