class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper :all
  helper_method :current_user
  def has_rights?
    current_user.present? && current_user.admin?
  end
end
