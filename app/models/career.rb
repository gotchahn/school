class Career < ActiveRecord::Base
	validates_presence_of :name, :slug

	def self.orientation_types
		["Ingenieria", "Licenciatura", "Maestria"]
	end
end
