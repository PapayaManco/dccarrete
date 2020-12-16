class ReviewsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.all
  end

  def new
    @review = Review.new
  end

  def edit
    if @review.user_id == current_user.id
      render 'edit'
    else
      redirect_to @servicios_buscar
    end
  end

  def create
    @reviews_params = params.require(:review).permit(:servicio_id, :user_id, :rating, :comment)
    @review = Review.create(@reviews_params)
    if @review.save
      redirect_to reviews_new_path, notice: 'Resena creada!'
    else
      redirect_to reviews_new_path, notice: 'Error al crear resena'
    end
  end

  def update
    @review.update(review_params)
  end

  def destroy
    @review.destroy
  end

  private

  def set_review
    @review = Review.find(paramas[:id])
  end

  def set_servicio
    @servicio = servicio.find(params[:servicio_id])
  end

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
