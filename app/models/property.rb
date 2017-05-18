class Property < ApplicationRecord
	has_many :images
	has_many :has_services
	has_many :services, through: :has_services
	
	def self.search(search)
		if search
			where(["descripcion LIKE ?","%#{search}%"])
		else
			all
		end
	end
end
