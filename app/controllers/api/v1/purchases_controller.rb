class Api::V1::PurchasesController < ApplicationController
  def create
    user = User.find_by_id(1)
    album = Album.find_by_id(1)
    purchase = user.purchases.new(album: album, user: user)

    if purchase.save
      render json: purchase, status: :created
    else
      render json: purchase.errors, status: :unprocessable_entity
    end
  end
end
