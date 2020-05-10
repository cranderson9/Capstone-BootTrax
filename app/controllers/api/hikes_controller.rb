class Api::HikesController < ApplicationController
  def index


    @hikes = Hike.all
    p "*************************************"
    p current_user
    p "*************************************"
    if current_user
      @hikes = current_user.hikes
      render 'index.json.jb'
    else
      render json: {}, status: :unauthorized
    end
  end

  def create
   
  
    @hike = Hike.create(
      user_id: current_user.id,
      miles: params[:miles],
      notes: params[:notes]
    )

    current_user.update(total_miles: current_user.total_miles + @hike.miles)
   
    render 'show.json.jb'
  end

  def show
    p "*************************************"
    p current_user
    p "*************************************"
    if current_user
      @hike = Hike.find_by(id: params[:id])
      render 'show.json.jb'
    else
      render json: {}, status: :unauthorized
    end
  end

  def update
    @hike = Hike.find_by(id: params[:id])
    @hike.update(
      user_id: params[:user_id] || @hike.user_id,
      miles: params[:miles] || @hike.miles,
      notes: params[:notes] || @hike.notes
    )
    @hike.save
    render 'show.json.jb'
  end

  def destroy
    @hike = Hike.find_by(id: params[:id])
    @hike.destroy
    render json: {message: "Hike deleted"}
  end
end
