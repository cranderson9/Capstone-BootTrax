class Api::HikesController < ApplicationController
  def index
    if current_user
      @hikes = current_user.hikes
      render 'index.json.jb'
    else
      render json: {}, status: :unauthorized
    end
  end

  def create
    @hike = Hike.new(
      user_id: params[:user_id],
      start_location: params[:start_location],
      end_location: params[:end_location],
      status: params[:status],
      miles: params[:miles],
      notes: params[:notes]
    )
    @hike.save
    render 'show.json.jb'
  end

  def show
    @hike = Hike.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def update
    @hike = Hike.find_by(id: params[:id])
    @hike.update(
      user_id: params[:user_id] || @hike.user_id,
      start_location: params[:start_location] || @hike.start_location,
      end_location: params[:end_location] || @hike.end_location,
      status: params[:status] || @hike.status,
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
