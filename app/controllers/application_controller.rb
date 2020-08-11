class ApplicationController < ActionController::Base
  include SessionsHelper

  before_action :require_login

  private

  def require_login
    unless user_present?
      flash[:warning] = 'Please log in to continue.'
      redirect_to login_path
    end
  end
end
