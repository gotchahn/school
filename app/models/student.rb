class Student < ActiveRecord::Base
	validates_presence_of :name
	validates_uniqueness_of :email, allow_blank: true
	#validates :name, presence: true

	has_many :trophies
	belongs_to :career

	before_create :check_birthday, :first_trophy
	#before_validation :hack

	scope :magna_cum_lade, ->{where("graduation_index > 90")}

	protected

		def check_birthday
			puts "Llamo a check_birthday"
			if birthday_at.blank?
				self.birthday_at = Date.current
			end
		end

		def first_trophy
			self.trophies.build(description: "Bienvenido a la URails", points: 5)
		end

		def hack
			errors[:name] << "because i want to"
		end
end
