class RemoveFieldsFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :email, :text
    remove_column :students, :phone, :text
  end
end
