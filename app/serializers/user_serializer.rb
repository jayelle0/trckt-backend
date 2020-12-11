class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :address, :phone
  has_many :clients
end
