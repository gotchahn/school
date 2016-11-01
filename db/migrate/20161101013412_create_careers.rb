class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
      t.string :slug
      t.text :name
      t.text :orientation

      t.timestamps
    end
  end
end
