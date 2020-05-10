class Api::PicturesController < ApplicationController
  def index
    @pictures = Picture.all
    render 'index.json.jb'
  end

  def create
    @picture = Picture.new(
      user_id: params[:user_id],
      hike_id: params[:hike_id],
      picture_file: params[:picture_file],
      comments: params[:comments],
      # geo_location: params[:geo_location]
    )
    @picture.save
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
      picture_file: params[:picture_file] || @picture.picture_file,
      comments: params[:comments] || @picture.comments,
      # geo_location: params[:geo_location] || @picture.geo_location
    )
    render 'show.json.jb'
  end

  def destroy
    @picture = Picture.find_by(id: params[:id])
    @picture.destroy
    render json: {message: "Picture deleted"}
  end
end
