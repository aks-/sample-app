class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # sign the user in and redirect to user's show page.
      sign_in user
      redirect_back_or user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
      # create an error message and re-render the signin form.
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
