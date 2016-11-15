class Career < ActiveRecord::Base
	validates_presence_of :name, :slug
	has_many :students

	def self.orientation_types
		["Ingenieria", "Licenciatura", "Maestria"]
	end
end
