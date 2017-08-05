class MarcasController < ApplicationController
  def index
    @marcas = Marca.all
  end
  
  def new
    @marca = Marca.new
  end
  
  def edit
    @marca = Marca.find(params[:id])
  end
  
  def create
    @marca = Marca.new(marca_params)
    #Si la marca no fue guardada redirecciona al formulario
    if @marca.save
      redirect_to @marca
    else
      render 'new'
    end
  end
  
  def update
    @marca = Marca.find(params[:id]) 
    if @marca.update(marca_params)
      redirect_to @marca
    else
      render 'edit'
    end
  end
  private def marca_params
    params.require(:marca).permit(:nombre)
  end

  def show
    @marca = Marca.find(params[:id])
  end
  
  def destroy
  @marca = Marca.find(params[:id])
  @marca.destroy 
  redirect_to marcas_path
end
end
 
