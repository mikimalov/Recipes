class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to user
    else
      flash['danger'] = 'Invalid combination of email or password!'
      redirect_to new_user_path
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
