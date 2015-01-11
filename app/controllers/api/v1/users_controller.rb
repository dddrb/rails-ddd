class Api::V1::UsersController < Api::ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /v1/users.json
  def index
    @users = User.all
  end

  # GET /v1/users/1.json
  def show
  end

  # POST /users.json
  def create
    @user = User.new(user_params.merge(password: params[:password]))

    if @user.save
      render :show, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1.json
  def update
    if @user.update(user_params.merge(password: params[:password]))
      render :show, status: :ok, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1.json
  def destroy
    @user.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:state, :name, :description, :email, :username, roles: [])
    end
  # end private
end
