class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render "index.json.jb"
  end

  
  def create
    @user =User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password_digest: params[:password_digest],
      total_miles: params[:total_miles]
    )
    @user.save
    render 'show.json.jb'
  end
  
  def show
    @user = User.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(
      first_name: params[:first_name] || @user.first_name,
      last_name: params[:last_name] || @user.last_name,
      email: params[:email] || @user.email,
      total_miles: params[:total_miles] || @user.total_miles
    )
    @user.save
    render "show.json.jb"
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: {message: "user has been deleted"}
  end
end
