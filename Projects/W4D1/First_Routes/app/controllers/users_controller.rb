class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    user = User.new(user_params)

    if user.save!
        render json: user
    else
        render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    to_update = User.find(params[:id])
    to_update.update(user_params)

    render json: to_update
  end

  def destroy
    to_destroy = User.find(params[:id])
    to_destroy.destroy
  end

  private

    def user_params
      params.require(:user).permit(:name, :email)
    end
end
