class ProductosController < ApplicationController
  def index
    @productos = Producto.all
  end
  
  def new
    @producto = Producto.new
  end
  
  def edit
    @producto = Producto.find(params[:id])
  end
  
  def create
    @producto = Producto.new(producto_params)
    #Si el producto no fue guardado redirecciona al formulario
    if @producto.save
      redirect_to @producto
    else
      render 'new'
    end
  end
  
  def update
    @producto = Producto.find(params[:id]) 
    if @producto.update(producto_params)
      redirect_to @producto
    else
      render 'edit'
    end
  end
  private def producto_params
    params.require(:producto).permit(:nombre, :marca, :descripcion, :precio)
  end

  def show
    @producto = Producto.find(params[:id])
  end
  
  def destroy
  @producto = Producto.find(params[:id])
  @producto.destroy 
  redirect_to productos_path
end
end
