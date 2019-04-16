class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :purchases

  def purchases
    object.purchases.map do |ing|
      PurchaseSerializer.new(ing).as_json
    end
  end
end
