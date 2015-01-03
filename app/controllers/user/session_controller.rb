class User::SessionController < ApplicationController
  skip_before_action :authenticate, except: :show

  # GET /
  def show
  end

  # GET /user/sign_in
  def new
  end

  # POST /user/sign_in
  def create
    user = User.sign_in(user_params)
    if user.present?
      session[:user_id] = user.id
      if session[:user_redirect_url].present?
        redirect_to session[:user_redirect_url]
        session.delete :user_redirect_url
      else
        redirect_to root_path, notice: 'Signed in successfully.'
      end
    else
      flash[:warning] = 'Invalid username or password.'
      render :new
    end
  end

  # DELETE /user/sign_out
  def destroy
    session.delete :user_id
    redirect_to root_path, notice: 'You need to sign in before continuing.'
  end

  private
    def user_params
      params.permit(:username, :password)
    end
  # end private
end
