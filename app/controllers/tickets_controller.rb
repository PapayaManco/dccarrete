class TicketsController < ApplicationController
  before_action :authenticate_user!

  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def mostrar
    @ticket = Ticket.all
  end

  def create
    @tickets_params = params.require(:ticket).permit(:carrete_id, :user_id, :monto)
    @ticket = Ticket.create(@tickets_params)

    if @ticket.save
      redirect_to tickets_new_path, notice: 'Ticket creado!'
    else
      redirect_to tickets_new_path, notice: 'Error al crear ticket'
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def delete
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    redirect_to tickets_index_path
  end
end
