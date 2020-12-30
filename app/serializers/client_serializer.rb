class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :address, :phone, :client_completed_earned, :client_incomplete_earned
  has_many :projects
end
