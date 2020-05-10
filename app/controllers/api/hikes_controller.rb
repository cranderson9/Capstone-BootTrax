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
    p "*************************************"
    p current_user
    p "*************************************"
  
    @hike = Hike.new(
      user_id: current_user.id,
      miles: params[:miles],
      notes: params[:notes]
    )

    @hike.save
    current_user.update(total_miles: current_user.total_miles + @hike.miles)
    p "*******************************"
    p current_user.total_miles
    p "*******************************"
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
      start_location: params[:start_location] || @hike.start_location,
      end_location: params[:end_location] || @hike.end_location,
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
