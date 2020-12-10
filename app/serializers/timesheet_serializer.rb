class TimesheetSerializer < ActiveModel::Serializer
  attributes :id, :date, :hours, :note
  has_one :project
end
