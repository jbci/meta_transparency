class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if current_admin
      admin_path
    elsif current_user
      user_path
    else
      root_path
    end
  end

end
