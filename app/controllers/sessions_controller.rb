class SessionsController < ApplicationController
    def create
        @user = User.find_by(name: params[:name])
    
        if @user&.authenticate(params[:password])
          token = encode_token({ user_id: @user.id })
          render json: { user: @user, token: token }
        else
          render json: { error: 'Invalid username or password' }, status: :unprocessable_entity
        end
      end
end