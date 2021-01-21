class Api::V1::BlogsController < ApplicationController

  def index
    blogs = Blog.all
    render json: blogs, status: 200
  end

  def session_user_blogs
    if session_user
      blogs = session_user.blogs
      render json: blogs, status: 200
    else
      render json: { errors: "No User Logged"}
    end
  end

end
