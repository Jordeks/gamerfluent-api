class Api::V1::SessionsController < ApplicationController

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      payload = {user_id: user.id}
      token = encode_token(payload)
      render json: {user: user, jwt: token, success: "Welcome back, #{user.username}"}
    else
      render json: {failure: "Login failed! Username or password invalid."}
    end
  end

  def auto_login
    if session_user
      render json: session_user
    else
      render json: { errors: "No User Logged In"}
    end
  end

  # def get_session_user
  #   if session_user
  #     render json: session_user
  #   else
  #     render json: { errors: "No User Logged In"}
  #   end
  # end
  
end
