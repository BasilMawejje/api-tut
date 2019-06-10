class Api::V1::AlbumsController < ApplicationController
  def index
    albums = Album.all
    # render json: albums
    json_response(albums, status)
  end

  def show
    album = Album.find(params[:id])
    # render json: album
    json_response(album, status)
  end
end
