class PropertiesController < ApplicationController
	 
	 #GET /properties
	 def index
  	@properties = Property.search(params[:search])
  end

  #GET /properties/:id
  def show
  	@property = Property.find(params[:id])
  end

  #GET /articles/new
  def new
  	@property = Property.new
  end
#POST/properties
  def create 
  	@property =Property.new (property_params)
    @property.services = params[:services]
  	@property.save
  	redirect_to @property
  end
	 
<<<<<<< HEAD
   def property_params
    params.require(:property).permit(:descripcion,:direccion,:precio,:tipo,:services)
   end
end
=======
end
>>>>>>> f276bcfacf80a5cad3b0e3a69a0400625ec0fb24
