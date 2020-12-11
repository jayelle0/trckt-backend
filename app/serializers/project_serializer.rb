class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :payment_terms, :hourly_fee, :complete
  has_many :timesheets
end
