class InteresController < ApplicationController
  before_action :authenticate_user!

  def index
    @interes = Intere.all
  end

  def new
    @intere = Intere.new
  end

  def create
    @interes_params = params.require(:intere).permit(:carrete_id, :user_id, :monto)
    @intere = Intere.create(@interes_params)

    if @intere.save
      redirect_to interes_new_path, notice: 'Mostraste tu interes para ir al carrete!'
    else
      redirect_to interes_new_path, notice: 'Error al crear interes'
    end
  end

  def show
    @intere = Intere.find(params[:id])
  end

  def edit
    @intere = Intere.find(params[:id])
  end

  def delete
    @intere = Intere.find(params[:id])
    @intere.destroy
    redirect_to interes_index_path
  end
end
