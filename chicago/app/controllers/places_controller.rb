class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by(id: params[:id])

    if @place == nil
        redirect_to root_url, notice: "Place not found"
        return
    end

    @reviews = Review.where(place_id: @place.id).order('id desc').limit(100)
  end

  def new
  end

  def create
    Place.create title: params[:title],
                 price: (params[:price].to_f * 100).to_i,
                 photo_url: params[:url],
                 desc: params[:desc]

    redirect_to root_path
  end

  def edit
    @place = Place.find(params[:id])
  end

  def update
    @place = Place.find(params[:id])
    @place.update title: params[:title],
                 price: (params[:price].to_f * 100).to_i,
                 photo_url: params[:url],
                 desc: params[:desc]

    redirect_to places_show_url(@place.id)
  end

  def destroy
    Place.delete(params[:id])
    redirect_to root_path
  end


end
