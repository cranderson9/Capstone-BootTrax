class Api::PicturesController < ApplicationController
  def index
    @pictures = Picture.all
    render 'index.json.jb'
  end

  def create
    @hike = Hike.find_by(id: Hike.last.id)
    @picture = Picture.create(
      user_id: current_user.id,
      hike_id: @hike.id,
      picture_file: params[:picture_file],
    )
    render 'show.json.jb'
  end

  def show
    @picture = Picture.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def update
    @picture = Picture.find_by(id: params[:id])
    @picture.update(
      user_id: params[:user_id] || @picture.user_id,
      hike_id: params[:hike_id] || @picture.hike_id,
      picture_file: params[:picture_file] || @picture.picture_file
    )
    render 'show.json.jb'
  end

  def destroy
    @picture = Picture.find_by(id: params[:id])
    @picture.destroy
    render json: {message: "Picture deleted"}
  end
end
