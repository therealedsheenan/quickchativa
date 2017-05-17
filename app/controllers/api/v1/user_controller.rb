class Api::V1::UserController < ApplicationController
  # skip_before_action :authenticate_request

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find_by(id: params[:id])
    render json: @user
  end
end