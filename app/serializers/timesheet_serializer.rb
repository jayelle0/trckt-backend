class TimesheetSerializer < ActiveModel::Serializer
  attributes :id, :date, :hours, :note
end
