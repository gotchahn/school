class AddGraduationIndexToStudent < ActiveRecord::Migration
  def change
    add_column :students, :graduation_index, :decimal
  end
end
