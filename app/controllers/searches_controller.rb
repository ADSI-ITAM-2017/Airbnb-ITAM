class SearchesController < ApplicationController
  
  def new
    @search = Search.new
    @tipos = Property.uniq.pluck(:tipo)
  end
  
  def create
    @search = Search.create(search_params)
    redirect_to @search
  end
  
  def show
    @search = Search.find(params[:id])
  end
  
  private
  
  def search_params
    params.require(:search).permit(:keywords, :direccion, :descripcion, :maxPrice, :tipo, :servicios)
  end
  
  
end
