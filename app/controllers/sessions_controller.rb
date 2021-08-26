class SessionsController < ApplicationController
  skip_before_action :authorized

  def create
    @user = User.find_by(name: params[:name])

    if @users&.authenticate(params[:password])
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, token: token }
    else
      render json: { error: 'Invalid username or password' }, status: :unauthorized
    end
  end
end
