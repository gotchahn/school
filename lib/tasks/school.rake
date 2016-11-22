namespace :school do

  desc "Copies a JSON of students into the database"
  task :import_students_json, [:file_name] => :environment do |task, args|
    file = File.read(Rails.root.join(args.file_name).to_path)
    data = JSON.parse(file)
    data.each do |student_data|
      student = Student.new(student_data)
      student.save
    end
  end

end
