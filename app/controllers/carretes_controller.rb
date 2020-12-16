class CarretesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @carretes = Carrete.all
  end

  def buscar
    @carretes = Carrete.all
  end

  def mostrar
    @carretes = Carrete.all
  end

  def interesados
    @carretes = Carrete.all
  end

  def new
    @carrete = Carrete.new
  end

  def create
    @carretes_params = params.require(:carrete).permit(:nombre, :direccion, :max_asistentes, :user_id, :monto_minimo)
    @carrete = Carrete.create(@carretes_params)

    if @carrete.save
      redirect_to carretes_new_path, notice: 'Creaste tu carrete!'
    else
      redirect_to carretes_new_path, notice: 'Error al crear carrete'
    end
  end

  def show
    @carrete = Carrete.find(params[:id])
  end

  def edit
    @carrete = Carrete.find(params[:id])
  end

  def update
    @carrete = Carrete.find(params[:id])
    @carretes_params = params.require(:carrete).permit(:nombre, :direccion, :max_asistentes, :user_id)

    if @carrete.update(@carretes_params)
      redirect_to carrete_path(@carrete.id), notice: 'Carrete editado exitosamente'
    else
      redirect_to carrete_edit_path(@carrete.id), notice: 'Error al editar carrete'
    end
  end

  def delete
    @carrete = Carrete.find(params[:id])
    @carrete.destroy
    redirect_to carretes_index_path
  end
end
