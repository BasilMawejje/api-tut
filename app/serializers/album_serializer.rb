class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :title, :purchases

  def purchases
    object.purchases.map do |ing|
      PurchaseSerializer.new(ing).as_json
    end
  end
end
