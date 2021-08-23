class UsersController < ApplicationController
  skip_before_action :authorized
  def create
    @user = User.new(user_params)

    if @user.save
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, token: token }
    else
      render json: { error: @user.errors }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:name, :password)
  end
end
