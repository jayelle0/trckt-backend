class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :address, :phone
  has_one :user
end
