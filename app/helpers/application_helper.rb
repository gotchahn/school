module ApplicationHelper

	#Ejemplo: Lunes 10 Agosto, 2016
	def nice_date(fecha)
		return nil unless fecha
		fecha.strftime("%A %e %B, %Y")
	end
end
