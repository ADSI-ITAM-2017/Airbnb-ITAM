class PropertiesController < ApplicationController
	 
	 #GET /properties
	 def index
  	@properties = Property.all
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
	 
   def property_params
    params.require(:property).permit(:descripcion,:direccion,:precio,:tipo,:services)
   end
end