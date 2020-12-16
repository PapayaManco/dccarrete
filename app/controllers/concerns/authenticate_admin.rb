def authenticate_admin!
  authenticate_user!
  redirect_to :admin, status: :forbidden unless current_user.admin?
end
