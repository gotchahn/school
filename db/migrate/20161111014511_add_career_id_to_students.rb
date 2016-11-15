class AddCareerIdToStudents < ActiveRecord::Migration
  def change
    add_reference :students, :career, index: true
  end
end
