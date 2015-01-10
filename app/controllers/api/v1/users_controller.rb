class Api::V1::UsersController < Api::ApplicationController
  before_action :set_user, only: [:show]

  # GET /v1/users.json
  def index
    @users = User.all
  end

  # GET /v1/users/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
  # end private
end
