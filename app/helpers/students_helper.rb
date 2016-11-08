module StudentsHelper
	def index_description
		"Listado de Estudiantes Registrados en el sistema"
	end

	def index_title
		content_tag(:h1, "Estudiantes del Sistema")
	end

	def total_points(student)
		student.trophies.sum(:points)
	end
end
