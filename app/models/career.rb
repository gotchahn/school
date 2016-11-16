class Career < ActiveRecord::Base
	validates_presence_of :name, :slug
	has_many :students

	default_scope { order(:name) }

	def self.orientation_types
		["Ingenieria", "Licenciatura", "Maestria"]
	end
end
