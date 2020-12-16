class ServiciosController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @servicios = Servicio.all
  end

  def buscar
    @carretes = Carrete.all
  end

  def new
    @servicio = Servicio.new
  end

  def create
    @servicios_params = params.require(:servicio).permit(:nombre, :descripcion, :categoria, :user_id)
    @servicio = Servicio.create(@servicios_params)

    if @servicio.save
      redirect_to servicios_new_path, notice: 'Creaste tu servicio!'
    else
      redirect_to servicios_new_path, notice: 'Error al crear servicio.'
    end
  end

  def show
    @servicio = Servicio.find(params[:id])
  end

  def mostrar
    @servicios = Servicio.all
  end

  def edit
    @servicio = Servicio.find(params[:id])
  end

  def update
    @servicio = Servicio.find(params[:id])
    @servicios_params = params.require(:servicio).permit(:nombre, :descripcion, :categoria, :user_id)

    if @servicio.update(@servicios_params)
      redirect_to servicio_path(@servicio.id), notice: 'Servicio editado exitosamente.'
    else
      redirect_to servicio_edit_path(@servicio.id), notice: 'Error al editar servicio.'
    end
  end

  def delete
    @servicio = Servicio.find(params[:id])
    @servicio.destroy
    redirect_to servicios_index_path
  end
end
