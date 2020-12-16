class AdminController < ApplicationController
  before_action :check_admin
  def index; end

  protected

  def check_admin
    authenticate_user!
    redirect_to root_path, status: :forbidden unless current_user.admin?
  end
end
