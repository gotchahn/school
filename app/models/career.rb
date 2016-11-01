class Career < ActiveRecord::Base
	validates_presence_of :name, :slug
end
