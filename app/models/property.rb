class Property < ApplicationRecord
	has_many :images
	has_many :has_services
	has_many :services, through: :has_services
<<<<<<< HEAD

	after_create :set_services

	def services=value
		@services=value 
	end

	def set_services
		@services.each do |serv|
			HasService.create(property_id: self.id, service_id: serv)
=======
	
	def self.search(search)
		if search
			where(["descripcion LIKE ?","%#{search}%"])
		else
			all
>>>>>>> f276bcfacf80a5cad3b0e3a69a0400625ec0fb24
		end
	end
end
