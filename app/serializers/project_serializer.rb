class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :payment_terms, :hourly_fee, :complete, :client_id, :project_total_hours, :project_total_earned 
  has_many :timesheets
end
