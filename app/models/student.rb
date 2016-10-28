class Student < ActiveRecord::Base
	validates_presence_of :name
	validates_uniqueness_of :email, allow_blank: true
	#validates :name, presence: true

	has_many :trophies
end
