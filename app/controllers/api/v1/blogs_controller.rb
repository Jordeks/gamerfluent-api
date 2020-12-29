class Api::V1::BlogsController < ApplicationController

  def index
    blogs = Blog.all
    render json: blogs, status: 200
  end

end
