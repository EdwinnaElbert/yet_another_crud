class UsersController < ApplicationController
  helper_method :has_rights?
  def index
    redirect_to posts_path unless has_rights?
    @users = User.all
  end

end
